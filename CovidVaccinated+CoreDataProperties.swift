//
//  CovidVaccinated+CoreDataProperties.swift
//  CovidInfoApp
//
//  Created by student on 27/05/2021.
//
//

import Foundation
import CoreData


extension CovidVaccinated {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CovidVaccinated> {
        return NSFetchRequest<CovidVaccinated>(entityName: "CovidVaccinated")
    }

    @NSManaged public var datum: Date?
    @NSManaged public var gewest: String?
    @NSManaged public var leeftijdsgroep: String?
    @NSManaged public var geslacht: String?
    @NSManaged public var producent: String?
    @NSManaged public var aantalprikken: Int16
    @NSManaged public var aantalgevaccineerden: Int64

}

extension CovidVaccinated : Identifiable {

}
