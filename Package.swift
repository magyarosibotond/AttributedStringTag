// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AttributedStringTag",
    products: [
        .library(name: "AttributedStringTag", targets: ["AttributedStringTag"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "AttributedStringTag", dependencies: []),
        .testTarget(name: "AttributedStringTagTests", dependencies: ["AttributedStringTag"]),
    ]
)
