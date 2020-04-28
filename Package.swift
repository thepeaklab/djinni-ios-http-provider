// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "djinni-http-provider",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(name: "DjinniHTTPProvider", targets: ["DjinniHTTPProvider"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "DjinniHTTPProvider", dependencies: []),
        .testTarget(name: "DjinniHTTPProviderTests", dependencies: ["DjinniHTTPProvider"]),
    ]
)
