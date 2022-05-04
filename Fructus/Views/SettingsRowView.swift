//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Rajanish Karki on 5/4/22.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String

    var body: some View {
        
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                Text(content)
            }
        }
        
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Hello", content: "World")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
