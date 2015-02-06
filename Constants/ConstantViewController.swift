//
//  ConstantViewController.swift
//  Constants
//
//  Created by Sean Hoyt on 11/22/14.
//  Copyright (c) 2014 Sean Hoyt. All rights reserved.
//

import Foundation
import UIKit

//Pre set constant details
var speedOfLight = ["Speed of Light","c","2.997 92 E8 m / s","1.08 E9 km/h","186 000 mi/s","671 E8 mi/hr"]
var planckConstant = ["Planck's Constant", "h", "6.626 075 E-34 J·s","4.135 667 E-15 eV·s","",""]
var plankHbar = ["Planck's Constant - Hbar", "hbar","1.05457 E-34 J·s","6.582 12 E-16 eV·s","",""]
var gravitational = ["Gravitational Constant","G", "6.67384 E-11·m3·kg-1·s-2","","",""]
var boltzmann = ["Boltzmann Constant", "k", "1.380 65 E-23 m2·kg·s-2·K-1", "1.380 65 E-23 J/K" ,"8.612 332 E-5 eV·K-1","1.380 65 E-16 erg·K-1"]
var molarGas = ["Molar Gas Constant","R","8.314 46 m2·kg·s-2·K-1·mol-1","8.314 46 J·K-1·mol-1","5.189 E19 eV·K-1·mol-1","",""]
var avagadrosNumber = ["Avagadro's Number", "N", "6.0221413 E23","","",""]
var accelerationDueToGravity = ["Acceleration of Gravity","g","9.806 65 m/s2","32.17 ft/s2","386.1 in/s2","35.3 km/h/s"]
var electronCharge = ["Electron Charge", "-e", "-1.602 18 E-19 C","-4.803 205 E-10 Fr","",""]
var protonCharge = ["Proton Charge", "e", "1.602 18 E-19 C","4.803 205 E-10 Fr","",""]
var permeabilityFreeSpace = ["Permeability of Free Space","μ0","4π Ε-7 Ν·Α-2","1.256 64 E-6 Ν·A-2","1.256 64 E-6 m·kg·s-2·A-2","1.257 μH/m"]
var permittivityFreeSpace = ["Permittivity of Free Space","ε0","8.854 19 E-12 m-3·kg-1·s4·A2","8.854 E-12 F/m","",""]
var coulombConstant = ["Coulomb Constant", "ke", "8.987551 E9 N·m2/C2","8.988 E9 m/F","",""]
var faradayConstant = ["Faraday Constant", "F","96 485.336 s·A / mol","","",""]
var electronMass = ["Electron Mass","me","9.109 38 E-31 kg","0.510 9989 MeV/c2","510.9989 keV/c2","5.485 80 E-4 u"]
var protonMass = ["Proton Mass","mp","1.672 62 E-27 kg","938.272 03 MeV/c2","0.938 272 GeV/c2","1.007 83 u"]
var neutronMass = ["Neutron Mass","mn","1.674 93 E−27 kg","939.565 36 MeV/c2","0.939 565 GeV/c2","1.008 66 u"]
var stefanBoltzmann = ["Stefan-Boltzmann Constant", "σ", "5.670 37 E−8 W·m−2·K−4","","",""]
var rydbergConstant = ["Rydberg Constant","Rʜ","1.096 78 E7 m-1","","",""]
var bohrMagneton = ["Bohr Magneton","μʙ","9.274 01 E−24 J·T-1","9.274 01 E-24 A·m2","5.788 38 E−5 eV·T-1","9.274 01 E-21 erg/G"]
var bohrRadius = ["Bohr Radius","a","5.29177 E-11 m","52.917 7211 pm","0.052 917 7211 nm","0.529 177 211 angstroms"]
var standardAtm = ["Standard Atmosphere","","101.325 Pa","1 atm","760 torr","2116 lbs/ft2"]
var massEarth = ["Earth Mass","M⊕","5.972 E24 kg", "","",""]
var radiusEarth = ["Earth Radius", "R⊕","6.378 14 E6 m","6 378 km","3,959 mi",""]
var fineStructure = ["Fine Structure Constant","α", "1/137.036","7.297 E-3","",""]
var bindingEnergy = ["Binding Energy","-E1","13.6057 eV","","",""]
var massSun = ["Solar Mass", "M⊕","1.9891 E30 kg","1 M⊙","",""]
var irradianceSun = ["Solar Irradiance","S","1.365 E3 W·m-2","","",""]
var luminositySun = ["Solar Luminosity","L⊙","3.839 E26 W","1 L⊙","",""]
var radiusSun = ["Solar Radius","R⊙","6.955 08 E8 m","1 R⊙","",""]
var effectiveTempSun = ["Solar Effective Temperature","T⊙","57772 K", "", "", ""]
var astronomicalUnit = ["Astronomical Unit","AU","1.495 9787 E11 m","1 AU", "",""]
var lightYear = ["Light Year","ly","9.460 730 E15 m","1 ly","",""]
var parsec = ["Parsec","pc","2.0626 48 E8 AU","3.085 678 E16 m","3.261 564 ly",""]
var plankTimesLight = ["Planck's Constant ∙ Speed of Light", "hc","1.239 84 E3 eV·nm","1240 eV·nm","",""]
var atomicMassUnit = ["Atomic Mass Unit","u","1.660 539 E-27 kg","1 u","",""]
var hydrogenMass = ["Hydrogen Mass","mʜ","1.673 532 E-27 kg","1.007 825 u","",""]


