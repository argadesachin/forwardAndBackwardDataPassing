//
//  ViewController.swift
//  AssignmentForwardBackwardDataPassing
//
//  Created by Mac on 04/11/22.
//

import UIKit
// MARK - conform BackDataPassing protocol to the ViewController
class ViewController: UIViewController,BackDataPassing {
    

    
    @IBOutlet weak var textFieldOnFvc: UITextField!
    
    @IBOutlet weak var textField1OnFvc: UITextField!
    
    @IBOutlet weak var textField2OnFvc: UITextField!
    
    
    @IBOutlet weak var labelOnFvc: UILabel!
    
    @IBOutlet weak var label1OnFvc: UILabel!
    
    @IBOutlet weak var label2OnFvc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textFieldOnFvc.text = ""
        self.textField1OnFvc.text = ""
        self.textField2OnFvc.text = ""
    }
// MARK - IBAction on btnClickOnFvc to Pass Data On Second View Controller
    @IBAction func btnClickOnFvc(_ sender: UIButton) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as! SecondViewController
        let dataToPass1 = self.textFieldOnFvc.text
        let dataToPass2 = self.textField1OnFvc.text
        let dataToPass3 = self.textField2OnFvc.text
        secondViewController.textFieldFromFvc = dataToPass1
        secondViewController.textField1FromFvc = dataToPass2
        secondViewController.textField2FromFvc = dataToPass3
        secondViewController.delegateSVC = self
        navigationController?.pushViewController(secondViewController, animated: true)
        
    }
//Mark - assign data to the Label on first view controller
    func passDataToFirstViewController(textToPass1: String, textToPass2: String, textToPass3: String) {
        self.labelOnFvc.text = textToPass1
        self.label1OnFvc.text = textToPass2
        self.label2OnFvc.text = textToPass3
    }
   
    
}

