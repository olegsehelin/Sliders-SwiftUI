// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Sliders-SwiftUI",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Sliders-SwiftUI",
            targets: ["Sliders"]),
    ],
    dependencies: [
        .package(url: "https://github.com/olegsehelin/CGExtender.git", .branch("master")),
        .package(url: "https://github.com/olegsehelin/SwiftUI-Shapes.git", .branch("master")),
        .package(url: "https://github.com/olegsehelin/SwiftUI-bez.git", .branch("master"))
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Sliders",
            dependencies: ["CGExtender", "SwiftUI-Shapes", "SwiftUI-bez"]),
        .testTarget(
            name: "SlidersTests",
            dependencies: ["Sliders"]),
    ]
)
