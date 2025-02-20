//
//  ViewController.swift
//  RandomColorGeneration
//
//  Created by Eunsung on 2/18/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewRgb: UIView!
    @IBOutlet weak var labelRgb: UILabel!
    
    var rgbController: RgbController = RgbController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func update() {
        viewRgb.backgroundColor = rgbController.getColor()
        labelRgb.text = rgbController.getRGBLabel()
    }

    @IBAction func changeColor(_ sender: Any) {
        rgbController.didTapChangeClorButton()
        update()
    }
    @IBAction func resetColor(_ sender: Any) {
        rgbController.didTapResetButton()
        update()
    }
}

