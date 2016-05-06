//
//  WordDetailViewController.swift
//  NZSlang
//
//  Created by Madison Pahl on 5/4/16.
//  Copyright © 2016 Madison Pahl. All rights reserved.
//

import UIKit
import CoreData

class WordDetailViewController: UIViewController {



    @IBOutlet weak var wordTextField: UITextField!
    @IBOutlet weak var meaningTextView: UITextView!
    @IBOutlet weak var deleteButton: UIButton!
    
    var editingWord : Slang?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let word = editingWord {
            self.wordTextField.text = word.theWord
            self.meaningTextView.text = word.meaning
        }
        else {
            self.deleteButton.hidden = true
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(sender: AnyObject) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        if let currentWord = editingWord {
            currentWord.theWord = self.wordTextField.text
            currentWord.meaning = self.meaningTextView.text
        }
            
        else{
            
            let slang = NSEntityDescription.insertNewObjectForEntityForName("Slang", inManagedObjectContext: appDelegate.managedObjectContext) as! Slang
            
            slang.theWord = self.wordTextField.text!
            slang.meaning = self.meaningTextView.text!
        }
        
        
        appDelegate.saveContext()
        
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func deleteButton(sender: AnyObject) {
        let appDelegate = AppDelegate.GetInstance()
        let dbContext = appDelegate.managedObjectContext
        
        dbContext.deleteObject(self.editingWord!)
        appDelegate.saveContext()
        
        self.navigationController?.popViewControllerAnimated(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
