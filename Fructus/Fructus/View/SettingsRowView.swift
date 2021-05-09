//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Alireza TK on 5/9/21.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    var rowTitle: String
    var rowValue: String? = nil
    var linkLabel:String? = nil
    var linkDestination:String? = nil
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 20)
            HStack {
                Text(rowTitle).foregroundColor(Color.blue).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                if(rowValue != nil){
                    Text(rowValue!).fontWeight(.medium).foregroundColor(Color.purple)
                } else if(linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination:URL(string:"https://\(linkDestination!)")!).foregroundColor(.pink)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

//MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(rowTitle: "Developer", rowValue: "John/Jane").preferredColorScheme(.dark).previewLayout(.sizeThatFits).padding()
            SettingsRowView(rowTitle: "Website", linkLabel: "Link",linkDestination: "google").preferredColorScheme(.dark).previewLayout(.sizeThatFits).padding()
        }
    }
}
