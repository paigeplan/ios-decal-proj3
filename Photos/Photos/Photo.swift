//
//  Photo.swift
//  Photos
//
//  Created by Gene Yoo on 11/3/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import Foundation

class Photo {
    /* The number of likes the photo has. */
    var likes : Int!
    /* The string of the url to the photo file. */
    var url : String!
    /* The username of the photographer. */
    var username : String!
    /* The date of when the image was taken */
    var date : NSDate!

    /* Parses a NSDictionary and creates a photo object. */
    init (data: NSDictionary) {
        // FILL ME IN
        // HINT: use nested .valueForKey() calls, and then cast using 'as! TYPE'
    
        // Getting and Setting the Image URL
        let imageDictionary = data.objectForKey("images")! as! NSDictionary
        let lowResolutionDictionary = imageDictionary.objectForKey("low_resolution")! as! NSDictionary
        let lowResolutionImageURL = lowResolutionDictionary.objectForKey("url") as! String
        url = lowResolutionImageURL
        // Getting and Setting the Username
        let userDictionary = data.objectForKey("user")! as! NSDictionary
        username = userDictionary.valueForKey("username") as! String
    
        // Getting and setting number of likes
        likes = data.objectForKey("likes")!.objectForKey("count") as! Int
    
        
        let dateString = data.objectForKey("created_time") as! String
        let dateDouble = Double(dateString)!
        
        date = NSDate(timeInterval: dateDouble/1000.0, sinceDate: NSDate())
        
        

        
        

        
        //print(data)
    }

}