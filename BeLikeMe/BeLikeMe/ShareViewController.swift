//
//  ShareViewController.swift
//  BeLikeMe
//
//  Created by Samuel Wang on 1/23/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {

    @IBOutlet weak var photo: UIImageView!
    
    @IBOutlet weak var BeLikeMeText: UITextView!
    
    @IBAction func share(sender: UIButton) {
        var shareText = "\(finalText)" as NSString
        
        let itemsToShare = [shareText, image]
        
        let activityController = UIActivityViewController(
            activityItems: itemsToShare,
            applicationActivities:[StringReverserActivity()])
        
        presentViewController(activityController, animated: true, completion: nil)
    }
    
    @IBAction func redo(sender: UIButton) {
        let lower : UInt32 = 0
        let upper : UInt32 = 15
        let randomNumber = arc4random_uniform(upper - lower) + lower
        let num = Int(randomNumber)
        print(num)
        finalText = me[num]
        BeLikeMeText.text = finalText
    }
    let image : UIImage = UIImage(named:"me.png")!
    var finalText = ""
    var me = [
        "This is \(userName.name). \(userName.name) has a girlfriend. \(userName.name) doesn't post 56 photos a day with his girlfriend. \(userName.name) likes to keep these things private, because that's how they should be. \(userName.name) is smart. Be like \(userName.name).",
        "This is \(userName.name). \(userName.name) sees a picture of an ill child saying, something bad will happen if you don't say 'amen'. \(userName.name) keeps scrolling because he knows it is a pile of crap. \(userName.name) is smart. be like \(userName.name).",
        "This is \(userName.name). \(userName.name) helps the poor. \(userName.name). \(userName.name) doesnt take pictures or videos while doing it. \(userName.name) is smart and humble. Be like \(userName.name).",
        "This is \(userName.name). \(userName.name) is on Facebook. \(userName.name) doesn't post about how tomorrow is monday or the weekend. \(userName.name) knows everybody has a calendar. \(userName.name) is smart. Be like \(userName.name).",
        "This is \(userName.name). \(userName.name) is on Facebook. \(userName.name) doesn't post vague status updates on Facebook to be an attention seeker, and then he doesn't answer with 'it's nothing' when people ask him about it. \(userName.name) is smart. Be like \(userName.name).",
        "This is \(userName.name). \(userName.name) likes playing games on Facebook. \(userName.name) knows his friends don't play. \(userName.name) doesn't send them annoying requests. \(userName.name) is smart. Be like \(userName.name).",
        "This is \(userName.name). \(userName.name) likes music but he knows not everyone wants to hear what he's listening to on the 6am train. \(userName.name) is considerate. Be like \(userName.name).",
        "This is \(userName.name). \(userName.name) wakes up and sees it's snowing outside. \(userName.name) doesn't feel the urge to post a status about it on Facebook because he knows his friends also have windows. \(userName.name) is smart. Be like \(userName.name).",
        "This is \(userName.name). \(userName.name) doesn't post 1 million mirror selfies of himself or 1 million videos of himself doing squats on social media. Instead, \(userName.name) focuses more on exercising. \(userName.name) is smart. Be like \(userName.name).",
        "This is \(userName.name). \(userName.name) messages a girl to get to know her and to have a nice conversation. \(userName.name) doesn't ask for nudes. \(userName.name) doesn't want to be a pervert. \(userName.name) is smart and caring. Be like \(userName.name).",
        "This is \(userName.name). \(userName.name) is on Facebook. \(userName.name) sees something that offends him. \(userName.name) moves on. \(userName.name) is smart. Be like \(userName.name).",
        "This is \(userName.name). \(userName.name) knows that people aren't perfect. \(userName.name) accepts people of all different beliefs despite his own beliefs. \(userName.name) is accepting. Be like \(userName.name).",
        "This is \(userName.name). \(userName.name) has a girlfriend. \(userName.name) doesn't cheat on her because he loves her. \(userName.name) is loyal. Be like \(userName.name).",
        "This is \(userName.name). \(userName.name) is an atheist. \(userName.name) doesn't make fun of people who are religious because he knows people can do whatever they want with their life. \(userName.name) is smart. Be like \(userName.name).",
        "This is \(userName.name). \(userName.name) doesn't drive and text. \(userName.name) doesn't want to risk his and someone else's life for a text. \(userName.name) is smart. Be like \(userName.name).",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photo = UIImageView(image: image)
        let lower : UInt32 = 0
        let upper : UInt32 = 15
        let randomNumber = arc4random_uniform(upper - lower) + lower
        let num = Int(randomNumber)
        finalText = me[num]
        BeLikeMeText.text = finalText
        
        
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
