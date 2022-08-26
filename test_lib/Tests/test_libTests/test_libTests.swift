import XCTest
@testable import test_lib

final class test_libTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(test_lib().text, "Hello, World!")
    }
}
