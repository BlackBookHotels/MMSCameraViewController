// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "MMSCameraViewController",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "MMSCameraViewController",
            targets: ["MMSCameraViewController"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "MMSCameraViewController",
            dependencies: [],
            path: "MMSCameraViewController/Classes/",
            resources: [
                .process("Assets")
            ],
            linkerSettings: [
                //Frameworks
            .linkedFramework("AVFoundation"),
            .linkedFramework("UIKit"),
            .linkedFramework("Foundation"),
            ]),
        .testTarget(
            name: "MMSCameraViewControllerTests",
            dependencies: ["MMSCameraViewController"]),
    ]
)
