//
//  CalculateProtocol.swift
//  subject_Protocol7
//
//  Created by 長谷川孝太 on 2021/08/12.
//

import UIKit

protocol CalculateProtocol: AnyObject {
    // プロトコルではletではなくvarしか使えない
    var backgroundColor: UIColor { get }
    func calculate(first: Double, second: Double) -> Double
}
