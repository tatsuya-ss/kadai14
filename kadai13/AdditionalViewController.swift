//
//  AdditionalViewController.swift
//  kadai13
//
//  Created by 坂本龍哉 on 2021/01/11.
//

import UIKit

final class AdditionalViewController: UIViewController {
    private static let exitIdentifier = "exit"
    private(set) var addition = ""
    @IBOutlet private var additionalTextLabel: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction private func saveButton(_ sender: Any) {
        addition = additionalTextLabel.text!
        performSegue(withIdentifier: AdditionalViewController.exitIdentifier, sender: nil)
    }
}
