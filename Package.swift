// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "material-components-ios-spm",
    platforms: [
        .iOS(.v9), .macOS(.v10_10)
    ],
    products: [ 
        .library(
            name: "material-components-ios-spm",
            targets: ["material-components-ios-spm"]),
    ],
    targets: [
        
		.binaryTarget( 
            name: "MDFTextAccessibility",
            url: "https://github.com/9folders-inchan/material-components-ios-spm/releases/download/0.0.3/MDFTextAccessibility.xcframework.zip",
            checksum: "84b01cb62882d78ba7143c7110839fb1be5fea17852055f2f59bb44a814e4c4a" 
        ), 
		.binaryTarget( 
            name: "MaterialComponents",
            url: "https://github.com/9folders-inchan/material-components-ios-spm/releases/download/0.0.3/MaterialComponents.xcframework.zip",
            checksum: "13dd82e8502ecd640ac0f3e6bb12d3d048515a81624deabacb4c6413af43ac15" 
        ), 
		.binaryTarget( 
            name: "MDFInternationalization",
            url: "https://github.com/9folders-inchan/material-components-ios-spm/releases/download/0.0.3/MDFInternationalization.xcframework.zip",
            checksum: "0088a396d36039ac8a456cb649129f71ee1f92599d9a16f15441a662e5b4707b" 
        ), 
        .target(
            name: "material-components-ios-spm",
            dependencies: ["MaterialComponents", "MDFInternationalization", "MDFTextAccessibility"]
        )
    ]
)
