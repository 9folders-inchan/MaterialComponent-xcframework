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
            checksum: "13c35423b1b4d345ba9be966ec2881d110f505a7726672cffa8ca05c39817326" 
        ), 
		.binaryTarget( 
            name: "MaterialComponents", 
            url: "https://github.com/9folders-inchan/MaterialComponent-xcframework/releases/download//MaterialComponents.xcframework.zip", 
            checksum: "fa55c134cfeca5f5ca0c2fcecd03fdb2ddba8940f10f4691816197278f729c15" 
        ), 
		.binaryTarget( 
            name: "MDFInternationalization", 
            url: "https://github.com/9folders-inchan/MaterialComponent-xcframework/releases/download//MDFInternationalization.xcframework.zip", 
            checksum: "f795e825320dec9d96ed71bd4668446e4b5365760a319bc38050b7c7146fecfc" 
        ), 
        .target(
            name: "MaterialComponent-xcframework",
            dependencies: ["MaterialComponents", "MDFInternationalization", "MDFTextAccessibility"]
        )
    ]
)
