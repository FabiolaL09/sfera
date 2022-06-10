//
//  SuscriptionView.swift
//  Sfera
//
//  Created by Fabiola Llanes on 09/06/22.
//

import SwiftUI

struct SuscriptionView: View {
    var body: some View {
        VStack{
            
            Text("Para ver tu suscripción accede desde tu celular a:").foregroundColor(Color("black")).font(.title3).padding(.top, 10)
            
            HStack(spacing:5){
                
                Text("Configuración").foregroundColor(Color("black")).font(.title3)
                
                Image("setting")
                
                Text("> Mis suscripciones").foregroundColor(Color("black")).font(.title3)
                
              
            
            }
            Spacer()
        
        }.navigationTitle("Suscripción")
        
    }
}

struct SuscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SuscriptionView()
    }
}
