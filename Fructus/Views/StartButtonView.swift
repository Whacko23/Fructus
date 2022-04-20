//
//  StartButtonView.swift
//  Fructus
//
//  Created by Rajanish Karki on 4/19/22.
//

import SwiftUI

struct StartButtonView: View {
    
//    MARK - Properties
    
//    MARK - Body
    

    var body: some View {
        Button(action: {print("Exit the onBoarding")})
        {
            HStack(spacing:8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .accentColor(.white)
    }

//    MARK - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
        }
    }
}
