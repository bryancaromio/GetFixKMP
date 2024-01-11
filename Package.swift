// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GetFix KMP",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "KMPCore",
            targets: ["KMPCore"]),
        .library(
            name: "KMPCoreDev",
            targets: ["KMPCoreDev"]),
        .library(
            name: "KMPResources",
            targets: ["KMPResources"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "KMPCore",
            path: "./Sources/KMPCore/KmpShared.xcframework"
         ),
        .binaryTarget(
            name: "KMPCoreDev",
            path: "./Sources/KMPCoreDev/KmpSharedDev.xcframework"
         ),
        .target(
            name: "KMPResources"),
    ]
)
