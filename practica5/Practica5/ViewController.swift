//
//  ViewController.swift
//  Practica5
//
//  Created by MTI on 04/03/19.
//  Copyright © 2019 MTI. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var movies: UITableView!
    
    //Repositorio de peliculas
    var movieList = [movieModel]()
    var selectedMovie: movieModel?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        movies.dataSource = self
        movies.delegate = self
        
        getMovies()
        movies.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movie") as! MovieTableViewCell
        cell.imageMovie.image = movieList[indexPath.row].movieImage
        cell.lblDuracion.text = movieList[indexPath.row].duracion
        cell.lblClasificacion.text = movieList[indexPath.row].clasificacion
        cell.lblGenero.text = movieList[indexPath.row].genero
        cell.lblTitulo.text = movieList[indexPath.row].movieTitle
        return cell
    }
    //Request de peliculas
    func getMovies(){
        movieList.append(movieModel(movieTitle: "Iron Man", sinopsis: "Un empresario millonario construye un traje blindado y lo usa para combatir el crimen y el terrorismo.", genero: "Superheroes", clasificacion: "B15", duracion: "2:06", movieImage: UIImage(named: "ironman1")!))
        
        movieList.append(movieModel(movieTitle: "Iron Man 2", sinopsis: "Con el mundo ahora consciente de que él es Iron Man, el millonario inventor Tony Stark debe forjar nuevas alianzas y confrontar a un enemigo nuevo y poderoso.", genero: "Superheroes", clasificacion: "B15", duracion: "2:05", movieImage: UIImage(named: "ironman2")!))
        
        movieList.append(movieModel(movieTitle: "Iron Man 3", sinopsis: "El descarado y brillante Tony Stark, tras ver destruido todo su universo personal, debe encontrar y enfrentarse a un enemigo cuyo poder no conoce límites. Este viaje pondrá a prueba su entereza una y otra vez, y le obligará a confiar en su ingenio.", genero: "Superheroes", clasificacion: "B", duracion: "2:11", movieImage: UIImage(named: "ironman3")!))
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMovie = movieList[indexPath.row]
        performSegue(withIdentifier: "detalle", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalle" {
            let vc = segue.destination as! detaileViewController
            vc.movie = selectedMovie
        }
    }
}

