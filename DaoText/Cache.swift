//
//  Cache.swift
//  DaoText
//
//  Created by Tauan Flores on 5/22/15.
//  Copyright (c) 2015 Astral Chest. All rights reserved.
//

import UIKit

class Cache {
   
    var textGame:[TextGame]?
    var audioGame:[AudioGame]?
    
    class var sharedInstance:Cache{
        get {
            struct _Singleton {
                static let instance = Cache()
            }
            return _Singleton.instance
        }
    }
    
    private init(){
        println("Singleton 'Cache' instanciado.")
    }
    
    
    
    
    
    
    
    
    
}
