//
//  XmlSwiftTests.swift
//  XmlSwiftTests
//
//  Created by Orkhan Alikhanov on 10/24/17.
//  Copyright © 2017 BiAtoms. All rights reserved.
//

import XCTest
@testable import XmlSwift

class XmlSwiftTests: XCTestCase {
    func testExample() {
        let data = """
                   <?xml version="1.0" encoding="UTF-8"?>
                   <note>
                   <to>Tove</to>
                   <from>Jani</from>
                   <heading>Reminder</heading>
                   <body>Don't forget me this weekend!</body>
                   </note>
                   """.data(using: .utf8)!
        let parser = XmlParser(data: data)
        XCTAssertEqual(parser.parse(), true)
        XCTAssertEqual(parser.document.xml, "<?xml version=\"1.0\" encoding=\"utf-8\"?><note><to>Tove</to><from>Jani</from><heading>Reminder</heading><body>Don't forget me this weekend!</body></note>")
    }
    
    static var allTests = [
        ("testExample", testExample)
    ]
}
