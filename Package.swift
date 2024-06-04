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
            url: "https://github.com/9folders-inchan/material-components-ios-spm/releases/download/0.0.4/MDFTextAccessibility.xcframework.zip",
            checksum: "c44c365fd9a73180b60565b3e883f1195bbef3d0e93d439a702d64dc2ffedf10" 
        ), 
		.binaryTarget( 
            name: "MaterialComponents",
            url: "https://github.com/9folders-inchan/material-components-ios-spm/releases/download/0.0.4/MaterialComponents.xcframework.zip",
            checksum: "acb237e12e35bcf08f4dabadd7d612d9e13c63d0ea12f1930c09b938fd76abe3" 
        ), 
		.binaryTarget( 
            name: "MDFInternationalization",
            url: "https://github.com/9folders-inchan/material-components-ios-spm/releases/download/0.0.4/MDFInternationalization.xcframework.zip",
            checksum: "8cb9ede564a1fc7df1073d5decea27f34c4ab78f76817516b84d7c4f437b6874" 
        ), 
        .target(
            name: "material-components-ios-spm",
            dependencies: ["MaterialComponents", "MDFInternationalization", "MDFTextAccessibility"]
        )
    ]
)
