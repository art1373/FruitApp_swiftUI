//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Alireza TK on 5/9/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    //MARK: - BODY
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutriotional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { index in
                    Divider().padding(.vertical, 4)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                        }.foregroundColor(fruit.gradientColors[1]).font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[index]).multilineTextAlignment(.trailing)
                    }
                }
                
            }
        }//: Box
    }
}

//MARK: - PREVIEW

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0]).preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/).previewLayout(.fixed(width: 375, height: 480)).padding()
    }
}
