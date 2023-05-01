//
//  Post.swift
//  TuneTalk
//
//  Created by Victoria Nunez on 4/19/23.
//

import Foundation

// TODO: Pt 1 - Import Parse Swift
import ParseSwift


struct RatingList{
    let ratings : [Rating]
}

struct Rating:ParseObject{
    init() {

    }
    
 
    var originalData: Data?
    
   
    var objectId: String?
    
    var createdAt: Date?
    
    var updatedAt: Date?
    
    var ACL: ParseSwift.ParseACL?
    var trackName: String?
    var artistName: String?
    var artworkUrl100: URL?
    var user: User?
    var myrating: Int?
   // var imageFile: ParseFile?
    
   // let trackName: String
   // let artistName: String
   // let artworkUrl100: URL


    // Detail properties
    // Detail properties
   // let collectionName: String
   // let primaryGenreName: String
   // let releaseDate: Date
  //
  
    
  
    
    }
