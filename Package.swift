// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MaterialComponent-xcframework",
    platforms: [
        .iOS(.v9), .macOS(.v10_10)
    ],
    products: [ 
        .library(
            name: "MaterialComponent-xcframework",
            targets: ["MaterialComponent-xcframework"]),
    ],
    targets: [
        
		.binaryTarget( 
            name: "MDFTextAccessibility", 
            url: "https://github.com/9folders-inchan/MaterialComponent-xcframework/releases/download//MDFTextAccessibility.xcframework.zip", 
            checksum: "a6129781b58589eb38098775541636c5e5198470992e38e12443d054de96eb4a" 
        ), 
		.binaryTarget( 
            name: "MaterialComponents", 
            url: "https://github.com/9folders-inchan/MaterialComponent-xcframework/releases/download//MaterialComponents.xcframework.zip", 
            checksum: "d8ce306cb32809bb4c816e2d3d17de34258217602408bf59f48d63a0773858ac" 
        ), 
		.binaryTarget( 
            name: "MDFInternationalization", 
            url: "https://github.com/9folders-inchan/MaterialComponent-xcframework/releases/download//MDFInternationalization.xcframework.zip", 
            checksum: "fa54b62aed864f2b8f9838b5cce5b3ca30e995f5b925c93f70b411c5e37d6f29" 
        ), 
        .target(
            name: "MaterialComponent-xcframework",
            dependencies: ["MaterialComponents", "MDFInternationalization", "MDFTextAccessibility"]
        )
    ]
)
