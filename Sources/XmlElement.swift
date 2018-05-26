//
//  XmlElement.swift
//  XmlSwift
//
//  Created by Orkhan Alikhanov on 10/25/17.
//  Copyright © 2017 BiAtoms. All rights reserved.
//

import Foundation

open class XmlElement {
    open var name: String
    open var attributes: [String:String] = [:]
    open var text: String
    open var children: [XmlElement] = []
    open var parent: XmlElement?
    
    public init(name: String, xmlns: String? = nil, text: String = "") {
        self.name = name
        self.text = text
        attributes["xmlns"] = xmlns
    }
    
    open var xml: String {
        //TODO: generate compact xml
        return "<\(name)\(attributes.map({" \($0)=\"\($1)\" "}).joined())>\(text)\(children.map({ $0.description }).joined())</\(name)>"
    }
    
    open subscript(key: String) -> String? {
        get {
            return attributes[key]
        }
        set {
            attributes[key] = newValue
        }
    }
}

extension XmlElement: CustomStringConvertible {
    public var description: String {
        return xml
    }
}
