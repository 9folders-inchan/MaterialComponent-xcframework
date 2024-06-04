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
            url: "https://github.com/9folders-inchan/MaterialComponent-xcframework/releases/download/0.0.1/MDFTextAccessibility.xcframework.zip", 
            checksum: "8f6bd63b9cc9a3428a6d685b2792c530c15718430c5d34b575eec813dcade120" 
        ), 
		.binaryTarget( 
            name: "MaterialComponents", 
            url: "https://github.com/9folders-inchan/MaterialComponent-xcframework/releases/download/0.0.1/MaterialComponents.xcframework.zip", 
            checksum: "c4175beebd8cafd789bc7d842cf3cf09fe2bde3bec8f677a577969e50047cd94" 
        ), 
		.binaryTarget( 
            name: "MDFInternationalization", 
            url: "https://github.com/9folders-inchan/MaterialComponent-xcframework/releases/download/0.0.1/MDFInternationalization.xcframework.zip", 
            checksum: "4a7c4df0f6811f1f784aa9ef2cca4df141f83fb9124309fb47ac7db3582a226c" 
        ), 
        .target(
            name: "MaterialComponent-xcframework",
            dependencies: ["MaterialComponents", "MDFInternationalization", "MDFTextAccessibility"]
        )
    ]
)
