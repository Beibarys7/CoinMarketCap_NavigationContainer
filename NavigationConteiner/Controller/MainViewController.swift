//
//  MainViewController.swift
//  NavigationConteiner
//
//  Created by Бейбарыс Шагай on 11/17/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    @IBOutlet private var btctextField: UITextField!
    @IBOutlet private var ethtextField: UITextField!
    @IBOutlet private var btcImageView: UIImageView!
    @IBOutlet private var ethImageView: UIImageView!
    
    private var quotes = [Quote]()
    
    var baseQuote: Quote? // типын көрсетім baseQuote degen svoistva bar Quote type
    var myQuotes: [Quote]?
    let amount: Double = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    
//    @objc
//    private func textFieldDidChange(_ sender: UITextField) {
//        print(sender.text)
//    }
//    @IBAction func swapButton(_ sender: UIButton) {
//        if let baseQ = baseQuote {
//            let converter = Converter(baseQuote: baseQ)
//            // "ETH" -> 123
//            var result = ""
//            for quote in myQuotes ?? [] {
//                
//                let convertedResult = converter.generateConverter(amount: amount, convertQuote: baseQ)
//                result = result + convertedResult.description
//            }
//            print(result)
//            ethtextField.text = result
//        } else {
//            print("Значение жок, nil келып тур")
//        }
//    }
    
}

