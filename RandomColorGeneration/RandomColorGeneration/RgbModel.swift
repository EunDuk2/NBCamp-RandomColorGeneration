//
//  RGBModel.swift
//  RandomColorGeneration
//
//  Created by Eunsung on 2/20/25.
//
import UIKit

struct RgbModel {
    private(set) var redValue: CGFloat
    private(set) var greenValue: CGFloat
    private(set) var blueValue: CGFloat
    private(set) var randomColor: UIColor
    
    
    mutating func setRandomColor() {
        redValue = CGFloat.random(in: 0...1)
        greenValue = CGFloat.random(in: 0...1)
        blueValue = CGFloat.random(in: 0...1)
        setColor()
    }
    
    mutating func reset() {
        redValue = 1
        greenValue = 1
        blueValue = 1
        setColor()
    }
    
    private mutating func setColor() {
        randomColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
}
