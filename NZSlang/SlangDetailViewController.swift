//
//  WordViewController.swift
//  NZSlang
//
//  Created by Madison Pahl on 5/3/16.
//  Copyright © 2016 Madison Pahl. All rights reserved.
//

import UIKit

class SlangDetailViewController: UIViewController {
    
    var slang : SlangWords!
    
    @IBOutlet weak var slangImage: UIImageView!
    @IBOutlet weak var slangTextView: UITextView!
    @IBOutlet weak var slangWordLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.slangWordLabel.text = slang.word
        
        self.slangImage.image = slang.image
        
        self.slangTextView.text = slang.meaning

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
