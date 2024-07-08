// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Jitsi",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Jitsi",
            targets: ["Jitsi"]),
    ],
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "Jitsi",
            path: "Frameworks/JitsiMeetSDK.xcframework"
        )
    ]
)
