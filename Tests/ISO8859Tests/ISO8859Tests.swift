import XCTest
@testable import ISO8859

final class ISO8859Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(String([0xE1, 0xE2, 0xE3, 0xE4], iso8859Encoding: ISO8859.part7), "αβγδ")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
