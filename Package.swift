// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "GameServer",
    products: [
        .library(name: "App", targets: ["App"]),
        .executable(name: "Run", targets: ["Run"])
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0-rc"),
        // 🔵 Swift ORM (queries, models, relations, etc) built on SQLite 3.
        .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0-rc.2"),
        //Leaf
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0-rc")
        ],
    targets: [
        .target(
            name: "App",
            dependencies: ["Vapor", "FluentSQLite", "Leaf"]
        ),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"]),
        ]
)

