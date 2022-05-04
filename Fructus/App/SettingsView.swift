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
    @AppStorage("isOnboarding") var isOnbarding: Bool = false
    
//    Mark - Body
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                 
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestrol. Fruits are sources of many essential nutrients, including potassium, dietry fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                        
                    }
                    
                    
                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("Toggles the onboarding screen on and off")
                            .padding(.vertical, 8)
                            .frame(minHeight:40)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                            .font(.footnote)
                        
                        
                        Toggle(isOn: $isOnbarding){
                            if isOnbarding{
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                            Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius:8, style: .continuous))
                        )
                        
                    }
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingsRowView(name:"Developer", content: "Raj Karki")
                        SettingsRowView(name:"Designer", content: "MagiX productions")
                        SettingsRowView(name:"Compatibility", content: "iOS 15.0")
                        SettingsRowView(name:"Swift UI", content: "2.0")
                        SettingsRowView(name:"Version", content: "1.3.1")
                            
                        }
                    }
                    
                    
                   
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



// MARK - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11")
    }
}
