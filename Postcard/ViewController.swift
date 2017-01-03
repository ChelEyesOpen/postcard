//
//  ViewController.swift
//  Postcard
//
//  Created by Michelle Edmundson - old on 2016-12-29.
//  Copyright © 2016 Michelle Edmundson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var fromLabel: UILabel!
    @IBOutlet weak var noteLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(_ sender: UIButton) {
        // Adding a comment here to test commit
        messageLabel.isHidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.darkGray
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", for: UIControlState.normal)
        
        nameLabel.isHidden = false
        nameLabel.textColor = UIColor.magenta
        nameLabel.text = enterNameTextField.text
        
        enterNameTextField.text = ""
        
        fromLabel.isHidden = false
        
        noteLabel.isHidden = false
    }
    

}

