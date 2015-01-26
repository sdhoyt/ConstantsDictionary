//
//  ConstantDetailViewController.swift
//  Constants
//
//  Created by Sean Hoyt on 11/22/14.
//  Copyright (c) 2014 Sean Hoyt. All rights reserved.
//

import Foundation
import UIKit
class ConstantDetailViewController: UIViewController  {
    
    @IBOutlet weak var constantNameLabel: UILabel!
    @IBOutlet weak var constantValueLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var favoritedLabel: UILabel!
    @IBOutlet weak var constantSymbolLabel: UILabel!
    @IBOutlet weak var otherUnits1Label: UILabel!
    @IBOutlet weak var otherUnits2Label: UILabel!
    @IBOutlet weak var otherUnits3Label: UILabel!
    @IBOutlet weak var otherUnitsLabel: UILabel!
    
    var constant = ""
    var constantValue = ""
    var constantSymbol = ""
    var otherUnits1 = ""
    var otherUnits2 = ""
    var otherUnits3 = ""
    var favoritesMove : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.favoriteButton.layer.cornerRadius = 5.0
        self.favoritedLabel.layer.cornerRadius = 5.0
        
        if contains(favoriteList, self.constant){
            
            favoriteButton.hidden = true
            
        }
        
        else{
            
            favoritedLabel.hidden = true
            
            }
        
        self.constantNameLabel.text = self.constant
        self.constantValueLabel.text = self.constantValue
        self.constantSymbolLabel.text = self.constantSymbol
        self.otherUnits1Label.text = self.otherUnits1
        self.otherUnits2Label.text = self.otherUnits2
        self.otherUnits3Label.text = self.otherUnits3
        
        if self.otherUnits1 == "" && self.otherUnits2 == "" && self.otherUnits3 == ""{
            
            self.otherUnitsLabel.text = ""
            
        }

        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
    }
    
     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func favoriteConstant(sender: AnyObject) {
        
            favorites.append(self.favoritesMove)
            favoriteList.append(self.favoritesMove[0])
            let fixedFavorites = favorites
            NSUserDefaults.standardUserDefaults().setObject(fixedFavorites, forKey: "favorites")
            NSUserDefaults.standardUserDefaults().synchronize()
            
            var storedFavorites: AnyObject? = NSUserDefaults.standardUserDefaults().objectForKey("favorites")
        
            favoriteButton.hidden = true
            favoritedLabel.hidden = false
        
        
        
    }
    
    
}