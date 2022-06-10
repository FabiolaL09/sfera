//
//  HomeView.swift
//  Sfera
//
//  Created by Fabiola Llanes on 09/06/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var name: String = ""
    @State var image: String = ""
    @State var isNavigatePerson = false
    
    let hour = Calendar.current.component(.hour, from: Date())
    
    @State var photos = [
       
        IconPhotoModel(id: 1, image: "icon_photo", text: "Foto 1"),
        IconPhotoModel(id: 2, image: "icon_photo2", text: "Foto 2"),
        IconPhotoModel(id: 3, image: "icon_photo3", text: "Foto 3"),
        IconPhotoModel(id: 4, image: "icon_photo4", text: "Foto 4"),
        IconPhotoModel(id: 5, image: "profile_photo", text: "Foto 5")
        
    ]
    
    var body: some View {
      
        VStack{
            
            HStack{
                if (hour >= 0 && hour < 12 || hour == 24){
                    
                    withAnimation{
                        Text("Buenos días").font(.title).fontWeight(.bold) .foregroundColor(Color.init("lila")).frame(width: 201, height: 56, alignment: .leading)
                    }
                    
                   
                }else if(hour >= 12 && hour < 18){
                    withAnimation{
                        Text("Buenas tardes").font(.title).fontWeight(.bold) .foregroundColor(Color.init( "lila")).frame(width: 201, height: 56, alignment: .leading)
                    }
                    
                }else{
                    withAnimation{
                        Text("Buenas noches").font(.title).fontWeight(.bold) .foregroundColor(Color.init( "lila")).frame(width: 201, height: 56, alignment: .leading)
                    }
            }
                Spacer()
            }.padding(.leading,20)
            
            ScrollView{
                
              
            
                ListItemView(text: "Los más conocidos", list: photos, name: $name, image: $image, status: $isNavigatePerson)
        
                ListItemView(text: "Equipo", list: photos, name: $name, image: $image,status: $isNavigatePerson)
        
                ListItemView(text: "Personas", list: photos, name: $name, image: $image, status: $isNavigatePerson)
        
                ListItemView(text: "Experiencias", list: photos, name: $name, image: $image, status: $isNavigatePerson)
            }
          
            
        }.background(
            
            NavigationLink(destination: PersonView(image: image, name: name), isActive:$isNavigatePerson){
                
            }.hidden()
            )
            
        
      
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {

       HomeView()
    }
}
