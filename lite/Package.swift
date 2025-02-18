// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "JitsiMeetSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "JitsiMeetSDK",
            targets: ["JitsiMeetSDKWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jitsi/webrtc", from: "124.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "JitsiMeetSDK",
            path: "../lite/Frameworks/JitsiMeetSDK.xcframework"
        ),
        .binaryTarget(
            name: "hermes",
            path: "../lite/Frameworks/hermes.xcframework"
        ),
        .target(
            name: "JitsiMeetSDKWrapper",
            dependencies: [
                .target(name: "JitsiMeetSDK"),
                .target(name: "hermes"),
                .product(name: "WebRTC", package: "webrtc")
            ],
            path: "Sources"
        )
    ]
)
