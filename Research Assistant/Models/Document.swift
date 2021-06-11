//
//  Document.swift
//  Research Assistant
//
//  Created by Zachary Lazzara on 2021-06-11.
//

import Foundation

class Document: File {
    func read() throws -> Data {
        return try Data(contentsOf: url)
    }
    
    init(url: URL, name: String, parent: Directory) {
        super.init(url: url, name: name, parent: parent)
    }
}
