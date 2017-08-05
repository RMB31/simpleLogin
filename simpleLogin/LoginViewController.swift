//
//  LoginViewController.swift
//  simpleLogin
//
//  Created by Rober on 21/05/16.
//  Copyright © 2016 Rober Martinez. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usuario: UITextField!
    @IBOutlet weak var contraseña: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func ingresarAction() {
        
        if (usuario.text!.isEmpty) {
            usuario.becomeFirstResponder()
            alert(message: "Ingresa tu usuario")
        } else if (contraseña.text!.isEmpty) {
            contraseña.becomeFirstResponder()
            alert(message: "Ingresa tu contraseña")
        } else {
            self.performSegue(withIdentifier: "inicioSegue", sender: nil)
            usuario.text = nil
            contraseña.text = nil
        }
    }
    
    func alert(message: String) {
        
        let refreshAlert = UIAlertController(title: nil, message: message, preferredStyle: UIAlertControllerStyle.alert)
        refreshAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction!) in
        }))
        
        present(refreshAlert, animated: true, completion: nil)
    }
}
