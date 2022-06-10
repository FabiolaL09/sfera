//
//  SelecIconUserView.swift
//  Sfera
//
//  Created by Fabiola Llanes on 09/06/22.
//

import SwiftUI

struct SelecIconUserView: View {
    
    @Binding var profilePic:String
    @State var idPhoto : Int = 1
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State var photos = [
       
        IconPhotoModel(id: 1, image: "icon_photo", text: "Foto 1"),
        IconPhotoModel(id: 2, image: "icon_photo2", text: "Foto 2"),
        IconPhotoModel(id: 3, image: "icon_photo3", text: "Foto 3"),
        IconPhotoModel(id: 4, image: "icon_photo4", text: "Foto 4"),
        IconPhotoModel(id: 5, image: "profile_photo", text: "Foto 5")
        
    ]
    
    var body: some View {
        ScrollView{
        
            LazyVGrid(columns: columns){
                
                
                IconProfileView(profilePic: $profilePic, idPhoto: $idPhoto, action: {}, list: photos)
                
            }
        }.navigationTitle("Fotos de perfil")
    }
}

struct SelecIconUserView_Previews: PreviewProvider {
    @State static var test = "icon_photo"
    static var previews: some View {
        SelecIconUserView(profilePic: $test)
    }
}

struct IconProfileView: View {
    @Binding var profilePic:String
    @Binding var idPhoto: Int
    
    var action:()->()
    var list: [IconPhotoModel]?
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View{
        if (list != nil && list!.count > 0){
   
        ForEach(list ?? [],id:\.id) {
            let item = $0
            Button(action:{
                profilePic = item.image; idPhoto = item.id;        self.presentationMode.wrappedValue.dismiss()
                
            },label:{
                VStack{
                    ProfilePhotoRow(image: item.image, name: item.text)
                    
                }.padding()

            })
            
        }
        
        }
    }
    

}

struct ProfilePhotoRow: View {
    var image: String
    var name: String
    
    var body: some View {
        
        VStack{
            Image(image).resizable().scaledToFill().frame(width: 87, height: 87, alignment: .center).cornerRadius(20)
            
                Text(name).foregroundColor(.black)
   
        }
    }
}
