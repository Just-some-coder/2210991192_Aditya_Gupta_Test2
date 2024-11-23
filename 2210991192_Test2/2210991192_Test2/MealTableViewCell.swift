//
//  MealTableViewCell.swift
//  2210991192_Test2
//
//  Created by Aditya Gupta on 11/23/24.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var mealImage: UIImageView!
    
    @IBOutlet weak var mealCalorieCount: UILabel!
    
    @IBOutlet weak var mealPrepTime: UILabel!
    
    @IBOutlet weak var recipieName: UILabel!
    
    func update(meal: Food){
        mealImage.image = meal.image
        mealCalorieCount.text = "Calories: \(meal.calorieCount)"
        mealPrepTime.text = "Prep Time: \(meal.prepTime)"
        recipieName.text = meal.name
    }
}
