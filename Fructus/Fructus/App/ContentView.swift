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
    @State private var isShowingSettings: Bool = false
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()){
                    item in NavigationLink(destination:FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item).padding(.vertical, 2)
                    }
                }
            }.navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action:{
                isShowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            }
            .sheet(isPresented: $isShowingSettings){
                SettingsView()
            }
            )
        }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
