//
//  ViewController.swift
//  Postcard
//
//  Created by Derick Warshaw on 7/18/15.
//  Copyright (c) 2015 Derick Warshaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        // make the label visible
        messageLabel.hidden = false
        
        // set the label to the string of text in the message box
        messageLabel.text = enterMessageTextField.text
        
        // set message label color equal to an instance of UIColor
        messageLabel.textColor = UIColor.redColor()
        
        // clear the message field
        enterMessageTextField.text = ""
        
        // make the keyboard go away
        enterMessageTextField.resignFirstResponder()
        
        // use function setTitle() and pass in string to set the title of button. Also pass in parameter for the control state to normal - allows us to update mail buttons title every time we push
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

