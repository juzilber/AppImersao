//
//  DAOText.swift
//  DaoText
//
//  Created by Tauan Flores on 5/21/15.
//  Copyright (c) 2015 Astral Chest. All rights reserved.
//

import UIKit

class DAOText: NSObject {
    
    
    
  class func createText(textInstance : TextGame) -> String {
    //Load plist
    
    var rootPath:NSString = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as! NSString
    var path:NSString = rootPath.stringByAppendingPathComponent("DaoText.plist")
    
    var fileManager = NSFileManager.defaultManager()
    
    // Se o arquivo nao existir
    if (!fileManager.fileExistsAtPath(path as String)) {
        
        var sourcePath:NSString = NSBundle.mainBundle().pathForResource("DaoText", ofType: "plist")!;
        fileManager.copyItemAtPath(sourcePath as String, toPath: path as String, error: nil)
    }
    
    var textGameArray = NSMutableArray(contentsOfFile: path as String)
    
    for var i = 0; i < textGameArray?.count; i++ {
        
        var cadastrada:TextGame = TextGame()
        var dict: AnyObject? = textGameArray?.objectAtIndex(i)
        
        cadastrada.textOfGame = dict?.objectForKey("TextOfGame") as! String
        cadastrada.titleOfTextGame = dict?.objectForKey("TitleOfTextGame")as! String
        
    }
    
    var dictionaryTextOfGame = ["TextOfGame":textInstance.textOfGame, "TitleOfTextGame":textInstance.titleOfTextGame];
    
    textGameArray?.addObject(dictionaryTextOfGame)
    
    textGameArray?.writeToFile(path as String, atomically: false)
    
    
    var cache = Cache.sharedInstance
    
    cache.textGame = NSArray(array: textGameArray!) as? [TextGame]
    
    
    println("Create Text plist ativo")
    return "Cadastrado com sucesso"
    
    }

    



/**************************************************************************/



class func updateText(textInstance : TextGame) -> Bool {
    
        
    
        
    
    
    return false
}

/**************************************************************************/

class func deleteText(textRemoveInstance : TextGame) -> Bool {
    
    var rootPath:NSString = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as! NSString
    var path:NSString = rootPath.stringByAppendingPathComponent("DaoText.plist")
    
    var fileManager = NSFileManager.defaultManager()
    
    // Se o arquivo nao existir
    if (!fileManager.fileExistsAtPath(path as String)) {
        var vazio:NSMutableArray = NSMutableArray()
        return true
        
    }
    
    var dictsArray = NSMutableArray(contentsOfFile: path as String)
    
    var dicionario = ["TextOfGame":textRemoveInstance.textOfGame, "TitleOfGame":textRemoveInstance.titleOfTextGame];
    dictsArray?.removeObject(dicionario)
    
    
    dictsArray?.writeToFile(path as String, atomically: false)
    
    var cache = Cache.sharedInstance
    
    //cache.materias = dictsArray? as? [Materia]
    
    cache.textGame = NSArray(array: dictsArray!) as? [TextGame]
    
    println("Delete Text plist ativo")
    return true
}

    /************************************************************************/

class func getAllTextGames() -> [TextGame] {
    
    
    var cache = Cache.sharedInstance
    
    
    if (cache.textGame != nil) {
        println("Get All Text plist ativo")
        return cache.textGame!
    }
        
    else {
        
        var rootPath:NSString = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as! NSString
        var path:NSString = rootPath.stringByAppendingPathComponent("DaoText.plist")
        
        var fileManager = NSFileManager.defaultManager()
        
        // Se o arquivo nao existir
        if (!fileManager.fileExistsAtPath(path as String)) {
            var vazio:[TextGame] = []
            return vazio
            
        }
        
        var dictsArray = NSMutableArray(contentsOfFile: path as String)
        var textGameArray: [TextGame] = []
        
        
        for var i = 0; i < dictsArray?.count; i++
        {
            var textGame:TextGame = TextGame()
            var dict: AnyObject? = dictsArray?.objectAtIndex(i)
            
            textGame.textOfGame = dict?.objectForKey("TextOfGame") as! String
            textGame.titleOfTextGame = dict?.objectForKey("TitleOfTextGame") as! String
            
            textGameArray.append(textGame)
        }
        cache.textGame = textGameArray
    }
    println("Get All Text plist ativo")
    return cache.textGame!
    
}
    
    
    
    // fecha classe
}






