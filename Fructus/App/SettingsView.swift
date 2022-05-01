//
//  SettingsView.swift
//  Fructus
//
//  Created by Rajanish Karki on 4/29/22.
//

import SwiftUI

struct SettingsView: View {
//    Mark - Settings
    @Environment(\.presentationMode) var presentationMode
//    Mark - Body
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }//: Vstack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
            )
                
                .padding()
            }//: Scroll
        }//: Navigation
    }
}


// MARK - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11")
    }
}
