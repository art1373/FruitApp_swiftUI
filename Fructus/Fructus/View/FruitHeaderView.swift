//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Alireza TK on 5/8/21.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isImageAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image).resizable().scaledToFit().shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8).padding(.vertical, 20)
                .scaleEffect(isImageAnimating ? 1.0 : 0.6)
            
        }//: ZSTACK
        .frame(height:440)
        .onAppear(){
            withAnimation(.easeOut(duration:0.5)){
                isImageAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
    }
}