// Pre set constants arrays
var setConstants : [[String]] = [speedOfLight,planckConstant,plankHbar,gravitational,boltzmann,molarGas,avagadrosNumber,accelerationDueToGravity,electronCharge,permeabilityFreeSpace,permittivityFreeSpace,coulombConstant,faradayConstant,electronMass,protonMass,neutronMass,stefanBoltzmann,rydbergConstant,bohrMagneton,bohrRadius,standardAtm,massEarth,radiusEarth,fineStructure,bindingEnergy,massSun,irradianceSun,luminositySun,radiusSun,effectiveTempSun,astronomicalUnit,lightYear,parsec,plankTimesLight,atomicMassUnit,hydrogenMass]

class ConstantViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchDisplayDelegate {

    
    
    
    var favoritesMove : [String] = []
    var constant: [String] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        
        if var storedFavorites: AnyObject = NSUserDefaults.standardUserDefaults().objectForKey("favorites"){
            
            favorites = []
            favoriteList = []
            for var i = 0; i < storedFavorites.count; ++i {
                
                favorites.append(storedFavorites[i] as [String])
                favoriteList.append(storedFavorites[i][0] as String)
            }
        }
        
        self.restoreCreated()
            
        tableView.reloadData()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return setConstants.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        //Alphabetical
        setConstants = sorted(setConstants, inOrder)
        
        //Table Background Color
        cell.backgroundColor = UIColor.clearColor()
        
        //What Cells will display
        cell.textLabel!.text = setConstants[indexPath.row][0]
        
        // Text Properties
        cell.textLabel!.font = UIFont(name: "ProximaNovaSoft-Bold", size: 16)
        cell.textLabel!.textColor = UIColor(red: 0.965 , green: 0.333, blue: 0.333, alpha: 1.0)
        
