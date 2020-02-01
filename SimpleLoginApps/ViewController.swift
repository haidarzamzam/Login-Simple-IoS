//
//  ViewController.swift
//  SimpleLoginApps
//
//  Created by Haidar Zamzam on 02/02/20.
//  Copyright © 2020 Haidar Zamzam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPin: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func showAlert(title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
                         
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                         
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
            

    @IBAction func clickLogin(_ sender: UIButton) {
        let email:String = tfEmail.text!
        let pin:String = tfPin.text!
               
        if (email.isEmpty || pin.isEmpty){
            showAlert(title: "Warning", message: "Isi Email/Password")
        }else if(email == "admin@admin.com" && pin == "12345"){
            showAlert(title: "Success", message: "Berhasil Login :)")
        }else{
            showAlert(title: "Failed", message: "Email/Pin Salah!")
        }
    }
}

