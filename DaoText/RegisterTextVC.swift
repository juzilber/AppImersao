//
//  RegisterTextVC.swift
//  
//
//  Created by Tauan Flores on 5/22/15.
//
//

import UIKit

class RegisterTextVC: UIViewController  , UITextFieldDelegate , UITextViewDelegate  {

    

    

    @IBOutlet weak var CampoTextOfGame: UITextView!
    @IBOutlet weak var CampoTitleOfGame: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        CampoTextOfGame.delegate = self
        CampoTitleOfGame.delegate = self
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    @IBAction func okButtonPressed(sender: UIBarButtonItem) {

        
        var msg:String = ""
        
        /*      Criando os Texts       */
        var textGame:TextGame = TextGame()
        
        textGame.textOfGame = CampoTextOfGame.text
        textGame.titleOfTextGame = CampoTitleOfGame.text
        
        /*  Testes de condição para cadastrar a materia */
        
        msg = DAOText.createText(textGame)
        
        
        
        
        
        if (msg == "Cadastrado com sucesso") {
            
            self.navigationController?.popViewControllerAnimated(true)
        
    }
   
    
    
    
    
//    // Table View Methods
//    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
//        
//        var cell:UITableViewCell = self.tabelaCadastro.dequeueReusableCellWithIdentifier("celula", forIndexPath: indexPath) as! UITableViewCell
//        cell.detailTextLabel?.text = ""
//        cell.textLabel?.text = ""
//        
//        
//        if(indexPath.row == 0) {
//            cell.contentView.addSubview(CampoTextOfGame)
//        }
//        else if(indexPath.row == 1) {
//            cell.contentView.addSubview(CampoTitleOfGame)
//        
//        
//        
//    }
//    
//    
//    
//    
//    
//    /* Number of Rows In Section */
//        
//        
//        
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 5
//    }
//        
//        
//        
//        
//    /* Did Select Row At Index Path */
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
////        if( indexPath.row == 4) {
////            
////            performSegueWithIdentifier("mostradiasdasemana", sender: nil)
////            
////            
////            
////        }
//   }
//        
//        
//        
//    /***************************************/
//    
//    
//
/////////// Final Class
}
}
