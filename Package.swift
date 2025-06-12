// swift-tools-version: 6.1
// tag: "1.1.0"

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "TensorFlowLiteC",
            path: "TensorFlowLiteC.xcframework"
        ),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
