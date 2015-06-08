//
//  AddEventController.swift
//  Correlation
//
//  Created by Robert Fryman on 6/5/15.
//  Copyright (c) 2015 Centresource. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController {
    @IBOutlet weak var nameOfEventTextField: UITextField!
    @IBOutlet weak var timeSelector: UIDatePicker!

    @IBOutlet weak var mondayButton: UIButton!
    @IBOutlet weak var tuesdayButton: UIButton!
    @IBOutlet weak var wednesdayButton: UIButton!
    @IBOutlet weak var thursdayButton: UIButton!
    @IBOutlet weak var fridayButton: UIButton!
    @IBOutlet weak var saturdayButton: UIButton!
    @IBOutlet weak var sundayButton: UIButton!
    
    @IBAction func weekdayButtonPressed(sender: UIButton) {
        nameOfEventTextField.resignFirstResponder()
    }
    
    @IBAction func mondayButtonPressed(sender: UIButton) {
        mondayButton.selected = !mondayButton.selected
    }
    @IBAction func tuesdayButtonPressed(sender: UIButton) {
        tuesdayButton.selected = !tuesdayButton.selected
    }
    @IBAction func wednesdayButton(sender: UIButton) {
        wednesdayButton.selected = !wednesdayButton.selected
    }
    @IBAction func thursdayButtonPressed(sender: UIButton) {
        thursdayButton.selected = !thursdayButton.selected
    }
    @IBAction func fridayButtonPressed(sender: UIButton) {
        fridayButton.selected = !fridayButton.selected
    }
    @IBAction func saturdayButtonPressed(sender: UIButton) {
        saturdayButton.selected = !saturdayButton.selected
    }
    @IBAction func sundayButtonPressed(sender: UIButton) {
        sundayButton.selected = !sundayButton.selected
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}