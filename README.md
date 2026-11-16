# Jitsi Meet iOS SDK releases

This repository contains the binaries for the **[Jitsi Meet]() iOS SDK**. Each
release is tagged in this repository and is composed of following framework:

- JitsiMeetSDK.xcframework

## Using the SDK

### CocoaPods

The recommended way for using the SDK is by using [CocoaPods](). In order to
do so, add the `JitsiMeetSDK` dependency to your existing `Podfile` or create
a new one following this example:

```
platform :ios, '15.1'

workspace 'JitsiMeetSDKTest.xcworkspace'

target 'JitsiMeetSDKTest' do
  project 'JitsiMeetSDKTest.xcodeproj'

  pod 'JitsiMeetSDK'
end
```

Replace `JitsiMeetSDKTest` with your project and target names.

Bitcode is not supported, so turn it off for your project.

The SDK uses Swift code, so make sure you select `Always Embed Swift Standard Libraries`
in your project.

Since the SDK requests camera and microphone access, make sure to include the
required entries for `NSCameraUsageDescription` and `NSMicrophoneUsageDescription`
in your `Info.plist` file.

In order for app to properly work in the background, select the "audio" and "voip"
background modes.

Last, since the SDK shows and hides the status bar based on the conference state,
you may want to set `UIViewControllerBasedStatusBarAppearance` to `NO` in your
`Info.plist` file.

### Swift Package Manager (SPM)

Choose **only one** product: `JitsiMeetSDK` **or** `JitsiMeetSDKLite`.
**Do not add both products to the same target/app.**

#### **JitsiMeetSDKLite**

Do not use a full release tag such as `13.3.1` for `JitsiMeetSDKLite`. 
At a full tag like `13.3.1`, `lite/Frameworks` still contains the previous Lite build, 
because the Lite release is committed after the full release. 
Always use the matching `-lite` tag instead.

## API

The API is documented [here](https://jitsi.github.io/handbook/docs/dev-guide/dev-guide-ios-sdk).

## Issues

Please report all issues related to this SDK to the [Jitsi Meet]() repository.

[CocoaPods]: https://cocoapods.org
[Jitsi Meet]: https://github.com/jitsi/jitsi-meet

## Release notes
Latest release notes:
https://github.com/jitsi/jitsi-meet-release-notes/blob/master/CHANGELOG-MOBILE-SDKS.md#ios
