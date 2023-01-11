//
// This source file is part of the Continous Delivery open source project
//
// SPDX-FileCopyrightText: 2022 Paul Schmiedmayer <paul.schmiedmayer@tum.de>
//
// SPDX-License-Identifier: MIT
//

import Shared
import XCTest


class SharedTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(Shared.greeting.hasPrefix("Hello"))
        XCTAssertTrue(Shared.greeting.hasSuffix("! 👋"))
    }
}
