//
//  Registration VC.swift
//  HotelManzana
//
//  Created by Gabriel Drai on 13/12/2017.
//  Copyright © 2017 ronny abraham. All rights reserved.
//

import UIKit

class RegistrationVC: UITableViewController {

    @IBOutlet weak var firstNameTextField: UITextField!

    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBAction func doneBarButtonItem(_ sender: UIBarButtonItem) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        
        print("First Name: \(firstName)")
        print("Last Name: \(lastName)")
        print("Email: \(email)")
    
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    

   
}
