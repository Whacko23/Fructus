//
//  SourcesLinkView.swift
//  Fructus
//
//  Created by Rajanish Karki on 4/29/22.
//

import SwiftUI

struct SourcesLinkView: View {
    var body: some View {
        GroupBox{
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }//:Hstack
            .font(.footnote)
        }//:Groupbox
        
    }
}

struct SourcesLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourcesLinkView()
            .previewDevice("iphone 11")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
        
}
