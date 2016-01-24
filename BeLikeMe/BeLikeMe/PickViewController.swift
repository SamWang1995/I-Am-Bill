//
//  PickViewController.swift
//  BeLikeMe
//
//  Created by Samuel Wang on 1/23/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import UIKit

class PickViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    
    @IBAction func BeLikeMe(sender: UIButton) {
        userName.name = name.text!
        performSegueWithIdentifier("beLikeMe", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
