//
//  CovidCases+CoreDataProperties.swift
//  CovidInfoApp
//
//  Created by student on 27/05/2021.
//
//

import Foundation
import CoreData


extension CovidCases {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CovidCases> {
        return NSFetchRequest<CovidCases>(entityName: "CovidCases")
    }

    @NSManaged public var datum: Date?
    @NSManaged public var province: String?
    @NSManaged public var gewest: String?
    @NSManaged public var leeftijdsgroep: String?
    @NSManaged public var geslacht: String?
    @NSManaged public var aantalgevallen: Int16

}

extension CovidCases : Identifiable {

}
