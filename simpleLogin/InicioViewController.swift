//
//  InicioViewController.swift
//  simpleLogin
//
//  Created by Rober on 22/05/16.
//  Copyright © 2016 Rober Martinez. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController {

    @IBOutlet weak var inicioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func verDetalleAction() {
        self.performSegue(withIdentifier: "detalleSegue", sender: nil)
    }

    @IBAction func cerrarSesionAction() {
        self.dismiss(animated: true, completion: nil)
    }
}
