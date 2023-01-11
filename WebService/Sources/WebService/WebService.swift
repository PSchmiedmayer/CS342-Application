//
// This source file is part of the Continous Delivery open source project
//
// SPDX-FileCopyrightText: 2022 Paul Schmiedmayer <paul.schmiedmayer@tum.de>
//
// SPDX-License-Identifier: MIT
//

import Apodini
import ApodiniHTTP
import ArgumentParser
import Shared


// MARK: Account
/// The `WebService` instance that defines the Web Service in the Continous Delivery setup
@main
struct MyWebService: WebService {
    @Option
    var port: Int = 80
    
    
    var content: some Component {
        Text(Shared.greeting)
    }
    
    var configuration: Configuration {
        HTTPConfiguration(bindAddress: .interface(port: port))
        HTTP()
    }
}
