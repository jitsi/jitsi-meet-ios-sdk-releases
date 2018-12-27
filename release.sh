#!/bin/bash

set -e
set -u

if [[ $# -ne 1 ]]; then
    echo "Usage: release.sh VERSION"
    exit 1;
fi

VERSION=$1

# Generate podspec file
cat JitsiMeetSDK.podspec.tpl | sed -e s/VERSION/${VERSION}/g > JitsiMeetSDK.podspec

# Cleanup
rm -rf Frameworks/*

# Build the SDK
pushd ../jitsi-meet
rm -rf ios/sdk/JitsiMeet.framework
xcodebuild -workspace ios/jitsi-meet.xcworkspace -scheme JitsiMeet -destination='generic/platform=iOS' -configuration Release archive
popd

# Put the new files in the repo
cp -r ../jitsi-meet/ios/sdk/JitsiMeet.framework Frameworks/
cp -r ../jitsi-meet/node_modules/react-native-webrtc/ios/WebRTC.framework Frameworks/

# Add all files to git
git add -A
git commit -a -m "${VERSION}"
git tag -a -m "${VERSION}" ${VERSION}

echo "Done!"
echo "You can now push all changes to git by doing: git push && git push --tags"
echo "The new pod can be pushed to CocoaPods by doing: pod trunk push JitsiMeetSDK.podspec"
echo "Don't forget to update the changelog!"

exit 0
