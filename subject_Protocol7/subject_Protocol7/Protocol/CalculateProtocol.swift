//
//  CalculateProtocol.swift
//  subject_Protocol7
//
//  Created by 長谷川孝太 on 2021/08/12.
//

import UIKit

protocol CalculateProtocol: AnyObject {
    var backgroundColor: UIColor { get }
//    var calculate: (Int, Int) -> Int { get } // 【疑問】違いはどこ？
    func calculate(firstNum: Double, secondNum: Double) -> Double
}
