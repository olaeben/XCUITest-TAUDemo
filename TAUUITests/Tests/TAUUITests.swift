import XCTest
import Foundation

final class TAUUITests: TAUUIBaseTest {
    
    func testSuccessMessage() throws {
   
        // Element Accessibility Identifiers
        let welcomeMessage = app.staticTexts["welcomeMessage"]
        let enterCity = app.staticTexts["enterCity"]
        let cityTextField = app.textFields["city"]
        let enrollButton = app.buttons["enrollButton"]
        let logo = app.images["TAUlogo"]
        let successMessage = app.staticTexts["Thanks for Joining!"]
        
        // Action
        XCTAssertTrue(welcomeMessage.exists)
        welcomeMessage.tap()
        
        XCTAssertTrue(enterCity.exists)
        enterCity.tap()
        
        XCTAssertTrue(logo.exists, "Logo Not Found")
        logo.tap()
        
        cityTextField.tap()
        cityTextField.typeText("Lagos")
        XCTAssertNotNil(cityTextField, "Enter City Field is Empty")
        
        XCTAssertTrue(enrollButton.exists, "Enroll Button does not Exist")
        enrollButton.tap()
        
        XCTAssertTrue(successMessage.exists, "Success Message Not Found")
        

    }

    func testEnterCityAlertMessage() {
        
        // Element Accessibility Identifiers
        let welcomeMessage = app.staticTexts["welcomeMessage"]
        let enterCity = app.staticTexts["enterCity"]
        let enrollButton = app.buttons["enrollButton"]
        let errorMessage = app.staticTexts["Please Enter City"]
        let logo = app.images["TAUlogo"]
        
        // Action
        XCTAssertTrue(welcomeMessage.exists)
        welcomeMessage.tap()
        
        XCTAssertTrue(logo.exists, "Logo Not Found")
        logo.tap()
        
        XCTAssertTrue(enterCity.exists, "City Not Found")
        enterCity.tap()
        
        XCTAssertTrue(enrollButton.exists, "Enroll Button does not Exist")
        enrollButton.tap()
        
        errorMessage.tap()
        XCTAssertTrue(errorMessage.exists, "Error Message Not Found")
        
    }
    
    
}
