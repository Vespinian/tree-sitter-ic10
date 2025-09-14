import XCTest
import SwiftTreeSitter
import TreeSitterIc10

final class TreeSitterIc10Tests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_ic10())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Ic10 grammar")
    }
}
