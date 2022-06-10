//
//  PersonView.swift
//  Sfera
//
//  Created by Fabiola Llanes on 09/06/22.
//

import SwiftUI

struct PersonView: View {
    
    var image :String = ""
    var name: String = ""
    
    var body: some View {
        VStack{
            
            Image(image).resizable().scaledToFill().frame(width: 200, height: 200).clipShape(Circle()).overlay(Circle().stroke(Color("lila"),lineWidth: 1)).shadow(color: Color("lila"), radius: 5, x: 2, y: 2)
            
            Text (name).font(.largeTitle)
            
            Spacer()
            
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}
