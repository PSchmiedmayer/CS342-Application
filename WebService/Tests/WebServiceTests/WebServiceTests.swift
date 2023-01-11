//
// This source file is part of the Continous Delivery open source project
//
// SPDX-FileCopyrightText: 2022 Paul Schmiedmayer <paul.schmiedmayer@tum.de>
//
// SPDX-License-Identifier: MIT
//


import Shared
@testable import WebService
import XCTApodini
import XCTApodiniNetworking
import XCTest


class WebServiceTests: XCTApodiniTest {
    /// Starts the `MyWebService` for all test methods using its default configuration
    override func setUpWithError() throws {
        try super.setUpWithError()
        try MyWebService.start(mode: .boot, app: app, webService: MyWebService.parse([]))
    }
    
    /// Tests that a HTTP GET request at the root of the web service returns the greeting defined by `Shared.greeting`.
    func testGreeting() throws {
        try app.testable().test(.GET, "") { response in
            XCTAssertEqual(response.status, .ok)
            try XCTAssertEqual(response.bodyStorage.getFullBodyData(decodedAs: String.self), Shared.greeting)
        }
    }
}
