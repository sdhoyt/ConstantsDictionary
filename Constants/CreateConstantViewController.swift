//
//  CreateConstantViewController.swift
//  Constants
//
//  Created by Sean Hoyt on 11/22/14.
//  Copyright (c) 2014 Sean Hoyt. All rights reserved.
//

import Foundation
import UIKit

var createdConstants : [[String]] = []
var createdValue : [String] = []
var createdConstantList : [String] = []

class CreateConstantViewController: UIViewController, UITextFieldDelegate{
    
    
    @IBOutlet weak var createdConstantNameTextField: UITextField!
    @IBOutlet weak var createdConstantSymbolTextField: UITextField!
    @IBOutlet weak var createdConstantValueTextField: UITextField!
    @IBOutlet weak var createdOtherUnits1TextField: UITextField!
    @IBOutlet weak var createdOtherUnits2TextField: UITextField!
    @IBOutlet weak var createdOtherUnits3TextField: UITextField!
    
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       createdConstantNameTextField.layer.borderColor = UIColor(red: 0.747, green: 0.749, blue: 0.760, alpha: 1.00).CGColor
        createdConstantNameTextField.layer.borderWidth = 1.0
        
        createdConstantSymbolTextField.layer.borderColor = UIColor(red: 0.747, green: 0.749, blue: 0.760, alpha: 1.00).CGColor
        createdConstantSymbolTextField.layer.borderWidth = 1.0
        
        createdConstantValueTextField.layer.borderColor = UIColor(red: 0.747, green: 0.749, blue: 0.760, alpha: 1.00).CGColor
        createdConstantValueTextField.layer.borderWidth = 1.0
        
        createdOtherUnits1TextField.layer.borderColor = UIColor(red: 0.747, green: 0.749, blue: 0.760, alpha: 1.00).CGColor
        createdOtherUnits1TextField.layer.borderWidth = 1.0
        
        createdOtherUnits2TextField.layer.borderColor = UIColor(red: 0.747, green: 0.749, blue: 0.760, alpha: 1.00).CGColor
        createdOtherUnits2TextField.layer.borderWidth = 1.0
        
        createdOtherUnits3TextField.layer.borderColor = UIColor(red: 0.747, green: 0.749, blue: 0.760, alpha: 1.00).CGColor
        createdOtherUnits3TextField.layer.borderWidth = 1.0
        
        createdConstantNameTextField.tintColor = UIColor(red: 0.965 , green: 0.333, blue: 0.333, alpha: 1.0)
        createdConstantSymbolTextField.tintColor = UIColor(red: 0.965 , green: 0.333, blue: 0.333, alpha: 1.0)
        createdConstantValueTextField.tintColor = UIColor(red: 0.965 , green: 0.333, blue: 0.333, alpha: 1.0)
        createdOtherUnits1TextField.tintColor = UIColor(red: 0.965 , green: 0.333, blue: 0.333, alpha: 1.0)
        createdOtherUnits2TextField.tintColor = UIColor(red: 0.965 , green: 0.333, blue: 0.333, alpha: 1.0)
        createdOtherUnits3TextField.tintColor = UIColor(red: 0.965 , green: 0.333, blue: 0.333, alpha: 1.0)
        
        
        
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        var check :UIImage = UIImage(named: "icon.png")!
        self.tabBarController?.navigationItem.title = "Create"
        
        var rightButton: UIBarButtonItem = UIBarButtonItem( image: check, style:UIBarButtonItemStyle.Bordered, target: self, action: "addConstant")
        self.tabBarController?.navigationItem.rightBarButtonItem = rightButton
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func addConstant() {
        
        if  (createdConstantNameTextField.text == "" &&
            createdConstantValueTextField.text == "" &&
            createdConstantSymbolTextField.text == "" &&
            createdOtherUnits1TextField.text == "" &&
            createdOtherUnits2TextField.text == "" &&
            createdOtherUnits3TextField.text == ""){
                
                
                displayAlert("Fields are empty", error: "Please enter constant information")
            
        }
        
        else{
                var array : [String] = [createdConstantNameTextField.text,createdConstantSymbolTextField.text,createdConstantValueTextField.text, createdOtherUnits1TextField.text, createdOtherUnits2TextField.text, createdOtherUnits3TextField.text]
                
                createdConstants.append(array)
                setConstants.append(array)
                createdConstantList.append(array[0])
        
                println(createdConstantNameTextField.text)
        
                let fixedConstants = setConstants
                let fixedCreated = createdConstants
                NSUserDefaults.standardUserDefaults().setObject(fixedConstants, forKey: "createdConstants")
                NSUserDefaults.standardUserDefaults().setObject(fixedCreated, forKey: "fixedCreated")
                NSUserDefaults.standardUserDefaults().setObject(fixedConstants, forKey: "temp")
                NSUserDefaults.standardUserDefaults().synchronize()
                self.view.endEditing(true)
                
                var storedCreated: AnyObject? = NSUserDefaults.standardUserDefaults().objectForKey("fixedCreated")
                
                println(storedCreated)
                
                var storedValue: AnyObject? = NSUserDefaults.standardUserDefaults().objectForKey("createdConstants")
                
                createdConstantNameTextField.text = nil
                createdConstantValueTextField.text = nil
                createdConstantSymbolTextField.text = nil
                createdOtherUnits1TextField.text = nil
                createdOtherUnits2TextField.text = nil
                createdOtherUnits3TextField.text = nil
            
            //performSegueWithIdentifier("CreatedSegue", sender: self)
                
        }
        
        
        
        
        
        
        
        

    }
       func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func displayAlert(title:String, error:String) {
        
        var alert = UIAlertController(title: title, message: error, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { action in
            
            self.dismissViewControllerAnimated(true, completion: nil)
            
        }))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    

    
}

