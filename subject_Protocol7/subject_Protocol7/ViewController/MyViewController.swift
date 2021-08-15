//
//  ViewController.swift
//  subject_Protocol7
//
//  Created by 長谷川孝太 on 2021/08/12.
//

import UIKit

final class MyViewController: UIViewController {

    @IBOutlet private var textFields: [UITextField]!
    @IBOutlet private weak var calculatedResultLabel: UILabel!
    private var model: CalculateProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = model.backgroundColor

        textFields.forEach {
            $0.keyboardType = .numberPad
            $0.delegate = self
        }
    }

    @IBAction func calculateButtonDidTapped(_ sender: Any) {
        textFields.forEach { $0.endEditing(true) }
        let firstNum = Double(textFields[0].text!) ?? 0
        let secondNum = Double(textFields[1].text!) ?? 0
        let resultNum = model.calculate(first: firstNum, second: secondNum)
        calculatedResultLabel.text = String(resultNum)
    }

    // ViewController が index を意識しなくなったので、Tab以外でも使える画面(ViewController)になった
        // → func configue(index: Int) みたいにしてmodelをindexから渡してVC作るのは❌
    static func instantiate(model: CalculateProtocol) -> MyViewController {
        guard let vc = UIStoryboard(name: "Calculate", bundle: nil).instantiateInitialViewController() as? MyViewController else {
            fatalError("ViewControllerが見つかりません")
        }
        vc.model = model
        return vc
    }

}

extension MyViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

