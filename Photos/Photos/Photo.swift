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

    /* Parses a NSDictionary and creates a photo object. */
    init (data: NSDictionary) {
        // FILL ME IN
        // HINT: use nested .valueForKey() calls, and then cast using 'as! TYPE'
    
        // Getting and Setting the Image URL
        let imageDictionary = data.objectForKey("images")! as! NSDictionary
        let standardResolutionDictionary = imageDictionary.objectForKey("standard_resolution")! as! NSDictionary
        let standardResolutionImageURL = standardResolutionDictionary.objectForKey("url") as! String
        url = standardResolutionImageURL
        
        // Getting and Setting the Username
        let captionDictionary = data.objectForKey("caption")! as! NSDictionary
        username = captionDictionary.valueForKey("from")?.valueForKey("username") as! String
        
        // Getting and setting number of likes
        likes = data.objectForKey("likes")!.objectForKey("count") as! Int
    
        
        //print(data)
    }

}