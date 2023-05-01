//
//  DetailViewController.swift
//  Capstone Project
//
//  Created by G Vi on 4/30/23.
//

import UIKit
import ParseSwift
import Nuke


class DetailViewController: UIViewController {

    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var artistLabel: UILabel!
    
    @IBOutlet weak var ratingField: UITextField!
    
    // A property to store the track object.
    // We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var track: Post!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Load the image located at the `artworkUrl100` URL and set it on the image view.
     //   Nuke.loadImage(with: track.artworkUrl100, into: imageView)
        trackNameLabel.text = track.trackName
        // Set labels with the associated track values.
       // trackNameLabel.text = track.artistName
         artistLabel.text = track.artistName
      //  albumLabel.text = track.collectionName
        //genreLabel.text = track.primaryGenreName

        // Create a date formatter to style our date and convert it to a string
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
       // releaseDateLabel.text = dateFormatter.string(from: //track.releaseDate)

        // Use helper method to convert milliseconds into `mm:ss` string format
        //durationLabel.text = formattedTrackDuration(with: track.trackTimeMillis)
        
        
        

    }
    
    
    @IBAction func RateClick(_ sender: Any)  {
        //    upperButton.shake()
            // Make sure all fields are non-nil and non-empty.
        let songName = trackNameLabel.text
        
        let artistName = artistLabel.text
        let thisRating = Int(ratingField.text!)
              
            


            // TODO: Pt 1 - Parse rating
  var newRating = Rating()
    
    
        newRating.trackName = trackNameLabel.text!
        
        
        newRating.artistName = artistName!
        
        newRating.myrating = thisRating!
        
        
    
    
  
   // post.caption = captionTextField.text

    // Set the user as the current user
   // post.user = User.current

    // Save object in background (async)
   newRating.save { [weak self] result in

        // Switch to the main thread for any UI updates
        DispatchQueue.main.async {
            switch result {
            case .success(let post):
                print("✅ Post Saved! \(post)")

                // Return to previous view controller
                self?.navigationController?.popViewController(animated: true)

            case .failure(let error):
                self?.showAlert(description: error.localizedDescription)
            }
        }
    }
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
