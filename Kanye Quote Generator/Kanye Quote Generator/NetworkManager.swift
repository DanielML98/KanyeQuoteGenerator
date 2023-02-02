//
//  NetworkManager.swift
//  Kanye Quote Generator
//
//  Created by Daniel Martínez on 12/02/22.
//

import Foundation

typealias KanyeQuoteResult = (Result<String, Error>) -> Void

class NetworkManager {  
  class func fetchQuote() async throws -> String? {
    let url: URL? = URL(string: "https://api.kanye.rest/text")
    let (data, _) = try await URLSession.shared.data(from: (url ?? URL(string: String()))!)
    let quote = String(data: data, encoding: .utf8)
    return quote
  }
}
