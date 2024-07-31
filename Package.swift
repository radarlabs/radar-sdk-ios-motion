// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RadarSDKMotion",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "RadarSDKMotion",
            targets: ["RadarSDKMotion"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "RadarSDKMotion",
            dependencies: [],
            path: "RadarSDKMotion",
            publicHeadersPath: "Include"
            ),
    ]
)