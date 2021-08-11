//
//  Calculator.swift
//  subject_7
//
//  Created by 長谷川孝太 on 2021/08/11.
//

import Foundation
import UIKit

struct Calculator {
    // Outlet Collectionを使う意味がなくなる
//    func calculate(textField1: UITextField, textField2: UITextField, ope: (Double, Double) -> Double) -> Double {
//        let num1 = Double(textField1.text ?? "") ?? 0
//        let num2 = Double(textField2.text ?? "") ?? 0
//        return ope(num1, num2)
//    }

    // 引き算をreduceで実現できていないのでこれは駄目
//    func calculate(textFields: [UITextField], ope: (Double, Double) -> (Double)) -> Double {
//        textFields
//            .map { $0.text ?? ""}
//            .map { Double($0) ?? 0 }
//            .reduce(0, ope)
//    }

    // 引き算まで.reduceで実現させる場合
    func calculate(textFields: [UITextField], ope: (Double, Double) -> Double) -> Double {
        let nums = textFields
            .map { $0.text ?? "" }
            .map { Double($0) ?? 0 }
        if let first = nums.first {
            // Array.dropFirst() /.dropLast() → 配列の一番最初の値をなくす / 最後の値をなくす
            return nums.dropFirst().reduce(first, ope)
        } else {
            return 0
        }
    }
}
