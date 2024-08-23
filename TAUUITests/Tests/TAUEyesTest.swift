import Foundation
import XCTest
import EyesXCUI

class TAUEyesTest: TAUUIBaseTest {
    
    func testTAUEyesXCUI()  {
        // Start the test.
        eyes.open(withApplicationName: "TAU", testName: "TAU Test Using EyesXCUI SDK!")
       
        // Visual checkpoint #1.
        eyes.check(withTag: "TAU", andSettings: Target.window().timeout(inSeconds: 2))
        
        let clickMeButton = XCUIApplication().buttons["enrollButton"]
        clickMeButton.tap()

        // Visual checkpoint #2.
        eyes.checkWindow(withTag: "Please Enter City")
        
    }
    
}
   
