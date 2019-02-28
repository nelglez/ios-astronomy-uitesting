//
//  AstronomyUITests.swift
//  AstronomyUITests
//
//  Created by Nelson Gonzalez on 2/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest

class AstronomyUITests: XCTestCase {
    
    private var savePhotoButton: XCUIElement {
        return app.buttons["PhotoDetailViewController.SaveButton"]
    }
    
    private var statusLabel: XCUIElement {
        return app.staticTexts["PhotoDetailViewController.CameraLabel"]
    }
    
    private var saveButton: XCUIElement {
        return app.buttons["PhotoDetailViewController.SaveButton"]
    }
    
    var app: XCUIApplication!

    override func setUp() {
        
        continueAfterFailure = false

        app = XCUIApplication()

        app.launch()

        app.launchArguments.append("UITesting")
    }
    
    
    func testSavingImageToPhotoLibrary() {
        
        
        app.collectionViews.children(matching: .cell).element(boundBy: 0).otherElements.containing(.image, identifier:"MarsPlaceholder").element.tap()
        app.otherElements.containing(.navigationBar, identifier:"Title").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
        app.staticTexts["Taken by 5 on 8/6/12, 8:00 PM (Sol 1)"].tap()
        
        
        XCTAssertEqual("Mast Camera", statusLabel.label)
      //  app.staticTexts["Mast Camera"].tap()
        
        saveButton.tap()
      //  app/*@START_MENU_TOKEN@*/.buttons["PhotoDetailViewController.SaveButton"]/*[[".buttons[\"Save to Photo Library\"]",".buttons[\"PhotoDetailViewController.SaveButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        
        app.alerts["“Astronomy” Would Like to Access Your Photos"]
      //  let astronomyWouldLikeToAccessYourPhotosAlert = app.alerts["“Astronomy” Would Like to Access Your Photos"]
        
        
        XCTAssertEqual("Save to Photo Library", saveButton.label)
    
        
      //  astronomyWouldLikeToAccessYourPhotosAlert.staticTexts["“Astronomy” Would Like to Access Your Photos"].tap()
        app.buttons["Okay"].tap()
        
        
    }

   
}
