//
//  parser.swift
//  XmlSwift
//
//  Created by Orkhan Alikhanov on 10/24/17.
//  Copyright © 2017 BiAtoms. All rights reserved.
//

import Foundation

open class XmlParser: NSObject {
    open let parser: XMLParser
    open let document = XmlDocument(root: nil)
    open weak var delegate: XmlParserDelegate?
    
    public required init(parser: XMLParser) {
        self.parser = parser
        super.init()
        parser.delegate = self
    }
    
    open func parse() -> Bool { return parser.parse() }
    open func abortParsing() {
        parser.abortParsing()
        currentElement = nil
        document.root = nil
    }
    
    open var error: Error? {
        return parser.parserError
    }
    
    fileprivate var currentElement: XmlElement!
}

extension XmlParser: XMLParserDelegate {
    public func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        let newElement = XmlElement(name: elementName)
        newElement.attributes = attributeDict
        
        if currentElement == nil { //happens only once for the root object
            document.root = newElement
            currentElement = newElement
        } else {
            newElement.parent = currentElement
            currentElement.children.append(newElement)
        }
        
        currentElement = newElement
        self.delegate?.parser(self, didStartElement: elementName)
    }
    
    public func parser(_ parser: XMLParser, foundCharacters string: String) {
        if currentElement.text == nil {
            currentElement.text = string
        } else {
            currentElement.text! += string
        }
    }
    
    public func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        assert(currentElement.name == elementName, "This should not ever happen")
        currentElement.text = currentElement.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        currentElement = currentElement.parent
        self.delegate?.parser(self, didEndElement: elementName)
    }
}

extension XmlParser {
    public convenience init(stream: InputStream) {
        self.init(parser: XMLParser(stream: stream))
    }
    
    public convenience init(data: Data) {
        self.init(parser: XMLParser(data: data))
    }
    
    public convenience init?(contentsOf url: URL) {
        guard let parser = XMLParser(contentsOf: url) else { return nil }
        self.init(parser: parser)
    }
}
