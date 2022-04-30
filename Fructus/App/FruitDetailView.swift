//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Rajanish Karki on 4/29/22.
//

import SwiftUI

struct FruitDetailView: View {
//    Mark: Properties

    var fruit: Fruit
    //    Mark: Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    //Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //Link
                        SourcesLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }//:Vstack
                    .padding(.horizontal, 20 )
                    .frame(maxWidth: 640, alignment: .center)
                }//:Vstack
                .navigationBarHidden(true)
            }//:Scroll
            .edgesIgnoringSafeArea(.top)
        }//:Navigation
    }
}


//    Mark: Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewDevice("iPhone 11")
            .preferredColorScheme(.dark)
    }
}
