//
//  DataModel+CoreDataProperties.swift
//  SupportSMECoredata
//
//  Created by daffolapmac146 on 23/06/20.
//  Copyright © 2020 daffolapmac146. All rights reserved.
//
//

import Foundation
import CoreData


extension DataModel {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DataModel> {
        return NSFetchRequest<DataModel>(entityName: "DataModel")
    }

    @NSManaged public var email: String?
    @NSManaged public var password: String?

}
