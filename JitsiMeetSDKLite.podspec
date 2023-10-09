Pod::Spec.new do |s|
  s.name             = 'JitsiMeetSDKLite'
  s.version          = '8.5.0-lite'
  s.summary          = 'Jitsi Meet iOS SDK Lite'
  s.description      = 'Jitsi Meet is a WebRTC compatible, free and Open Source video conferencing system that provides browsers and mobile applications with Real Time Communications capabilities. This is the lite SDK.'
  s.homepage         = 'https://github.com/jitsi/jitsi-meet-ios-sdk-releases'
  s.license          = 'Apache 2'
  s.authors          = 'The Jitsi Meet project authors'
  s.source           = { :git => 'https://github.com/jitsi/jitsi-meet-ios-sdk-releases.git', :tag => s.version }
  s.platform         = :ios, '12.0'
  s.swift_version    = '5'
  s.vendored_frameworks = 'lite/Frameworks/JitsiMeetSDK.xcframework'
  s.dependency 'JitsiWebRTC', '~> 111.0'
end
