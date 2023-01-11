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
    name: "Shared",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        .library(name: "Shared", targets: ["Shared"])
    ],
    targets: [
        .target(
            name: "Shared"
        ),
        .testTarget(
            name: "SharedTests",
            dependencies: [
                .target(name: "Shared")
            ]
        )
    ]
)
