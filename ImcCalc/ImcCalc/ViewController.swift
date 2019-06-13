//
//  ViewController.swift
//  ImcCalc
//
//  Created by JUAN CARLOS CASTRO on 6/12/19.
//  Copyright © 2019 curso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblPeso: UILabel!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var sliPeso: UISlider!
    @IBOutlet weak var txtAltura: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderChangedValue(_ sender: UISlider) {
        
        let rounded = sender.value
        let final = rounded * 1
        lblPeso.text = "\(final)"
    }
    @IBAction func calcular(_ sender: Any) {
        
        if
            let alturaTexto = txtAltura.text{
            let peso   = self.sliPeso.value
            let altura = Float(alturaTexto)!
            let imc    = peso / (altura*altura)
            
            
            
            let leyenda = "Su imc es: \(imc)"
            lblResultado.text = leyenda
            
        }
        
        
    }
    
}

