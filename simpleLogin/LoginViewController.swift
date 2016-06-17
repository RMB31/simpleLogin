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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func ingresar(_ sender: AnyObject) {
        
        if (usuario.text!.isEmpty) {
            usuario.becomeFirstResponder()
            alert("Ingresa tu usuario")
        } else if (contraseña.text!.isEmpty) {
            contraseña.becomeFirstResponder()
            alert("Ingresa tu contraseña")
        } else {
            self.performSegue(withIdentifier: "inicioSegue", sender: nil)
            usuario.text = nil
            contraseña.text = nil
        }
    }
    
    func alert(_ message: String) {
        
        let refreshAlert = UIAlertController(title: nil, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction!) in
        }))
        
        present(refreshAlert, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
