//
//  AppClass.swift
//  DependentFrameworks
//
//  Created by Josh Campion on 08/02/2016.
//  Copyright © 2016 Josh Campion. All rights reserved.
//

import Foundation
import Alamofire

class AppClass {
    
    func appFunction(completion:(str: String?) -> ()) {
        Alamofire.request(.GET, "https://cocoapods.org")
        .responseData { (response) -> Void in
            
            if let responseData = response.data {
                let htmlString = String(data: responseData, encoding: NSASCIIStringEncoding)
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    completion(str: htmlString)
                })
            } else if let error = response.result.error {
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    completion(str: error.localizedDescription)
                })
            }
        }
    }
    
}