        // Highlighted Color
        let selectedView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: cell.frame.size.width, height: cell.frame.size.height))
        selectedView.backgroundColor = UIColor(red: 0.965, green: 0.333, blue: 0.333, alpha: 0.3)
        cell.selectedBackgroundView = selectedView
        
        return cell
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.constant = setConstants[indexPath.row]
        self.favoritesMove = setConstants[indexPath.row]
        performSegueWithIdentifier("constantToDetailSegue", sender: self)
        self.tableView.deselectRowAtIndexPath(indexPath, animated: true)

        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var detailViewController = segue.destinationViewController as ConstantDetailViewController
        
        detailViewController.constant = self.constant[0]
        detailViewController.constantSymbol = self.constant[1]
        detailViewController.constantValue = self.constant[2]
        detailViewController.otherUnits1 = self.constant[3]
        detailViewController.otherUnits2 = self.constant[4]
        detailViewController.otherUnits3 = self.constant[5]
        detailViewController.favoritesMove = self.favoritesMove
        
    }
    
    
    
    
        func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [AnyObject]?  {
            // 1
            var deleteAction: UITableViewRowAction = UITableViewRowAction()
            
            
            var favoriteAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Favorite" , handler: { (action:UITableViewRowAction!, indexPath:NSIndexPath!) -> Void in
                // 2
                
                
                if !contains(favoriteList, setConstants[indexPath.row][0]){
                favoriteList.append(setConstants[indexPath.row][0])
                favorites.append(setConstants[indexPath.row])
                let fixedFavorites = favorites
                NSUserDefaults.standardUserDefaults().setObject(fixedFavorites, forKey: "favorites")
                NSUserDefaults.standardUserDefaults().synchronize()
                
                var storedFavorites: AnyObject? = NSUserDefaults.standardUserDefaults().objectForKey("favorites")
                
                self.tableView.reloadData()
                    
                    
                }
                
                
              
            })
            
            favoriteAction.backgroundColor = UIColor(red: 0.163, green: 0.748, blue: 0.106, alpha: 1.00)
            
            
            
            if contains(createdConstantList, setConstants[indexPath.row][0]){
            
            deleteAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Delete", handler: { (action: UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in
                
                self.restoreCreated()
                
                if contains(createdConstantList, setConstants[indexPath.row][0]){
                    
                    
                    
                    
                    setConstants.removeAtIndex(indexPath.row)[0]
                   
                    let fixedConstants = setConstants
                    let fixedCreated = createdConstants
                    NSUserDefaults.standardUserDefaults().setObject(fixedConstants, forKey: "createdConstants")
                    NSUserDefaults.standardUserDefaults().setObject(fixedCreated, forKey: "fixedCreated")
                    NSUserDefaults.standardUserDefaults().synchronize()
                    self.tableView.reloadData()
                    
                    
                    
               }
                
                
            })
            
            println(_stdlib_getTypeName(deleteAction))
            }
            
            return [favoriteAction, deleteAction]
        }
    
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        
        
        }
    
    override func viewWillAppear(animated: Bool) {
    
        self.tabBarController?.navigationItem.title = "Constants Dictionary"
       self.tabBarController?.navigationItem.rightBarButtonItem = nil
        
        if var storedConstants: AnyObject = NSUserDefaults.standardUserDefaults().objectForKey("temp"){
            
            createdConstants = []
            setConstants = []
            
            NSUserDefaults.standardUserDefaults().removeObjectForKey("temp")
            
            for var i = 0; i < storedConstants.count; ++i {
                
                setConstants.append(storedConstants[i] as [String])
            }
            
            tableView.reloadData()
        }
        
        
    }
    
    //Alphabetical order regardless of capitalization
    func inOrder(s1: [String], s2: [String]) -> Bool {
        return s1[0].lowercaseString < s2[0].lowercaseString
    }
    
    //re-populate the stored constants into the created constants arrays
    func restoreCreated(){
        
        if var storedCreated: AnyObject = NSUserDefaults.standardUserDefaults().objectForKey("fixedCreated"){
            createdConstantList = []
            createdConstants = []
            for var i = 0; i < storedCreated.count; ++i {
                
                createdConstants.append(storedCreated[i] as [String])
                createdConstantList.append(storedCreated[i][0] as String)
            }
            
        }

    }
    
    
    
    @IBAction func generatePDF(sender: AnyObject) {
        
        let pageSize:CGSize = CGSizeMake (850, 1100)
        let fileName: NSString = "xp.pdf"
        let path:NSArray = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        let documentDirectory: AnyObject = path.objectAtIndex(0)
        let pdfPathWithFileName = documentDirectory.stringByAppendingPathComponent(fileName)
        
        generatePDFs(pdfPathWithFileName)
        
    }
    
    func generatePDFs(filePath: String) {
        UIGraphicsBeginPDFContextToFile(filePath, CGRectZero, nil)
        UIGraphicsBeginPDFPageWithInfo(CGRectMake(0, 0, 850, 1100), nil)
        drawBackground()
        UIGraphicsEndPDFContext()
        
        
        
        
    }
    
    func drawBackground () {
        
        let context:CGContextRef = UIGraphicsGetCurrentContext()
        let rect:CGRect = CGRectMake(0, 0, 850, 1100)
        CGContextSetFillColorWithColor(context, UIColor.greenColor().CGColor)
        CGContextFillRect(context, rect)
    }



   
    }
    
    
    

