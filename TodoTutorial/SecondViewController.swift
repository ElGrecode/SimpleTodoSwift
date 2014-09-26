//
//  SecondViewController.swift
//  TodoTutorial
//
//  Created by Adam Schuld on 9/26/14.
//  Copyright (c) 2014 Adam Schuld. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var taskField: UITextField!
    @IBOutlet weak var descField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Actions
    @IBAction func btnAddTask(sender: UIButton) {
        // Removes the keyboard
        self.view.endEditing(true)
        
        // Checking that the button was clicked and we are getting information
        println("Add Task Button Clicked")
        taskMGR.addTask(taskField.text, desc: descField.text)
        println(taskMGR.tasks.last?.name)
        println(taskMGR.tasks.last?.desc)
        
        // Empty out the text boxes
        taskField.text = ""
        descField.text = ""
        
        // Once the task has been added, jump the user back the first view
        self.tabBarController?.selectedIndex = 0;
        
    }
    
    
    // Touch functionality
    // This will override the touch functions and will force any editing event to end
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    // UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // The first responder in this instance will be the keyboard, so when return is hit, keyboard should go away
        textField.resignFirstResponder()
        return true
    }


}

