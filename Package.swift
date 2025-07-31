// swift-tools-version:6.0
import PackageDescription

let package = Package(
  name: "KoveProto",
  platforms: [.macOS("15.0")],
  products: [
    .library(
      name: "KoveProto",
      targets: ["KoveProto"]
    ),
  ],
dependencies: [
      .package(url: "https://github.com/grpc/grpc-swift-2.git", from: "2.1.0"),
      .package(url: "https://github.com/grpc/grpc-swift-protobuf.git", from: "2.0.0"),
      .package(url: "https://github.com/grpc/grpc-swift-nio-transport.git", from: "2.0.0"),
      .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.5.0"),
],
  targets: [
    .target(
      name: "KoveProto",
        dependencies: [
          .product(name: "GRPCCore", package: "grpc-swift-2"),
          .product(name: "GRPCNIOTransportHTTP2", package: "grpc-swift-nio-transport"),
          .product(name: "GRPCProtobuf", package: "grpc-swift-protobuf"),
          .product(name: "ArgumentParser", package: "swift-argument-parser"),
        ],
      path: "gen/swift/k8s/v1",
      sources: ["."],
      publicHeadersPath: nil
    ),
  ]
)