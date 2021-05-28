//
//  QuoteDetailViewController.swift
//  NavigationConteiner
//
//  Created by Бейбарыс Шагай on 11/16/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import UIKit

class QuoteDetailViewController: UIViewController {

    @IBOutlet weak var openLabel: UILabel!
    @IBOutlet weak var highLabel: UILabel!
    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var closeLabel: UILabel!
    @IBOutlet weak var lowLabel: UILabel!
    @IBOutlet weak var changeLabel: UILabel!
    @IBOutlet weak var marketCapLabel: UILabel!
    @IBOutlet weak var circulatingLabel: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var maxSupplyLabel: UILabel!
    @IBOutlet weak var rankLabel: UILabel!
    
    var quote: Quote?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let quote = quote {
            self.title = quote.name
            let nav = self.navigationController?.navigationBar
              
                // 2
                nav?.barStyle = UIBarStyle.black
                nav?.tintColor = UIColor.yellow
              
                // 3
                let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
                imageView.contentMode = .scaleAspectFit
                  
                // 4
                let image = UIImage(named: quote.imageName)
                imageView.image = image
                  
                // 5
                navigationItem.titleView = imageView
                
            openLabel.text = "\(quote.open.description) $"
            highLabel.text = "\(quote.high.description) $"
            averageLabel.text = "\(quote.average.description) $"
            closeLabel.text = "\(quote.close.description) $"
            lowLabel.text = "\(quote.low.description) $"
            changeLabel.text = "\(quote.change.description) $"
            marketCapLabel.text = "\(quote.marketCap.description) $ Bn"
            circulatingLabel.text = "\(quote.Circulating.description) M BTC"
            volumeLabel.text = "\(quote.volume.description) $ Bn"
            maxSupplyLabel.text = "\(quote.maxSupply.description) M BTC"
            rankLabel.text = "\(quote.rank.description) "
        }
    }
    


}
