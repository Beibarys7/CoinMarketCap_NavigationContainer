//
//  ConverterViewController.swift
//  NavigationConteiner
//
//  Created by Бейбарыс Шагай on 11/24/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var btctextField: UITextField!
    @IBOutlet weak var ethtextField: UITextField!
    @IBOutlet weak var btcImageView: UIImageView!
    @IBOutlet weak var ethImageView: UIImageView!

    var quote: Quote?
    var myQuotes: [Quote]?
    let amount: Double = 1
    
    var baseQuote: Quote?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btcImageView.image = UIImage(named: "btc")
        ethImageView.image = UIImage(named: "eth")

    }
    @IBAction func swapButton(_ sender: UIButton) {
            var min: Double = 0
            min = Double(Int(btctextField.text ?? "") ?? 0)
            var result: Double = 0
             
            let convertedResult = amount * min / 200
            result =  convertedResult
            print(result)
            ethtextField.text = result.description
    }
    
}
