//
//  EditProfileView.swift
//  Sfera
//
//  Created by Fabiola Llanes on 09/06/22.
//

import SwiftUI

struct EditProfileView: View {
    
    
    @Binding var firstName: String
    @Binding var lastName: String
    @Binding var iconProfile:String
    @State var isNavigateChangePhoto = false
    
    var body: some View {
        VStack(alignment: .leading){
            
            HStack{
                Button(action: {
                    isNavigateChangePhoto = true
                }, label: {
                    
                     Image(iconProfile).resizable().aspectRatio(contentMode: .fill) .frame(width: 40, height: 40, alignment: .center).cornerRadius(10)
                    
                    
                    Spacer()
                    
                    Text("Cambiar foto de perfil").foregroundColor(Color("black"))
                    Spacer()
                
                    Image(systemName: "chevron.right").foregroundColor(Color("black"))
                })
                
            }.padding(.horizontal)
            
        Divider()
            
            VStack(alignment: .leading){
                Text("Nombre").font(.system(size: 15)).fontWeight(.semibold).foregroundColor(Color("gray_profile"))
                TextField("Ingrese su nombre", text:$firstName).padding(.leading)
                
            }.padding()
            
        Divider()
            
            VStack(alignment: .leading){
                Text("Apellido").font(.system(size: 15)).fontWeight(.semibold).foregroundColor(Color("gray_profile"))
                TextField("Ingrese su apellido", text:$lastName).padding(.leading)
            }.padding()
            
            Spacer()
            
        }.padding(.horizontal).navigationTitle("Editar perfil").background(
            
            NavigationLink(destination:SelecIconUserView(profilePic: $iconProfile), isActive:$isNavigateChangePhoto){
                
            }.hidden()

    )
    }
}

struct EditProfileView_Previews: PreviewProvider {
    @State static var iconProfile:String = "profile_photo"
    @State static var name: String = "Jorge"
    @State static var lastname: String = "XX"
    
    static var previews: some View {
        EditProfileView( firstName: $name, lastName: $lastname, iconProfile: $iconProfile)
    }
}
