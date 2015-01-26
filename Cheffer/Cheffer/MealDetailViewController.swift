//
//  MealDetailViewController.swift
//  Cheffer
//
//  Created by George Urick on 1/24/15.
//  Copyright (c) 2015 ChefferCo. All rights reserved.
//

import UIKit

class MealDetailViewController: UIViewController, UIAlertViewDelegate {

    var meal: Meal?
    
    @IBOutlet var mealTitle: UILabel!
    @IBOutlet var cuisineTitle: UILabel!
    @IBOutlet var orderBy: UILabel!
    @IBOutlet var readyTime: UILabel!
    @IBOutlet var pickupTime: UILabel!
    @IBOutlet var mealsLeft: UILabel!
    @IBOutlet var credits: UILabel!
    
    
    @IBAction func PurchaseButtonClicked(sender: AnyObject) {
        var alert = UIAlertController(title: "Thank You!", message: "We hope you'll enjoy this home cooked meal", preferredStyle: UIAlertControllerStyle.Alert)
        
       
        alert.addAction(UIAlertAction(title: "Okay",
            style: UIAlertActionStyle.Default,
            handler: {(alert: UIAlertAction!) in
               self.navigationController?.popViewControllerAnimated(true)
                return
            
                }))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        mealTitle.text = meal!.name
        cuisineTitle.text = "Cuisine: " + meal!.cuisine
        
        var date = self.meal!.orderByTime
        let formatter = NSDateFormatter()
        formatter.timeStyle = .ShortStyle
        var orderStr = formatter.stringFromDate(date)
        orderBy.text = "Order by " + orderStr
        readyTime.text = "Ready at " + formatter.stringFromDate(self.meal!.readyTime)
        pickupTime.text = "Pick up by " + formatter.stringFromDate(self.meal!.pickupTime)
        mealsLeft.text = "\(self.meal!.availableMeals) meals left"
        credits.text = "\(self.meal!.price) credits"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setMeal(meal: Meal) {
      self.meal = meal
    }
    

    
    // MARK: - Navigation
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
    }
*/
    

}
