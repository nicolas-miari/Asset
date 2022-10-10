// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Asset",
  platforms: [
    .iOS(.v15),
    .macOS(.v11)
  ],
  products: [
    .library(
      name: "Asset",
      targets: ["Asset"]),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "Asset",
      dependencies: []),
    // No test target (package only defines protocols, contains no testable implementation).
  ]
)
