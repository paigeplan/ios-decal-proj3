//
//  PhotoDetailViewController.swift
//  Photos
//
//  Created by Paige Plander on 4/7/16.
//  Copyright © 2016 iOS DeCal. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet weak var likesTextLabel: UILabel!
    @IBOutlet weak var usernameTextLabel: UILabel!
    @IBOutlet weak var dateTextLabel: UILabel!
    @IBOutlet weak var photoView: UIImageView!
    
    var liked = false
    
    var photo: Photo!
    var image: UIImage!
    
    
    let buttonLabelNormal = "♡"
    let buttonLabelLiked = "💛"
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        likesTextLabel.text = String(photo.likes) + " likes"
        
        usernameTextLabel.text = photo.username
        
        photoView.image = image
        
      
        
        let formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.ShortStyle
        formatter.timeStyle = .ShortStyle
        
        let dateString = formatter.stringFromDate(photo.date)
        dateTextLabel.text = dateString
        
        // Do any additional setup after loading the view.
    }
    @IBAction func likeButtonPressed(sender: UIButton) {
        if liked {
            sender.setTitle(buttonLabelNormal, forState: UIControlState.Normal)
        }
        else {
           sender.setTitle(buttonLabelLiked, forState: UIControlState.Normal)
        }
        
        liked = !liked
        
        
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
