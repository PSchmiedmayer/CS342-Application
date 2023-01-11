// swift-tools-version:5.6

//
// This source file is part of the Continous Delivery open source project
//
// SPDX-FileCopyrightText: 2022 Paul Schmiedmayer <paul.schmiedmayer@tum.de>
//
// SPDX-License-Identifier: MIT
//

import PackageDescription


let package = Package(
    name: "WebService",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(name: "WebService", targets: ["WebService"])
    ],
    dependencies: [
        .package(url: "https://github.com/Apodini/Apodini.git", .upToNextMinor(from: "0.9.2")),
        .package(name: "Shared", path: "../Shared")
    ],
    targets: [
        .executableTarget(
            name: "WebService",
            dependencies: [
                .product(name: "Apodini", package: "Apodini"),
                .product(name: "ApodiniHTTP", package: "Apodini"),
                .product(name: "Shared", package: "Shared")
            ]
        ),
        .testTarget(
            name: "WebServiceTests",
            dependencies: [
                .target(name: "WebService"),
                .product(name: "XCTApodiniNetworking", package: "Apodini"),
                .product(name: "XCTApodini", package: "Apodini"),
                .product(name: "Shared", package: "Shared")
            ]
        )
    ]
)
