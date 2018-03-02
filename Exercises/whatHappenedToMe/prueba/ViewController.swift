//
//  ViewController.swift
//  prueba
//
//  Created by markmota on 2/24/18.
//  Copyright © 2018 markmota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //El Textfield no cuenta con una conexión
    //weak var outtletText: UITextField!
    
    //Agregaré un Label para que ahí se muestre la información al orpimir el botón
    
    //MARK: Properties
    @IBOutlet weak var AswerLabel: UILabel!
    
    @IBOutlet weak var aoutletButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        aoutletButton.setTitle("Touch me!", for: .normal)
        
    }
   
    // MARK: Actions
    @IBAction func actionButton(_ sender: Any) {
        
        AswerLabel.text = "You are a genius"
    }
    
    //Esta funcón no está ligada a la acción del botón
    /*func actionButton(_ sender: Any) {
        outtletText.text = "You are a genius "
    }*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

