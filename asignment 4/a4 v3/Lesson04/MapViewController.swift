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
    var dictionaryForPopulation = [String:String]()
    
   //var dictionaryForPopulation = ["john" : "vocals" , "ringo" : "drums", "paul" : "guitar", "george" : "bass"]
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
       dictionaryForPopulation["john"] = "singer"
        //keyTextInput.text = ""
        //fieldTextInput.text = ""
        return true
    }

    
    
    
    
    
    
    
    @IBOutlet weak var arrayTable2: UITableView!
    
    func tableView(arrayTable2: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dictionaryForPopulation.count
        
    }
    
    
    
    
    func tableView(arrayTable2: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell = arrayTable2.dequeueReusableCellWithIdentifier("mycell2") as UITableViewCell
        let person = dictionaryForPopulation.keys.array[indexPath.row]
        
        cell.textLabel!.text = person
        cell.detailTextLabel!.text = dictionaryForPopulation[person]
        
        
        
        //cell.textLabel!.text = dictionaryForPopulation[person]
        
        
        return cell
        
    }
 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.keyTextInput.delegate = self
        
        
        
        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
    }
}
