    import XCTest

    @testable import trueid_community

    final class trueid_communityTests: XCTestCase {
        func testExample() {
            // This is an example of a functional test case.
            // Use XCTAssert and related functions to verify your tests produce the correct
            // results.
//            XCTAssertEqual(trueid_community().text, "Hello, World!")
            AmityCommunity.shared.setDisplayName(name: "Test123")
        }
    }
