import XCTest
@testable import AttributedStringTag

final class AttributedStringTagTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(AttributedStringTag().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
