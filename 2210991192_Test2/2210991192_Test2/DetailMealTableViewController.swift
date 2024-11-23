//
//  DetailMealTableViewController.swift
//  2210991192_Test2
//
//  Created by Aditya Gupta on 11/23/24.
//

import UIKit

class DetailMealTableViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    var meal : Food?
    
    @IBOutlet weak var mealImage: UIImageView!
    
    @IBOutlet weak var recipieName: UITextField!
    
    
    @IBOutlet weak var ingredients: UITextField!
    
    
    @IBOutlet weak var instructions: UITextField!
    
    @IBOutlet weak var category: UITextField!
    
    
    @IBOutlet weak var nutritionInformation: UITextField!
    
    
    required init?(coder: NSCoder, data: Food) {
        self.meal = data
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()

    }
    
    func update(){
        
        guard let meal else { return }
        
        recipieName.text = meal.name
        ingredients.text = meal.ingredients
        instructions.text = meal.instructions
//        category.text = meal.category
        nutritionInformation.text = meal.nutrition
        mealImage.image = meal.image
        
    }
    
    
    @IBAction func updatedFieldValue(_ sender: UITextField) {
        update()
    }
    

    @IBAction func uploadImageButtonTapped(_ sender: UIButton) {
        
        let imagePicker = UIImagePickerController()
        
        imagePicker.delegate = self
        
        let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: {
                action in
                print("User has chosen Camera")
                imagePicker.sourceType = .camera
                self.present(imagePicker, animated: true)
                
            })
            
            alertController.addAction(cameraAction)
        }
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default, handler: {
                action in
                print("Photo Library Chosen")
                imagePicker.sourceType = .photoLibrary
                self.present(imagePicker, animated: true)
                
            })
            
            alertController.addAction(photoLibraryAction)
        }
        
        alertController.addAction(cancelAction)
        
        
        
        present(alertController, animated: true)
        
        
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let selectedImage = info[.originalImage] as? UIImage else {return}
        
        mealImage.image = selectedImage
        
        dismiss(animated: true)
    }
    
    @IBAction func shareButtonTapped(sender: UIButton){

        let activityController = UIActivityViewController(activityItems: [mealImage!], applicationActivities: nil)
        
        present(activityController, animated: true, completion: nil)
    }
    
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
                
    }
    
}
