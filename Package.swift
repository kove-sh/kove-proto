// swift-tools-version:5.7
import PackageDescription

let package = Package(
  name: "KoveProto",
  platforms: [
    .macOS(.v15)
  ],
  products: [
    .library(
      name: "KoveProtoClient",
      targets: ["KoveProtoClient"]
    ),
  ],
  targets: [
    .target(
      name: "KoveProtoClient",
      path: "gen/swift/k8s/v1",
      sources: ["."],
      publicHeadersPath: nil
    ),
  ]
)