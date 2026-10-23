// swift-tools-version: 5.9

// Swift Package Manager integration for Flutter 3.44 and later, where it is the default.
// Flutter 3.38 to 3.43 build this plugin through CocoaPods (iphone_duo_ui_pro.podspec).

import PackageDescription

let package = Package(
    name: "iphone_duo_ui_pro",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(name: "iphone-duo-ui-pro", targets: ["iphone_duo_ui_pro"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "iphone_duo_ui_pro",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ]
            // No build flag is needed: DuoBridge.swift detects the iOS 27.1 SDK on its own.
        )
    ]
)
