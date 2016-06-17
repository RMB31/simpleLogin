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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func verDetalle(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "detalleSegue", sender: nil)
    }

    @IBAction func cerrarSesion(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
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
