//
//  ContentView.swift
//  Fructus
//
//  Created by Rajanish Karki on 4/25/22.
//

import SwiftUI

struct ContentView: View {
    //    MARK: Properties
    @State private var isShowingSetting = false
    
    var fruits: [Fruit] = fruitsData
    
    //    MARK: Body
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                   
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                Button(action: {
                isShowingSetting = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }//: Button
                .sheet(isPresented: $isShowingSetting){
                    SettingsView()
                }
            )
        }//: Navigaton
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//    MARK: Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portrait)
            .previewDevice("iPhone 11")
    }
}
