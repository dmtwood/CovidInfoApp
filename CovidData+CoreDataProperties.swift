//
//  CovidData+CoreDataProperties.swift
//  CovidInfoApp
//
//  Created by student on 27/05/2021.
//
//

import Foundation
import CoreData


extension CovidData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CovidData> {
        return NSFetchRequest<CovidData>(entityName: "CovidData")
    }

    @NSManaged public var startmoment: Date?
    @NSManaged public var laatstefetch: Date?

}

extension CovidData : Identifiable {

}
