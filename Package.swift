// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "LaboratioCapAudioOutput",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "LaboratioCapAudioOutput",
            targets: ["audiooutputPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "audiooutputPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/audiooutputPlugin"),
        .testTarget(
            name: "audiooutputPluginTests",
            dependencies: ["audiooutputPlugin"],
            path: "ios/Tests/audiooutputPluginTests")
    ]
)