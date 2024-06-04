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
            url: "https://github.com/9folders-inchan/MaterialComponent-xcframework/releases/download/0.0.2/MDFTextAccessibility.xcframework.zip", 
            checksum: "0bc23db8d71859a5f1e5626f3a8eb3b0d62ab08f44c185d3b3639770c5158757" 
        ), 
		.binaryTarget( 
            name: "MaterialComponents", 
            url: "https://github.com/9folders-inchan/MaterialComponent-xcframework/releases/download/0.0.2/MaterialComponents.xcframework.zip", 
            checksum: "ebab1585cdf530c65a8a5f2081c2bca0665bd3e78a6442c1d40d64d8d6623bec" 
        ), 
		.binaryTarget( 
            name: "MDFInternationalization", 
            url: "https://github.com/9folders-inchan/MaterialComponent-xcframework/releases/download/0.0.2/MDFInternationalization.xcframework.zip", 
            checksum: "10cf42e43ed500cc4d11672f0de43b589f5107b2ff955c1ee2ff3a13492d21a5" 
        ), 
        .target(
            name: "MaterialComponent-xcframework",
            dependencies: ["MaterialComponents", "MDFInternationalization", "MDFTextAccessibility"]
        )
    ]
)
