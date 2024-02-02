//
//  DetailViewController.swift
//  Flixster Pt. 1
//
//  Created by Joshua Akhimiemona on 2/1/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieBackground: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieVoteAvg: UILabel!
    @IBOutlet weak var movieVoteCount: UILabel!
    @IBOutlet weak var moviePop: UILabel!
    @IBOutlet weak var testingDescript: UITextView!


        

       
        var movie: Movie!

        override func viewDidLoad() {
            super.viewDidLoad()


            Nuke.loadImage(with: movie.backdropImage, into: movieBackground)


            movieTitle.text = movie.titleName
            movieVoteAvg.text =  movie.voteAverage + " Vote Average"
            movieVoteCount.text = movie.voteCount + " Votes"
            moviePop.text = movie.popularity + " Popularity"
            //movieDescript.text = movie.description
            testingDescript.text = movie.description

        }
    

    /*
    // MARK: - Navigation

    }
    */

}
