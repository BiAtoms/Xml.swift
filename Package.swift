// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "XmlSwift",
    products: [
        .library(
            name: "XmlSwift",
            targets: ["XmlSwift"]),
        ],
    targets: [
        .target(
            name: "XmlSwift",
            path: "Sources"),
        .testTarget(
            name: "XmlSwiftTests",
            dependencies: ["XmlSwift"]),
        ]
)
