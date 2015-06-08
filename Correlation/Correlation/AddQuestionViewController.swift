//
//  AddQuestionViewController.swift
//  Correlation
//
//  Created by Robert Fryman on 6/5/15.
//  Copyright (c) 2015 Centresource. All rights reserved.
//

import UIKit

class AddQuestionViewController: UIViewController,
                                 UIPickerViewDataSource,
                                 UIPickerViewDelegate {
    
    @IBOutlet weak var whatTypeOfQuestionSegmentedController: UISegmentedControl!
    @IBOutlet weak var questionPickerView: UIPickerView!
    @IBOutlet weak var questionTextField: UITextField!
    
    let myDataArray = ["How are you feeling?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionPickerView!.dataSource = self
        questionPickerView!.delegate = self
        
        if questionPickerView.numberOfComponents == 0 {
            whatTypeOfQuestionSegmentedController.removeSegmentAtIndex(1, animated: false)
            whatTypeOfQuestionSegmentedController.selectedSegmentIndex = 0
            questionTextField.hidden = false
        }
        else {
        whatTypeOfQuestionSegmentedController.selectedSegmentIndex = -1
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func whatTypeQuestionSegmentedControllerChanged(sender: UISegmentedControl) {
        if whatTypeOfQuestionSegmentedController.selectedSegmentIndex == 0 {
            questionTextField.hidden = false
            questionPickerView.hidden = true
        }
        else {
            questionTextField.hidden = true
            questionPickerView.hidden = false
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        if pickerView == questionPickerView {
            return 1
        }
        return 0
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == questionPickerView {
            return myDataArray.count
        }
        return 0
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if pickerView == questionPickerView {
            return myDataArray[row]
    }
        return myDataArray[row]
    }
}
