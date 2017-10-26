//
//  XmlParserDelegate.swift
//  XmlSwift
//
//  Created by Orkhan Alikhanov on 10/25/17.
//  Copyright © 2017 BiAtoms. All rights reserved.
//

public protocol XmlParserDelegate: class {
    func parser(_ parser: XmlParser, didEndElement elementName: String)
    func parser(_ parser: XmlParser, didStartElement elementName: String)
}
