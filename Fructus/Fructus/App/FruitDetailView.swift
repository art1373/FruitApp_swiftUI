//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Alireza TK on 5/8/21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    //Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                        //TITLE
                        Text(fruit.title).font(.largeTitle).fontWeight(.heavy).foregroundColor(fruit.gradientColors[1])
                        //HEADLINE
                        Text(fruit.headline).font(.headline).multilineTextAlignment(.leading)
                        //NUTTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        //SUBHEADING
                        Text("Learn more about \(fruit.title)".uppercased()).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(fruit.gradientColors[1])
                        //DESCRIPTION
                        Text(fruit.description).multilineTextAlignment(.leading).foregroundColor(fruit.gradientColors[0])
                        //LINK
                        SourceLinkView(fruit: fruit)
                            .padding(.bottom,40)
                            .padding(.top, 10)
                    }//:VSTACK
                    .padding(.horizontal,20).frame(maxWidth:640, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }//:VSTACK
                .navigationBarTitle(fruit.title,displayMode: .inline).navigationBarHidden(true)
            }//:Scroll
            .edgesIgnoringSafeArea(.top)
        }//:Navigation
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
