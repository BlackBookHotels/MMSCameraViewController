// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MMSCameraViewController",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
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
            publicHeadersPath: ".",
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
