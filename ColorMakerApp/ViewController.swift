//
//  ViewController.swift
//  ColorMakerApp
//
//  Created by Alejandro Franco on 25/01/20.
//  Copyright © 2020 Alejandro Franco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swR: UISwitch!
    @IBOutlet weak var swG: UISwitch!
    @IBOutlet weak var swB: UISwitch!
    @IBOutlet weak var viewColor: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeViewBackground(_ sender: Any) {
        let r:Double = (self.swR.isOn) ? 255.0 : 0
        let g:Double = (self.swG.isOn) ? 255.0 : 0
        let b:Double = (self.swB.isOn) ? 255.0 : 0
        self.viewColor.backgroundColor = UIColor(
            displayP3Red: CGFloat(r/255.0),
            green: CGFloat(g/255.0),
            blue: CGFloat(b/255.0),
            alpha: 1)
    }
}
