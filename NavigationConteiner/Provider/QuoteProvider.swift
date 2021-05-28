//
//  QuoteProvider.swift
//  NavigationConteiner
//
//  Created by Бейбарыс Шагай on 11/14/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import Foundation

//protocol QuoteProviderDelegate {
//    func updateQuotes(quotes: [Quote])
//}

class QuoteProvider {
    
    var timer: Timer?
//    private let delegate: QuoteProviderDelegate
//
    let names = ["Bitcoin", "Ripple", "Ethereum"]
    let symbols = ["BTC", "XRP", "ETH"]
    let imageNames = ["btc", "xrp", "eth"]
//
    
//    required init(delegate: QuoteProviderDelegate) {
//        self.delegate = delegate
//    }

//    func loadQuotes() {
//        let quotes = generateQuotes()
//        delegate.updateQuotes(quotes: quotes)
//    }

    func generateQuotes() -> [Quote] {
        return names.enumerated().map{ index, item in Quote(
            symbol: symbols[index],
            name: item,
            imageName: imageNames[index],
            rank: 1, price: Double.random(in: 1 ... 10000),
            supply: 17.9,
            open: 10350.42,
            high: 10389.89,
            average: 10243.98,
            close: 10168.70,
            low: 10087.30,
            change: 181.72,
            marketCap: 182.496,
            Circulating: 17.9,
            volume: 15.755,
            maxSupply: 21
            )}
    }
    func post() {
        timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }
    @objc
    private func fireTimer() {
       NotificationCenter.default.post(name: globalNotificationName,
           object: generateQuotes(),
           userInfo: nil)

    }
}
