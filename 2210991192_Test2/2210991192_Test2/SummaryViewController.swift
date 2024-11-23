//
//  SummaryViewController.swift
//  2210991192_Test2
//
//  Created by Aditya Gupta on 11/23/24.
//

import UIKit

class SummaryViewController: UIViewController {

    @IBOutlet weak var allMeals: UILabel!
    
    @IBOutlet weak var totalCalories: UILabel!
    
    @IBOutlet weak var allNutrition: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateAllData()
    }
    
    func updateAllData(){
        var everyMeal = "All Meals are \n"
        for i in meals {
            for j in i.meals {
                everyMeal += "\(j.name)\n"
            }
        }
        
        var allCalories = "Total Calories are \n"
        var count = 0
        for i in meals {
            for j in i.meals {
                count += j.calorieCount
            }
        }
        allCalories += "\(count)"
        
        var everyNutrition = "All Nutrition are \n"
        for i in meals {
            for j in i.meals {
                everyNutrition += "\(j.nutrition)\n"
            }
        }
        
        allMeals.text = everyMeal
        totalCalories.text = allCalories
        allNutrition.text = everyNutrition
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
