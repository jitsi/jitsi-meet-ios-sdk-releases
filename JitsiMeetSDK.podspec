Pod::Spec.new do |s|
  s.name             = 'JitsiMeetSDK'
  s.version          = '11.3.1'
  s.summary          = 'Jitsi Meet iOS SDK'
  s.description      = 'Jitsi Meet is a WebRTC compatible, free and Open Source video conferencing system that provides browsers and mobile applications with Real Time Communications capabilities.'
  s.homepage         = 'https://github.com/jitsi/jitsi-meet-ios-sdk-releases'
  s.license          = 'Apache 2'
  s.authors          = 'The Jitsi Meet project authors'
  s.source           = { :git => 'https://github.com/jitsi/jitsi-meet-ios-sdk-releases.git', :tag => s.version }
  s.platform         = :ios, '15.1'
  s.swift_version    = '5'
  s.vendored_frameworks = 'Frameworks/JitsiMeetSDK.xcframework', 'Frameworks/hermes.xcframework'
  s.dependency 'Giphy', '2.2.12'
  s.dependency 'JitsiWebRTC', '~> 124.0'
end
