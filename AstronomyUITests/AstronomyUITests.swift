//
//  AstronomyUITests.swift
//  AstronomyUITests
//
//  Created by Nelson Gonzalez on 2/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest

class AstronomyUITests: XCTestCase {
    
    var app: XCUIApplication!

    override func setUp() {
        
        continueAfterFailure = false

        app = XCUIApplication()

        app.launch()
    
    }

   
}
