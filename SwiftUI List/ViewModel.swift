//
//  ViewModel.swift
//  SwiftUI List
//
//  Created by Prayag Gediya on 27/05/22.
//

import SwiftUI

class ViewModel: ObservableObject {
    
    @Published var users: [User] = []
    
    init() {
        loadJSON()
    }
    
    func loadJSON() {
        if let url = Bundle.main.url(forResource: "Data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                self.users = try decoder.decode([User].self, from: data)
            } catch {
                print("error:\(error)")
            }
        }
    }
    
}
