import Foundation
import XCTest

extension TAUUIBaseTest {
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is Ready") { _ in
            XCTAssertTrue(homePage.welcomeMessage.exists)
            XCTAssertTrue(homePage.logo.exists, "Logo Not Found")
            XCTAssertTrue(homePage.enterCity.exists, "City Not Found")
        }
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I Enter City \(city)") { _ in
            homePage.enterCity(city)
            XCTAssertFalse(homePage.isCityTextFieldEmpty(), "Enter City Field is Empty")
        }
    }
    
    func andIEnrolled() {
        XCTContext.runActivity(named: "And I Enrolled") { _ in
            XCTAssertTrue(homePage.enrollButton.exists, "Enroll Button does not Exist")
            homePage.tapEnrollButton()
        }
    }
    
    func thenIShouldSeeSuccessMessage() {
        XCTContext.runActivity(named: "Then I Should See a Success Message") { _ in
            XCTAyncAssert(homePage.successMessage)
        }
    }
    
    func whenIDoNotEnter(city: String) {
        XCTContext.runActivity(named: "When I Do Not Enter City \(city)") { _ in
            homePage.cityTextField.tap()
            XCTAssertTrue(homePage.isCityTextFieldEmpty(), "Enter City Field is Not Empty")
        }
    }
    
    func thenIShouldSeeEnterCityAlertMessage() {
        XCTContext.runActivity(named: "Then I Should See Enter City Alert Message") { _ in
            XCTAssertTrue(homePage.errorMessage.exists, "Error Message Not Found")
        }
    }
    
}

