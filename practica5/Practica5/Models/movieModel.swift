//
//  movieModel.swift
//  Practica5
//
//  Created by MTI on 04/03/19.
//  Copyright © 2019 MTI. All rights reserved.
//

import Foundation
import UIKit

class movieModel{
    var movieTitle = ""
    var sinopsis = ""
    var genero = ""
    var duracion = ""
    var clasificacion = ""
    var movieImage = UIImage()
    
    
    init(movieTitle: String, sinopsis: String, genero: String, clasificacion: String,
        duracion: String, movieImage: UIImage){
        self.movieTitle = movieTitle
        self.sinopsis = sinopsis
        self.genero = genero
        self.duracion = duracion
        self.clasificacion = clasificacion
        self.movieImage = movieImage
        
    }
}
