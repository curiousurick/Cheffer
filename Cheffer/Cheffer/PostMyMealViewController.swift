//
//  PostMyMealViewController.swift
//  Cheffer
//
//  Created by George Urick on 1/24/15.
//  Copyright (c) 2015 ChefferCo. All rights reserved.
//

import UIKit
import Parse

class PostMyMealViewController: UIViewController {

    @IBOutlet weak var mealTitleText: UITextField!
    @IBOutlet weak var cuisineText: UITextField!
    //@IBOutlet var orderByText: UIText!
    //@IBOutlet var readyTimeText: UIText!
    //@IBOutlet var pickupTimeText: UIText!
    //@IBOutlet var mealsLeft: UIText!
    //@IBOutlet var credits: UIText!

    @IBAction func PostMealClicked(sender: AnyObject) {
        
        
            var inputChef = Chef(firstName: "George", lastName: "Urick", firstLine: "1234 33rd Ave NE", secondLine: "Apt B415", city: "Seattle", state: "WA", zip: 98125, phoneNumber: 4257572278)
            var chef = PFObject(className: "Chef")
            chef["firstName"] = inputChef.firstName
            chef["lastName"] = inputChef.lastName
            chef["firstLine"] = inputChef.firstLine
            chef["secondLine"] = inputChef.secondLine
            chef["city"] = inputChef.city
            chef["state"] = inputChef.state
            chef["zip"] = inputChef.zip
            chef["phoneNumber"] = inputChef.phoneNumber
            
            
            var meal = PFObject(className: "Meals3")
            meal["cuisine"] = self.cuisineText.text
        
            meal["name"] =  self.mealTitleText.text
            
            meal["readyTime"] = NSDate()
            meal["pickupTime"] = NSDate()
            meal["orderByTime"] = NSDate()
            var price = 1.0
            
            meal["price"] = price
            var availableMeals = 3
            meal["availableMeals"] = availableMeals
            meal["chef"] = chef
            meal.save()

        
        var alert = UIAlertController(title: "Thank You!", message: "We appreciate your contribution to the community!", preferredStyle: UIAlertControllerStyle.Alert)
        
        
        alert.addAction(UIAlertAction(title: "OK",
            style: UIAlertActionStyle.Default,
            handler: {(alert: UIAlertAction!) in
                var mealsViewController = self.navigationController!.viewControllers[self.navigationController!.viewControllers.count - 2] as MealsViewController
                mealsViewController.loadMeals()
                self.navigationController?.popViewControllerAnimated(true)
                return
                
        }))
        
        self.presentViewController(alert, animated: true, completion: nil)

        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
}
