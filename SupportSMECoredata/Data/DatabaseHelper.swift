//
//  DatabaseHelper.swift
//  SupportSMECoredata
//
//  Created by daffolapmac146 on 24/06/20.
//  Copyright © 2020 daffolapmac146. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class DatabaseHelper {
    
    static var shareInstance = DatabaseHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    //MARK: Save
    func save(object: [String:String]) {
        let login = NSEntityDescription.insertNewObject(forEntityName: Constant.DatabaseConstant.modelName, into: context!) as! DataModel
        login.email = object[Constant.DatabaseConstant.email]
        login.password = object[Constant.DatabaseConstant.password]
        do{
            try context?.save()
        } catch {
            print(Constant.DatabaseConstant.errorSave)
        }
    }
    
    //MARK: Fetch
    func getStudentData() -> [DataModel] {
        var loginCredentials = [DataModel]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: Constant.DatabaseConstant.modelName)
        do {
            loginCredentials = try context?.fetch(fetchRequest) as! [DataModel]
        }catch {
            print(Constant.DatabaseConstant.errorFetch)
        }
        return loginCredentials
    }
}
