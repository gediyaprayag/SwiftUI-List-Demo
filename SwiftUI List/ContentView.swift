//
//  ContentView.swift
//  SwiftUI List
//
//  Created by Prayag Gediya on 27/05/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel = ViewModel()
    var body: some View {
        List(viewModel.users, id: \.self) { user in
            VStack(alignment: .leading) {
                (Text(user.fname) + Text(user.lname))
                    .font(.system(size: 20, weight: .semibold))
                
                Text(user.city)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
