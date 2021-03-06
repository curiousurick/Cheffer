//
//  MealViewCell.swift
//  Cheffer
//
//  Created by George Urick on 1/24/15.
//  Copyright (c) 2015 ChefferCo. All rights reserved.
//

import UIKit

class MealViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet var thumb : UIImageView!
    @IBOutlet weak var subtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setMeal(meal: Meal) {
       // NSLog("Call stack \(NSThread.callStackSymbols())")
        label.text = ""
        label.text = meal.name
            }

}
