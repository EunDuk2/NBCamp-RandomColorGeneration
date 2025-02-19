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
    
    var randomRed: CGFloat = 1
    var randomGreen: CGFloat = 1
    var randomBlue: CGFloat = 1
    var randomColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setRandomColor() {
        randomRed = CGFloat.random(in: 0...1)
        randomGreen = CGFloat.random(in: 0...1)
        randomBlue = CGFloat.random(in: 0...1)
        randomColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }

    @IBAction func changeColor(_ sender: Any) {
        setRandomColor()
        viewRgb.backgroundColor = randomColor
        labelRgb.text = "R: \(Int(randomRed * 255)), G: \(Int(randomGreen * 255)), B: \(Int(randomBlue * 255))"
    }
    @IBAction func resetColor(_ sender: Any) {
        viewRgb.backgroundColor = .white
        labelRgb.text = "R: 255, G: 255, B: 255"
    }
}

