//
//  APICall.swift
//  Route66
//
//  Created by Igor Tarantino on 18/12/24.
//

import Foundation

class MeowFactsCall: ObservableObject {
    
    @Published var fact: String = ""

    func fetchRandomFact() {
        
        guard let url = URL(string: "https://meowfacts.herokuapp.com/") else {
            return
        }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            if let data = data {
                do {
                    // Parse the JSON response
                    let response = try JSONDecoder().decode(MeowFactResponse.self, from: data)
                    DispatchQueue.main.async {
                        self?.fact = response.data.first ?? "No fact available"
                    }
                } catch {
                    print("Error decoding the response: \(error)")
                }
            } else if let error = error {
                print("Error fetching the data: \(error)")
            }
        }
        
        task.resume()
    }
}

