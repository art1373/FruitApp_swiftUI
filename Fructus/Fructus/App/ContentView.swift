//
//  ContentView.swift
//  Fructus
//
//  Created by Alireza TK on 4/30/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits : [Fruit] = fruitsData
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()){
                    item in NavigationLink(destination:FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item).padding(.vertical, 8)
                    }
                }
            }.navigationTitle("Fruits")

        }//: Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
