//
//  ProfileView.swift
//  Sfera
//
//  Created by Fabiola Llanes on 09/06/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State var name: String =  "Juan"
    @State var lastname: String = "Valen"
    @State var iconName: String = "profile_photo"
    @State var isNavigateEditProfile = false
    @State var isNavigateSusccription = false
    @State var  isNavigateConfiguration = false
    
    var body: some View {
        VStack{
            
            ZStack{
                
                Image(iconName).resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150, alignment: .center).cornerRadius(40)
                
                Button(action:{
                    isNavigateEditProfile = true
                },label:{  Image(systemName: "pencil").resizable().aspectRatio(contentMode: .fit).foregroundColor(.white) .frame(width: 25, height: 25).padding(15).background(Color("lila"),in:Circle()).cornerRadius(6).shadow(color: .black.opacity(0.09), radius: 5, x: 5, y: -5)
                }).offset(x: 60, y: 60)
                
            }.frame(
                minWidth: 0,
                maxWidth: .infinity,
                alignment: .center)
            
            Text("Hola, \(name) \(lastname)").font(.title).frame(maxWidth: .infinity,alignment: .center)
            
            Button(action: {
                isNavigateConfiguration = true
            }, label: {
                Text("Configuración").foregroundColor(Color("black")).font(.title3).frame(maxWidth: .infinity,alignment: .leading)
            }).padding(.top, 30)
            
            Divider().padding(.top, 10)
            
            Button(action: {
                isNavigateSusccription = true
            }, label: {
                Text("Suscripción").foregroundColor(Color("lila")).font(.title3).frame(maxWidth: .infinity,alignment: .leading)
            }).padding(.top, 5)
            
            Divider().padding(.top, 10)
            
            Spacer()
            
        }.padding(.horizontal).padding(.top,20).background(
            Group{
            
            NavigationLink(destination: EditProfileView(firstName: $name, lastName: $lastname, iconProfile: $iconName), isActive:$isNavigateEditProfile){
                
            }.hidden()
                
                NavigationLink(destination: SuscriptionView(), isActive:$isNavigateSusccription){
                    
                }.hidden()
                
                NavigationLink(destination: ConfigurationView(), isActive:$isNavigateConfiguration){
                    
                }.hidden()
                
            }

    )
        
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

