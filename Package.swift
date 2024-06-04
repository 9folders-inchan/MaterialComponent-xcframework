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
            checksum: "a1fd0c4240df19e007a20de0ddc1c822efdb7f6fe13263cc3caf82eabd6d1b85" 
        ), 
		.binaryTarget( 
            name: "MaterialComponents", 
            url: "https://github.com/9folders-inchan/MaterialComponent-xcframework/releases/download//MaterialComponents.xcframework.zip", 
            checksum: "e72a70dc41038d06445d66f7c6bb754ecdf91f7bfb6ee6dc8565e39da0aadc3b" 
        ), 
		.binaryTarget( 
            name: "MDFInternationalization", 
            url: "https://github.com/9folders-inchan/MaterialComponent-xcframework/releases/download//MDFInternationalization.xcframework.zip", 
            checksum: "516151d406fe4a05910459f93d9406781822eec580b3159b8df7bd5f014bfe5d" 
        ), 
        .target(
            name: "MaterialComponent-xcframework",
            dependencies: ["MaterialComponents", "MDFInternationalization", "MDFTextAccessibility"]
        )
    ]
)
