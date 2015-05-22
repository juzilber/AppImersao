//
//  MostrarRegisterTextVCViewController.swift
//  DaoText
//
//  Created by Tauan Flores on 5/22/15.
//  Copyright (c) 2015 Astral Chest. All rights reserved.
//

import UIKit

class MostrarRegisterTextVCViewController: UIViewController {

    
    var textGame:[TextGame] = DAOText.getAllTextGames()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textGame = DAOText.getAllTextGames()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
