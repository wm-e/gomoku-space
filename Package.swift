// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "GomokuSpace",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(name: "GomokuSpace", targets: ["GomokuSpace"])
    ],
    targets: [
        .target(
            name: "GomokuSpace",
            path: "GomokuSpace",
            exclude: [
                "Resources/Preview Assets.xcassets",
            ],
            resources: [
                .process("Resources/Assets.xcassets"),
                .process("Resources/Localizable.xcstrings"),
            ]
        ),
        .testTarget(
            name: "GomokuSpaceTests",
            dependencies: ["GomokuSpace"],
            path: "GomokuSpaceTests"
        )
    ]
)
