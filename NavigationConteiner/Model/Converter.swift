//
//  Converter.swift
//  NavigationConteiner
//
//  Created by Бейбарыс Шагай on 11/14/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import Foundation

class Converter {
    
    var baseQuote: Quote
    
    init(baseQuote: Quote) {
        self.baseQuote = baseQuote
    }
    
    func generateConverter(amount: Double, convertQuote: Quote) -> Double {
        return amount * convertQuote.price / baseQuote.price
    }
}
