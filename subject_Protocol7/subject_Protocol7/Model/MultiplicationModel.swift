//
//  MultiplicationModel.swift
//  subject_Protocol7
//
//  Created by 長谷川孝太 on 2021/08/15.
//

import UIKit

final class MultiplicationModel: CalculateProtocol {
    let backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1) // #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
    func calculate(first: Double, second: Double) -> Double {
        first * second
    }
}
