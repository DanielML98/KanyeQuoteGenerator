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
    Task {
      do {
        let quote = try await NetworkManager.fetchQuote()
        self.quoteLabel.text = quote
      } catch {
        print(error)
      }
    }
  }
}


