//
//  Document.swift
//  XmlSwift
//
//  Created by Orkhan Alikhanov on 10/25/17.
//  Copyright © 2017 BiAtoms. All rights reserved.
//

open class XmlDocument {
    open var root: XmlElement?
    
    public init(root: XmlElement?) {
        self.root = root
    }
    
    open var xml: String {
        return "<?xml version=\"1.0\" encoding=\"utf-8\"?>" + (root?.description ?? "")
    }
}
extension XmlDocument: CustomStringConvertible {
    public var description: String {
        return xml
    }
}
    
