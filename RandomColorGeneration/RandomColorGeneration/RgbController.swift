//
//  RGBController.swift
//  RandomColorGeneration
//
//  Created by Eunsung on 2/20/25.
//

import UIKit

class RgbController {
    private var rgbModel: RgbModel = RgbModel(redValue: 1, greenValue: 1, blueValue: 1, randomColor: .white)
    
    // 외부에 공개할 읽기 전용 프로퍼티
    var currentColor: UIColor {
        return rgbModel.randomColor
    }
    
    var rgbText: String {
        return "R: \(Int(rgbModel.redValue * 255)), G: \(Int(rgbModel.greenValue * 255)), B: \(Int(rgbModel.blueValue * 255))"
    }
    
    func changeColor() {
        rgbModel.setRandomColor()
    }
    func resetColor() {
        rgbModel.reset()
    }
    
}
