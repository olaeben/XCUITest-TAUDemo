import Foundation
import XCTest

class BDDTest: TAUUIBaseTest {
    
    func testSuccessMessageInBDD()  {
        givenAppIsReady()
        whenIEnter(city: "Lagos")
        andIEnrolled()
        thenIShouldSeeSuccessMessage()
    }
    
    func testEnterCityAlertMessageBDD() {
        givenAppIsReady()
        whenIDoNotEnter(city: " ")
        andIEnrolled()
        thenIShouldSeeEnterCityAlertMessage()
    }
}
