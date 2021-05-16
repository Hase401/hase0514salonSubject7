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
        resultNumberLabel.text = String(Calculator().calculate(textFields: textFieldCollection, ope: -))

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
