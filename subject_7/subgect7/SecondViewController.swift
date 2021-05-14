//
//  SecondViewController.swift
//  subgect7
//
//  Created by 長谷川孝太 on 2021/05/14.
//

import UIKit

final class SecondViewController: UIViewController {
    @IBOutlet private var textFieldCollection: [UITextField]!
    @IBOutlet private weak var resultNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldCollection.forEach {
            $0.keyboardType = .numberPad
            $0.delegate = self
        }
        view.backgroundColor = .green
    }
    @IBAction private func subtractNumberButton(_ sender: UIButton) {
        let num1 = Double(textFieldCollection[0].text!) ?? 0
        let num2 = Double(textFieldCollection[1].text!) ?? 0
        let resultNumber = num1 - num2
        resultNumberLabel.text = String(resultNumber)
        textFieldCollection.forEach {
            $0.resignFirstResponder()
        }
    }
}

extension SecondViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
