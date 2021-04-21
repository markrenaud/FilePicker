import XCTest
@testable import FilePicker

final class FilePickerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FilePicker().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
