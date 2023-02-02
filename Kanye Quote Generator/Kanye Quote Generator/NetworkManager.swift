//
//  NetworkManager.swift
//  Kanye Quote Generator
//
//  Created by Daniel Martínez on 12/02/22.
//

import Foundation

typealias KanyeQuoteResult = (Result<String, Error>) -> Void

class NetworkManager {
//  class func fetchQuote(completion: @escaping KanyeQuoteResult) {
//    let url: URL? = URL(string: "https://api.kanye.rest/text")
//    URLSession.shared.dataTask(with: url!) { data, response, error in
//      if let error = error {
//        print("There was an error \(error)")
//        return
//      }
//      guard let httpResponse = response as? HTTPURLResponse,
//            (200...299).contains(httpResponse.statusCode) else {
//              return
//            }
//      if let data = data,
//        let amazingQuote = String(data: data, encoding: .utf8) {
//        print(amazingQuote)
//        completion(.success(amazingQuote))
//      } else {
//        print ("This, actually went wrong")
//      }
//    }.resume()
//  }
  
  class func fetchQuote() async throws -> String? {
    let url: URL? = URL(string: "https://api.kanye.rest/text")
    let (data, _) = try await URLSession.shared.data(from: (url ?? URL(string: String()))!)
    let quote = String(data: data, encoding: .utf8)
    return quote
  }
}
