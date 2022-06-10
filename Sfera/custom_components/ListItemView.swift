//
//  ListItemView.swift
//  Sfera
//
//  Created by Fabiola Llanes on 09/06/22.
//

import SwiftUI

struct ListItemView: View {
    var text:String = ""
    var list: [IconPhotoModel]?
    @Binding var name: String
    @Binding var image: String
    @Binding var status: Bool
    
   
    var body: some View {
        LazyVStack(alignment:.leading){
            Text(text).font(.title3).padding(.leading,20)
            ScrollView(.horizontal){
            LazyHStack{
            
                ForEach(list ?? [],id:\.id) {
                    let item = $0
                    Button(action:{
                        image = item.image;
                        name = item.text;
                        status = true
                        
                    },label:{
                            Image(item.image).resizable().scaledToFill().frame(width: 150, height: 150, alignment: .center).cornerRadius(20)
                        
                    })
                }
                
                
            }.padding(.leading,20)
            }
          
        }
    }
    
    
}



