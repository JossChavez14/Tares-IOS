//
//  detaileViewController.swift
//  Practica5
//
//  Created by MTI on 04/03/19.
//  Copyright © 2019 MTI. All rights reserved.
//

import UIKit

class detaileViewController: UIViewController {

    @IBOutlet weak var btnClose: UIButton!
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieSinopsis: UITextView!
    
    var movie: movieModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Custom button
        btnClose.layer.borderWidth = 2
        btnClose.layer.borderColor = UIColor.white.cgColor
        btnClose.layer.cornerRadius = 5
        
        imageMovie.image = movie?.movieImage
        movieTitle.text = movie?.movieTitle
        movieSinopsis.text = movie?.sinopsis
        
    }
    

    @IBAction func cerrar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
