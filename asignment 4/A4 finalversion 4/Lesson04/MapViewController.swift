//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITableViewDataSource, UITextFieldDelegate,  UITableViewDelegate{

    
    @IBOutlet weak var keyTextInput: UITextField!
    
    @IBOutlet weak var fieldTextInput: UITextField!
    
    @IBOutlet weak var arrayTable2: UITableView!
    
    var dictionaryForPopulation = [String:String]()
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if (textField === keyTextInput) {
           fieldTextInput.becomeFirstResponder()
        }else if (textField === fieldTextInput){
        
            dictionaryForPopulation[keyTextInput.text] = fieldTextInput.text
            arrayTable2.reloadData()
            keyTextInput.text = ""
            fieldTextInput.text = ""
            fieldTextInput.resignFirstResponder()
         }
    return true
    }

    func tableView(arrayTable2: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dictionaryForPopulation.count
        
    }

    
    func tableView(arrayTable2: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell = arrayTable2.dequeueReusableCellWithIdentifier("mycell2") as UITableViewCell
        
        let person = dictionaryForPopulation.keys.array[indexPath.row]
        
        cell.textLabel!.text = person
        cell.detailTextLabel!.text = dictionaryForPopulation[person]
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.whiteColor()
            cell.textLabel!.textColor = UIColor.blackColor()
            cell.detailTextLabel!.textColor = UIColor.blackColor()
        
        }else{
            cell.backgroundColor = UIColor.grayColor()
            cell.textLabel!.textColor = UIColor.blackColor()
            cell.detailTextLabel!.textColor = UIColor.blackColor()
          }
        

    return cell
        
    }

    func colorchange(notification : NSNotification) {
       keyTextInput.backgroundColor = UIColor.blueColor()
       fieldTextInput.backgroundColor = UIColor.blueColor()
    }

    func colorchange2(notification : NSNotification) {
        keyTextInput.backgroundColor = UIColor.redColor()
        fieldTextInput.backgroundColor = UIColor.redColor()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.keyTextInput.delegate = self
        self.fieldTextInput.delegate = self
       
       var notify = NSNotificationCenter.defaultCenter()
        
       notify.addObserver(self, selector: Selector("colorchange:"), name: UIKeyboardWillShowNotification, object: nil)
        
       notify.addObserver(self, selector: Selector("colorchange2:"), name: UIKeyboardWillHideNotification, object: nil)
        
        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
    }
}
