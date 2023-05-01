//
//  Post.swift
//  TuneTalk
//
//  Created by Victoria Nunez on 4/19/23.
//

import Foundation

// TODO: Pt 1 - Import Parse Swift
import ParseSwift


struct PostAPIResponse: Decodable {
    let results : [Post]
}

struct Post : Decodable {
    let trackName: String
    let artistName: String
    let artworkUrl100: URL
    // These are required by ParseObject
   // var objectId: String?
   // var createdAt: Date?
   // var updatedAt: Date?
   // var ACL: ParseACL?
    //var originalData: Data?

    // Your own custom properties.
    //var caption: String?
    //var user: User?
   // var imageFile: ParseFile?
    
   // let trackName: String
   // let artistName: String
   // let artworkUrl100: URL


    // Detail properties
    // Detail properties
   // let collectionName: String
   // let primaryGenreName: String
   // let releaseDate: Date
  //  let trackTimeMillis: Int
    // let myrating: Int
}
