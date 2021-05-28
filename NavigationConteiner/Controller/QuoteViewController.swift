//
//  QuoteViewController.swift
//  NavigationConteiner
//
//  Created by Бейбарыс Шагай on 11/14/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import UIKit

let globalNotificationName = NSNotification.Name("task3_notification")

class QuoteViewController: UITableViewController
//    , QuoteProviderDelegate
{
    
    private var quotes = [Quote]()
    private var quoteProvider: QuoteProvider?
    private var myRefreshControl: QuoteProvider?

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.updateData), name:globalNotificationName , object: nil)
              
    }
    
    @objc func updateData(notification: NSNotification) {
        if let result = notification.object as? [Quote]{
            NSLog("Data came from NotificationCenter")
            self.quotes = result
            print("quotes = \(quotes)")
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        quoteProvider = QuoteProvider()
        
        quoteProvider?.post()
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

      if let cell = tableView.dequeueReusableCell(withIdentifier: "QuoteCell",
                                                   for: indexPath) as? QuoteCell {

            let index = indexPath.row
            let quote = quotes[index]

            cell.iconImageView.image = UIImage(named: quote.imageName)
            cell.nameLabel.text = quote.name
            cell.symbolLabel.text = quote.symbol
            cell.priceLabel.text = quote.price.description
            cell.supplyLabel.text = quote.supply.description

            return cell
        }
            return QuoteCell()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "quoteToDetail",
        let cell = sender as? QuoteCell,
        let indexPath = tableView.indexPath(for: cell),
        let detailVC = segue.destination as? QuoteDetailViewController {
            detailVC.quote = quotes[indexPath.row]
        }

    }
}
