//
//  ConfigurationView.swift
//  Sfera
//
//  Created by Fabiola Llanes on 09/06/22.
//

import SwiftUI

import SwiftUI

struct ConfigurationView: View {
    @AppStorage("isDarkMode") var isDarkMode: Bool = false

    var body: some View {
        
            ScrollView{
                VStack{
                     
                    HStack {
                        
                        Text("Dark Mode")
                            .foregroundColor(Color("black"))
                        
                        Spacer()
            
                        Toggle("Sound", isOn:$isDarkMode)
                            .labelsHidden()
                            .toggleStyle(SwitchToggleStyle(tint: Color("lila")))
        
                    }.padding()
            
                }
            }.padding(20)
        }
        
        
        }



struct ConfigurationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfigurationView()
    }
}
