//
//  ViewController.swift
//  Kanye Quote Generator
//
//  Created by Daniel Martínez on 12/02/22.
//

import UIKit

class ViewController: UIViewController {
  
  let quoteLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
    label.numberOfLines = 0
    label.textColor = .black
    return label
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.addSubview(quoteLabel)
    quoteLabel.center = self.view.center
  }
  
  override func viewDidLayoutSubviews() {
//    NetworkManager.fetchQuote { [unowned self] result in
//      switch result {
//      case .success(let quote):
//        DispatchQueue.main.async {
//          self.quoteLabel.text = quote
//        }
//      case .failure(_):
//        print("Oh, oh, something went wrong")
//      }
//    }
  }
}


