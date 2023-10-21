// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Resolver",
    platforms: [
        .macOS(.v10_14), .iOS(.v15)
    ],
    products: [
        .library(
            name: "Resolver",
            targets: ["Resolver"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick", from: "2.2.0"),
        .package(url: "https://github.com/Quick/Nimble", from: "8.0.0"),
    ],
    targets: [
        .target(
            name: "Resolver"
        ),
        .testTarget(
            name: "ResolverTests",
            dependencies: ["Resolver", "Quick", "Nimble"]
        ),
    ]
)
