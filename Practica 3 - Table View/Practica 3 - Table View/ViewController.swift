//
//  ViewController.swift
//  Practica 3 - Table View
//
//  Created by MTI on 18/02/19.
//  Copyright © 2019 MTI. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    //Fuente de informacion
    let paisesAmerica = ["Mexico", "Canada", "Estados Unidos", "Cuba", "Peru", "Chile", "Colombia"]
    let paisesEuropa = ["Francia", "Alemania", "Inglaterra", "España", "Italia", "Belgica"]
    let capitalesAmerica = ["CDMX", "Otawa", "Washington", "La Habana", "Lima", "Santiago", "Bogota"]
    let capitalesEuropa = ["Parìs", "Berlìn", "Londres", "Madrid", "Roma", "Bruselas"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
    
        // Do any additional setup after loading the view, typically from a nib.
        
        //Asignar los protocolos
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    
    //Cuantas secciones tendra la tabla
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //Cuantas filas tendra cada seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return paisesAmerica.count
        }
        return paisesEuropa.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Celda = tableView.dequeueReusableCell(withIdentifier: "celda")
        //7.-Después de construir la celda, se coloca la información correspondiente a la fila que se está mostrando
        if (indexPath.section == 0){
            Celda?.textLabel?.text = paisesAmerica[indexPath.row]
            
        } else {
            Celda?.textLabel?.text = paisesEuropa[indexPath.row]
            
        }
        
        return Celda!
    }    
    
    
    //Como va a ser cada una de las celdas
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return ["America", "Europa"]
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) ->String?{
        if(section == 0){
            return "America"
        }
        return "Europa"
    }
    
    //Extra
    //Identificar el evento de selección de una celda
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.section == 0){
        let alert = UIAlertController(title: "La capital de \(paisesAmerica[indexPath.row]) es \(capitalesAmerica[indexPath.row])", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "La capital de \(paisesEuropa[indexPath.row]) es \(capitalesEuropa[indexPath.row])", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
}




