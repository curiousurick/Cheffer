//
//  MealsViewController.swift
//  Cheffer
//
//  Created by George Urick on 1/24/15.
//  Copyright (c) 2015 ChefferCo. All rights reserved.
//

import UIKit
import Parse

class MealsViewController: UITableViewController, UITableViewDelegate {
    
    var meals:[Meal] = []
   
    
    @IBAction func PostButtonClicked(sender: AnyObject) {
    }
    

    func loadMeals() {
        
        var query = PFQuery(className:"Meals3")
        // query.whereKey("cuisine", equalTo:"Indian")
        query.includeKey("chef")
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]!, error: NSError!) -> Void in
            if error == nil {
                // The find succeeded.
                NSLog("Successfully retrieved \(objects.count) meals.")
                // Do something with the found objects
                
                //self.meals = objects
                
                for object in objects {
                    var name = object["name"] as String
                    var cuisine = object["cuisine"] as String
                    var chefObject = object["chef"] as PFObject
                    
                    var readyTime = object["readyTime"] as NSDate
                    var pickupTime = object["pickupTime"] as NSDate
                    var orderByTime = object["orderByTime"] as NSDate
                    
                    var price = object["price"] as NSNumber
                    var availableMeals = object["availableMeals"] as Int
                    
                    var firstName = chefObject["firstName"] as String
                    var lastName = chefObject["lastName"] as String
                    var firstLine = chefObject["firstLine"] as String
                    var secondLine = chefObject["secondLine"] as String
                    var city = chefObject["city"] as String
                    var state = chefObject["state"] as String
                    var zip = chefObject["zip"] as Int
                    var phoneNumber = chefObject["phoneNumber"] as Int
                    var chef = Chef(firstName: firstName, lastName: lastName, firstLine: firstLine, secondLine: secondLine, city: city, state: state, zip: zip, phoneNumber: phoneNumber)
                    
                    var meal = Meal(cuisine: cuisine, name: name, chef: chef, readyTime: readyTime, pickupTime: pickupTime, orderByTime: orderByTime, price: price, availableMeals: availableMeals)
                    self.meals.append(meal)
                    
                    NSLog("%@", object.objectId)
                }
                self.tableView.reloadData()
            } else {
                // Log details of the failure
                NSLog("Error: %@ %@", error, error.userInfo!)
            }
    }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor(red: 242/255, green: 121/255, blue: 129/255, alpha: 1)]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        loadMeals()
        /*
        var query = PFQuery(className:"Meals3")
       // query.whereKey("cuisine", equalTo:"Indian")
        query.includeKey("chef")
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]!, error: NSError!) -> Void in
            if error == nil {
                // The find succeeded.
                NSLog("Successfully retrieved \(objects.count) meals.")
                // Do something with the found objects
                
                //self.meals = objects
                
                for object in objects {
                    var name = object["name"] as String
                    var cuisine = object["cuisine"] as String
                    var chefObject = object["chef"] as PFObject
                    
                    var readyTime = object["readyTime"] as NSDate
                    var pickupTime = object["pickupTime"] as NSDate
                    var orderByTime = object["orderByTime"] as NSDate
                    
                    var price = object["price"] as NSNumber
                    var availableMeals = object["availableMeals"] as Int
                    
                    var firstName = chefObject["firstName"] as String
                    var lastName = chefObject["lastName"] as String
                    var firstLine = chefObject["firstLine"] as String
                    var secondLine = chefObject["secondLine"] as String
                    var city = chefObject["city"] as String
                    var state = chefObject["state"] as String
                    var zip = chefObject["zip"] as Int
                    var phoneNumber = chefObject["phoneNumber"] as Int
                    var chef = Chef(firstName: firstName, lastName: lastName, firstLine: firstLine, secondLine: secondLine, city: city, state: state, zip: zip, phoneNumber: phoneNumber)
                    
                    var meal = Meal(cuisine: cuisine, name: name, chef: chef, readyTime: readyTime, pickupTime: pickupTime, orderByTime: orderByTime, price: price, availableMeals: availableMeals)
                    self.meals.append(meal)
                
                    NSLog("%@", object.objectId)
                }
                self.tableView.reloadData()
            } else {
                // Log details of the failure
                NSLog("Error: %@ %@", error, error.userInfo!)
            }
        } */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.meals.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("meal", forIndexPath: indexPath) as MealViewCell
        var meal = self.meals[indexPath.row]
        
        

        let thumbImage = UIImage(named: "food.jpg")
        cell.label!.text = meal.name
        cell.thumb!.image = thumbImage
        cell.subtitle!.text = meal.cuisine
        
       // cell.thumbnailImageView.image = UIImage(thumb)

        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */
    
    @IBAction func unwindToSegue (segue : UIStoryboardSegue) {}

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //performSegueWithIdentifier("Show detail", sender: self)
    }
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.destinationViewController is MealDetailViewController) {
        var mealVC = segue.destinationViewController as MealDetailViewController
        var indexPath = self.tableView.indexPathForSelectedRow()
        var row = indexPath!.row
        mealVC.setMeal(self.meals[row])
        }
        else if(segue.destinationViewController is PostMyMealViewController) {
            
        }
    }


}
