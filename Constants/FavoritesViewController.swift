//
//  FavoritesViewController.swift
//  Constants
//
//  Created by Sean Hoyt on 11/22/14.
//  Copyright (c) 2014 Sean Hoyt. All rights reserved.
//

import Foundation
import UIKit

var favorites:[[String]] = []
var favoriteList : [String] = []

class FavoritesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var constant: [String] = []
    
    @IBOutlet weak var favoritesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.favoritesTableView.delegate = self
        self.favoritesTableView.dataSource = self
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favorites.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        favorites=sorted(favorites,inOrder)
        cell.textLabel!.text = favorites[indexPath.row][0]
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel!.font = UIFont(name: "ProximaNovaSoft-Bold", size: 16)
        cell.textLabel!.textColor = UIColor(red: 0.965 , green: 0.333, blue: 0.333, alpha: 1.0)
        
        let selectedView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: cell.frame.size.width, height: cell.frame.size.height))
        selectedView.backgroundColor = UIColor(red: 0.965, green: 0.333, blue: 0.333, alpha: 0.3)
        cell.selectedBackgroundView = selectedView
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.constant = favorites[indexPath.row]
        performSegueWithIdentifier("favoriteToDetailSegue", sender: self)
        self.favoritesTableView.deselectRowAtIndexPath(indexPath, animated: true)


    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as ConstantDetailViewController
        
        detailViewController.constant = self.constant[0]
        detailViewController.constantSymbol = self.constant[1]
        detailViewController.constantValue = self.constant[2]
        detailViewController.otherUnits1 = self.constant[3]
        detailViewController.otherUnits2 = self.constant[4]
        detailViewController.otherUnits3 = self.constant[5]
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        //var userDefaults: NSUserDefaults = NSUserDefaults(suiteName: "group.Sean-Hoyt.EmergencyContacts")!
        if var storedFavorites: AnyObject = NSUserDefaults.standardUserDefaults().objectForKey("favorites"){
            
            favorites = []
            favoriteList = []
            
            for var i = 0; i < storedFavorites.count; ++i {
                
                favorites.append(storedFavorites[i] as [String])
                favoriteList.append(storedFavorites[i][0] as String)
            }
            
        }
        
        favoritesTableView.reloadData()
    }
    
    func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if (editingStyle == UITableViewCellEditingStyle.Delete){
            
            
            favorites.removeAtIndex(indexPath.row)
            favoriteList.removeAtIndex(indexPath.row)
            favoritesTableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            let fixedFavorites = favorites
            NSUserDefaults.standardUserDefaults().setObject(fixedFavorites, forKey: "favorites")
            NSUserDefaults.standardUserDefaults().synchronize()
            favoritesTableView.reloadData()
            
        }
        
    }
    
    func inOrder(s1: [String], s2: [String]) -> Bool {
        return s1[0].lowercaseString < s2[0].lowercaseString
    }


}
