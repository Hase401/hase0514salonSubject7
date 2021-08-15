//
//  TabBarController.swift
//  subject_Protocol7
//
//  Created by 長谷川孝太 on 2021/08/12.
//

import UIKit

final class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstVC = MyViewController.instantiate(model: AdditionModel())
        let secondVC = MyViewController.instantiate(model: SubtractionModel())
        let thirdVC = MyViewController.instantiate(model: MultiplicationModel())

        self.viewControllers = [firstVC, secondVC, thirdVC]
    }

}
