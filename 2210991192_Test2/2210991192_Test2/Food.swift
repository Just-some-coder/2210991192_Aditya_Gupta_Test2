//
//  Food.swift
//  2210991192_Test2
//
//  Created by Aditya Gupta on 11/23/24.
//
import UIKit
import Foundation

struct Food {
    var name : String
    var instructions : String
    var category : category
    var nutrition : String
    var image : UIImage?
    var calorieCount : Int
    var prepTime : Int
    var ingredients : String
}



enum category : String{
    case vegetarian,glutenFree,nonVegetarian
}

struct Meal {
    var name : String
    var meals : [Food]
}



var breakfast = Meal(name: "Breakfast", meals: [Food(name: "French Fries", instructions: "Peel Potatoes, Cut Potatoes, Fry, serve", category: .vegetarian, nutrition: "idk", image: UIImage(named: "frenchFries"), calorieCount: 10, prepTime: 60, ingredients: "potatoes, salt, pepper")])


var lunch = Meal(name: "Lunch", meals: [Food(name: "Sandwich", instructions: "Peel Potatoes, Cut Potatoes, Fry, serve", category: .vegetarian, nutrition: "idk", image: UIImage(named:"sandwich"), calorieCount: 20, prepTime: 20, ingredients: "bread, cheese, lettuce, tomato, onion")])


var dinner = Meal(name: "Dinner", meals: [Food(name: "Chicken", instructions: "Peel Potatoes, Cut Potatoes, Fry, serve", category: .vegetarian, nutrition: "idk", image: UIImage(named: "chicken"), calorieCount: 300, prepTime: 200, ingredients: "chicken")])


var meals = [breakfast, lunch, dinner]
    

