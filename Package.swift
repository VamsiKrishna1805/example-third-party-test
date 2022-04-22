// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ThirdPartyPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ThirdPartyPackage",
            targets: ["ThirdPartyPackage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "KountAnalyticsPackage", url: "https://github.com/VamsiKrishna1805/example-kount-package", from: "1.0.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ThirdPartyPackage",
            dependencies: ["KountAnalyticsPackage"]),
        .testTarget(
            name: "ThirdPartyPackageTests",
            dependencies: ["ThirdPartyPackage"]),
//        .binaryTarget(name: "KountDataCollector", path: "./Sources/KountDataCollector.xcframework"),
    ]
)

//.binaryTarget(name: "example-kount-package",
//              url: "",
//              checksum: "244633b5e212a0d8fe982fa181375c304cff056cfd793643ae04dd587fa4c2b9"),
//.binaryTarget(name: "KounDataCollector",
//              url: "https://github.com/VamsiKrishna1805/example-kount-package",
//              checksum: "244633b5e212a0d8fe982fa181375c304cff056cfd793643ae04dd587fa4c2b9"),
