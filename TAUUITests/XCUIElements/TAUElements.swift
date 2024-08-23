import Foundation
import XCTest

class HomePage {
    let app = XCUIApplication()
    
    private enum Identifiers {
        static let welcomeMessage = "welcomeMessage"
        static let enterCity = "enterCity"
        static let cityTextField = "city"
        static let enrollButton = "enrollButton"
        static let logo = "TAUlogo"
        static let successMessage = "Thanks for Joining!"
        static let errorMessage = "Please Enter City"
    }

    var welcomeMessage: XCUIElement {
        return app.staticTexts[Identifiers.welcomeMessage]
    }

    var enterCity: XCUIElement {
        return app.staticTexts[Identifiers.enterCity]
    }

    var cityTextField: XCUIElement {
        return app.textFields[Identifiers.cityTextField]
    }

    var enrollButton: XCUIElement {
        return app.buttons[Identifiers.enrollButton]
    }

    var logo: XCUIElement {
        return app.images[Identifiers.logo]
    }

    var successMessage: XCUIElement {
        return app.staticTexts[Identifiers.successMessage]
    }

    var errorMessage: XCUIElement {
        return app.staticTexts[Identifiers.errorMessage]
    }
    
    // Actions
    func enterCity(_ city: String) {
        cityTextField.tap()
        cityTextField.typeText(city)
    }

    func tapEnrollButton() {
        enrollButton.tap()
    }

    func isCityTextFieldEmpty() -> Bool {
        let textFieldValue = cityTextField.value as? String
        return textFieldValue?.isEmpty ?? true
    }
}

