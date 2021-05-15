//
//  FirstViewController.swift
//  subgect7
//
//  Created by 長谷川孝太 on 2021/05/14.
//

import UIKit

final class FirstViewController: UIViewController {
    @IBOutlet private var textFieldCollection: [UITextField]!
    @IBOutlet private weak var resultNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldCollection.forEach {
            $0.keyboardType = .numberPad
            $0.delegate = self
        }
        view.backgroundColor = .red
    }
    @IBAction private func addNumberButton(_ sender: UIButton) {
        resultNumberLabel.text = String(Calculator().calculate(textFields: textFieldCollection, ope: +))

        textFieldCollection.forEach {
            $0.resignFirstResponder()
        }
    }
}

extension FirstViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

struct Calculator {
    func calculate(textFields: [UITextField], ope: (Double, Double) -> Double) -> Double {
        textFields
            .map { $0.text ?? "" }
            .map { Double($0) ?? 0 }
            .reduce(0, ope)
    }
}
