
BINARY_TARGETS=$1
NAME="MaterialComponent-xcframework"

FORMAT=$(cat <<- EOF
// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "${NAME}",
    platforms: [
        .iOS(.v9), .macOS(.v10_10)
    ],
    products: [ 
        .library(
            name: "${NAME}",
            targets: ["${NAME}"]),
    ],
    targets: [
        ${BINARY_TARGETS}
        .target(
            name: "${NAME}",
            dependencies: ["MaterialComponents", "MDFInternationalization", "MDFTextAccessibility"]
        )
    ]
)
EOF
)

echo "$FORMAT"