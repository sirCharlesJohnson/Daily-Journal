//
//  Entry+CoreDataProperties.swift
//  Daily Journal
//
//  Created by Charles Johnson on 10/30/21.
//
//

import Foundation
import CoreData


extension Entry {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entry> {
        return NSFetchRequest<Entry>(entityName: "Entry")
    }
    
    @NSManaged public var date: Date?
    @NSManaged public var text: String?
    
}

extension Entry : Identifiable {
    
    func month() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM"
        if let dateToBeFormatted = date {
            let month = formatter.string(from: dateToBeFormatted)
            
            return month.uppercased()
        }
        return ""
    }
    
    func day() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d"
        if let dateToBeFormatted = date {
            let day = formatter.string(from: dateToBeFormatted)
            return day
        }
        return ""
        
    }
    
}
