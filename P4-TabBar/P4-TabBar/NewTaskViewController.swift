//
//  NewTaskViewController.swift
//  P4-TabBar
//
//  Created by MTI on 25/02/19.
//  Copyright © 2019 MTI. All rights reserved.
//

import UIKit

class NewTaskViewController: UIViewController{

    @IBOutlet weak var txtTask: UITextField!
    @IBOutlet weak var taskDate: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyboard(){
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func addTask(_ sender: Any) {
        
        if (txtTask.text?.isEmpty)! {
            txtTask.backgroundColor = UIColor.red
        } else {
            txtTask.backgroundColor = UIColor.white
            //Mostrar confirmacion
            let alert = UIAlertController(title: "Confirmacion", message: "Deseas agregar la tarea: \(txtTask.text!) con fecha \(taskDate.date)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action)
            in
            //Agregar tarea
                Helper.shared.task.append(TaskModel(name: self.txtTask.text!, dueDate: self.taskDate.date))
            
            //Limpiar los campos
            self.txtTask.text = ""
            
            print(Helper.shared.task.description)
            print(Helper.shared.task.count)
        }))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
    
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
}
