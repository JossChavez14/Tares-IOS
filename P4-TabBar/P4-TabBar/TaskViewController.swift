//
//  ViewController.swift
//  P4-TabBar
//
//  Created by MTI on 25/02/19.
//  Copyright © 2019 MTI. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        //conectar data source y delegate
        tableView.dataSource = self
        tableView.delegate = self
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Helper.shared.task.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "task")
        cell?.textLabel?.text = Helper.shared.task[indexPath.row].name
        cell?.detailTextLabel?.text = Helper.shared.task[indexPath.row].dueDate.description
        return cell!
    }
}
