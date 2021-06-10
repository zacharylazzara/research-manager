//
//  Document.swift
//  Research Assistant
//
//  Created by Zachary Lazzara on 2021-06-07.
//

import Foundation

struct File: Identifiable {
    let id: URL // The ID will double as the URL to the document
    
    // TODO: need to support moving documents to new directories
    
    let type: FileType
    var remote: Bool // If the file is remote then we allow users to edit the title; if the file is local then edititng the title will edit the file on disk.
    var name: String // Will be the .lastPathComponent of the URL by default, but we may want to allow users to edit this to make documents easier to identify.
    
    let added: Date?
    var accessed: Date? // When the user last read the file
    
    var tags: [String]
    var flagged: Bool
    
    var archived: Bool
    
    init(_ url: URL, type: FileType, name: String) {
        self.id = url
        self.type = type
        self.name = name
        
        // TODO: figure out what to do with these later
        self.added = nil
        self.accessed = nil
        self.tags = []
        self.flagged = false
        self.remote = false
        self.archived = false
    }
    
    
    
    /* TODO:
    We need to support directories. Ideally we will just create files in local storage and display the directory structure, this way users can access these files from other devices outside of the application via services such as iCloud. When we save the link to a file instead of downloading it, we can provide a spreadsheet or some other such thing in the directory (unless we can somehow link to remote resources within the file system). However, we should also provide the ability to read and work with spreadsheets within the app (in the future), so the implementation may differ.
     
     Using CoreData may also make sense but I'm not sure yet how I want to implement this. With CoreData I'm not sure how easy it will be to share directories outside the app, but I imagine it would make keeping track of remote files, tags, and flags easier; though it'll depend somewhat on what features the filesystem supports.
     
     Need to look into constraints so we can enforce them in the data type.
     */
}