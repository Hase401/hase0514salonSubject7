//
//  SubtractionModel.swift
//  subject_Protocol7
//
//  Created by 長谷川孝太 on 2021/08/12.
//

import UIKit

final class SubtractionModel: CalculateProtocol {
    let backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1) // #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
    func calculate(firstNum: Double, secondNum: Double) -> Double {
        firstNum - secondNum
    }
}
