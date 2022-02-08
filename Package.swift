// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "PagingView",
    platforms: [
      .iOS(.v13),
      .macOS(.v10_15),
      .tvOS(.v13),
      .watchOS(.v6)
    ],
    products: [
        .library(
            name: "PagingView",
            targets: ["PagingView"]),
    ],
    targets: [
        .target(
            name: "PagingView",
            dependencies: []),
    ]
)
