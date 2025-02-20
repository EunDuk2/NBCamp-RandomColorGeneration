//
//  RGBController.swift
//  RandomColorGeneration
//
//  Created by Eunsung on 2/20/25.
//

import UIKit

class RgbController {
    private var rgbModel: RgbModel = RgbModel(redValue: 1, greenValue: 1, blueValue: 1, randomColor: .white)
    
    
    func getColor() -> UIColor {
        return rgbModel.randomColor
    }
    func getRGBLabel() -> String {
        return "R: \(Int(rgbModel.redValue * 255)), G: \(Int(rgbModel.greenValue * 255)), B: \(Int(rgbModel.blueValue * 255))"
    }
    
    func didTapChangeClorButton() {
        rgbModel.setRandomColor()
    }
    func didTapResetButton() {
        rgbModel.reset()
    }
    
}
