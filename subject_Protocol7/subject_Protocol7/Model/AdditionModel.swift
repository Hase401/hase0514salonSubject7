//
//  AdditionModel.swift
//  subject_Protocol7
//
//  Created by 長谷川孝太 on 2021/08/12.
//

import UIKit

final class AdditionModel: CalculateProtocol {
    let backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1) // #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
    func calculate(firstNum: Double, secondNum: Double) -> Double {
        firstNum + secondNum
    }
}
