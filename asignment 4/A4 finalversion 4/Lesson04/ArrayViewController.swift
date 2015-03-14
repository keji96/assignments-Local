//
//  ViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController, UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate  {

    @IBOutlet weak var arrayTable: UITableView!
    
    @IBOutlet weak var inputArrayTextBox: UITextField!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        arrayForPopulation.append(inputArrayTextBox.text)
        arrayTable.reloadData()
        inputArrayTextBox.text = ""
        return true
    }

    
    
//    @IBAction func buttonPressArrayPop(sender: AnyObject) {
//        
//        arrayForPopulation.append(inputArrayTextBox.text)
//        
//       arrayTable.reloadData()
//    
//    }
    
    
    var arrayForPopulation = [String]()
    func tableView(arrayTable: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayForPopulation.count
        
    }
    
    func tableView(arrayTable: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
    var cell = arrayTable.dequeueReusableCellWithIdentifier("mycell") as UITableViewCell
        
        cell.textLabel!.text = arrayForPopulation[arrayForPopulation.count - 1 - indexPath.row]
        
        
        return cell
        
    }

    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     self.inputArrayTextBox.delegate = self
        
        
        
        
        
        
        /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text view when the return key is pressed. Add the string that was entered into the text view into an array of strings (stored in this class).
        TODO two: Make this class a UITableViewDelegate and UITableViewDataSource that supply the above table view with cells. These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.
        
        */
    }
}

