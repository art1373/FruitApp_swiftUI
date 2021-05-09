//
//  SettingsView.swift
//  Fructus
//
//  Created by Alireza TK on 5/9/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    //MARK: - SECTION 1
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                            Image("logo").resizable().scaledToFit().frame(width: 80, height: 80).cornerRadius(9)
                            Text("Fruits are an excellent source of essential vitamins and minerals, and they are high in fiber. Fruits also provide a wide range of health-boosting antioxidants, including flavonoids.").font(.footnote)
                        }
                    }//:GroupBox
                    
                    //MARK: - SECTION 2
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical, 4)
                        Text("This toggle switch will resetart the application. If you wish to do this please press the toggle switch")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .padding(.vertical, 8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding, label: {
                            if isOnboarding {
                                Text("RESTARTED")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        )
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous)))
                    }
                    
                    //MARK: - SECTION 3
                    GroupBox(label:
                                SettingsLabelView(labelText: "Application", labelImage: "iphone")
                    ){
                        SettingsRowView(rowTitle: "Developer", rowValue: "Alireza TK")
                        SettingsRowView(rowTitle: "Github", linkLabel: "GithubURL",linkDestination: "github.com/art1373")
                        SettingsRowView(rowTitle: "Twitter", linkLabel: "MyTweets", linkDestination: "twitter.com/Alirezatk73")
                        
                    }
                    
                    
                }//:VSTACK
                .navigationBarTitle("Settings", displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action:{
                                            presentationMode.wrappedValue.dismiss()
                                        }){
                                            Image(systemName: "xmark")
                                        })
                .padding()
            }//:SCROLL
        }//:NAVIGATION
        
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12")
    }
}
