//
//  CovidDeaths+CoreDataProperties.swift
//  CovidInfoApp
//
//  Created by student on 27/05/2021.
//
//

import Foundation
import CoreData


extension CovidDeaths {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CovidDeaths> {
        return NSFetchRequest<CovidDeaths>(entityName: "CovidDeaths")
    }

    @NSManaged public var datum: Date?
    @NSManaged public var gewest: String?
    @NSManaged public var leeftijdsgroep: String?
    @NSManaged public var geslacht: String?
    @NSManaged public var aantaldoden: String?

}

extension CovidDeaths : Identifiable {

}
