//
//  SecondViewController.swift
//  AssignmentForwardBackwardDataPassing
//
//  Created by Mac on 04/11/22.
//

import UIKit
// MARK - create protocol backDataPassing
protocol BackDataPassing{
    func passDataToFirstViewController(textToPass1 : String,textToPass2 : String,textToPass3 : String)
}
class SecondViewController: UIViewController {

    @IBOutlet weak var labelOnSvc: UILabel!
    
    @IBOutlet weak var label1OnSvc: UILabel!
    
    @IBOutlet weak var label2OnSvc: UILabel!
    
    
    @IBOutlet weak var textFieldOnSvc: UITextField!
    
    @IBOutlet weak var textField1OnSvc: UITextField!
    
    @IBOutlet weak var textField2OnSvc: UITextField!
    
    var textFieldFromFvc : String?
    var textField1FromFvc : String?
    var textField2FromFvc : String?
    
    var delegateSVC: BackDataPassing?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelOnSvc.text = textFieldFromFvc
        self.label1OnSvc.text = textField1FromFvc
        self.label2OnSvc.text = textField2FromFvc
        navigationItem.hidesBackButton = true
    }
    
//MARK - IBAction on btnClickOnSvc to pass data on fvc
    @IBAction func btnClickOnSvc(_ sender: UIButton) {
   
        guard let delegateOnSecondViewController = delegateSVC
                else
        {
            print("delegate not found")
            return
        }
        
        let nameRetrivedFromTextField = self.textFieldOnSvc.text
        let nameRetrivedFromTextField1 = self.textField1OnSvc.text
        let nameRetrivedFromTextField2 = self.textField2OnSvc.text
        
        
        delegateOnSecondViewController.passDataToFirstViewController(textToPass1: nameRetrivedFromTextField!,textToPass2: nameRetrivedFromTextField1!,textToPass3: nameRetrivedFromTextField2!)
        
        navigationController?.popViewController(animated: true)
    
    }
    
}
