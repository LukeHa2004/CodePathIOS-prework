//
//  ViewController.swift
//  Bao Ha Introduction
//
//  Created by Bao on 17/01/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var majorTextField: UITextField!
    @IBOutlet weak var subjectSegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        let subject = subjectSegmentedControl.titleForSegment(at: subjectSegmentedControl.selectedSegmentIndex)
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        let introduction = "Hello CodePath, My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend at \(schoolNameTextField.text!) majoring in \(majorTextField.text!).I am currently in my \(year!) year and wanting to study about \(subject!) development. I own \(numberOfPetsLabel.text!) dogs and it is \(morePetsSwitch.isOn) that I want more pets."
       
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
   }
}

