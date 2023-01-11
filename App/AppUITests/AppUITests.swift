//
// This source file is part of the Continous Delivery open source project
//
// SPDX-FileCopyrightText: 2022 Paul Schmiedmayer <paul.schmiedmayer@tum.de>
//
// SPDX-License-Identifier: MIT
//

import Shared
import XCTest


class AppUITests: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testGreeting() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssertTrue(XCUIApplication().staticTexts[Shared.greeting].exists)
    }
}
