import Foundation
import XCTest
import EyesXCUI

class TAUUIBaseTest: XCTestCase {
    
    let app = XCUIApplication()
    var homePage: HomePage!
    var eyes = Eyes()
    
    
    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        homePage = HomePage()
        //        eyes.apiKey = ProcessInfo.processInfo.environment["APPLITOOLS_API_KEY"]!
        // Set Applitools API Key using environment variable
        if let apiKey = ProcessInfo.processInfo.environment["APPLITOOLS_API_KEY"] {
            eyes.apiKey = apiKey
        } else {
            XCTFail("Applitools API key not set in environment variables.")
        }
        
        
        
    }
    
    override func tearDownWithError() throws {
        super.tearDown()
        app.terminate()
        // End the test.
        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
        
    }
    
    func XCTAyncAssert(_ element: XCUIElement) {
        let isElementExist = element.waitForExistence(timeout: 10)
        if isElementExist {
            XCTAssertTrue(element.exists)
        }
    }
}
