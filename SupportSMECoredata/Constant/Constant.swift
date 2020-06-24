//
//  Constant.swift
//  SupportSMECoredata
//
//  Created by daffolapmac146 on 23/06/20.
//  Copyright © 2020 daffolapmac146. All rights reserved.
//

import Foundation

enum Constant {
    
    enum Endpoint {
        static let URLString = "http://hopedev.cloudzmall.com:8000/public/customer/login"
    }
    
    enum HTTPConstants {
        static let method = "POST"
        static let jsonApplication = "application/json"
        static let headerField = "Content-Type"
    }
    
    enum storyboardConstant {
        static let storyboardIdentifier = "ShowViewController"
        static let cell = "cell"
    }
    
    enum Loader {
        static let loaderText = "Loading..."
        static let loaderDetailText = "fetching details"
    }
    
    enum DatabaseConstant {
        static let modelName = "DataModel"
        static let email = "email"
        static let password = "password"
        static let errorSave = "Data is not saved !"
        static let errorFetch = "Cannot get data"
    }
}
