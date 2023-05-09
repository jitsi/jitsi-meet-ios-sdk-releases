// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JitsiMeetSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "JitsiMeetSDK",
            targets: ["JitsiMeetSDK"]),
    ],
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "JitsiMeetSDK", path: "Frameworks/JitsiMeetSDK.xcframework"),
    ]
)
