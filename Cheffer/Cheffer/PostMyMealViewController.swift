//
//  PostMyMealViewController.swift
//  Cheffer
//
//  Created by George Urick on 1/24/15.
//  Copyright (c) 2015 ChefferCo. All rights reserved.
//

import UIKit

class PostMyMealViewController: UIViewController {
/*
    @IBOutlet var mealTitle: UIText!
    @IBOutlet var cuisineTitle: UIText!
    @IBOutlet var orderBy: UIText!
    @IBOutlet var readyTime: UIText!
    @IBOutlet var pickupTime: UIText!
    @IBOutlet var mealsLeft: UIText!
    @IBOutlet var credits: UIText!
    */
    @IBAction func PostMealClicked(sender: AnyObject) {
        /*
        var cuisine = cuisineTitle.text;
        var name = cuisineTitle.text;
        //var chef = cuitle.text;
        var readyTime = readyTime.text;
        var pickupTime = pickupTime.text;
    
        var orderByTime = orderByTime
        
        var meal: Meal(cuisine, name, chef, readyTime, pickupTime, orderByTime, price, availableMeals)
        */
        
        var alert = UIAlertController(title: "Thank You!", message: "We appreciate your contribution to the community!", preferredStyle: UIAlertControllerStyle.Alert)
        
        
        alert.addAction(UIAlertAction(title: "OK",
            style: UIAlertActionStyle.Default,
            handler: {(alert: UIAlertAction!) in
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
