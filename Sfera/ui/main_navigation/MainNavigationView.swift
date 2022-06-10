//
//  MainNavigationView.swift
//  Sfera
//
//  Created by Fabiola Llanes on 09/06/22.
//

import SwiftUI

struct MainNavigationView: View {
    @StateObject var viewModel = MainNavigationViewModel()
    @Namespace var animation
    init(){
    }
    let screenSize: CGRect = UIScreen.main.bounds
    var screenPercentage:CGFloat = 45
    
    
    var body: some View {
        
        
        VStack( spacing: 0){
            ZStack{
            
            
            TabView(selection: $viewModel.currentTab){
                
                HomeView().tag("Inicio")
                ExploreView().tag("Anuncios")
                ProfileView().tag("Perfil")
            }
           
        }
        .overlay(
            HStack{
                TabBarButton(title: "Inicio", image: "home_ic")
                TabBarButton(title: "Anuncios", image: "megaphone")
                TabBarButton(title: "Perfil", image: "person_ic")
              
                
                
            }.environmentObject(viewModel).padding(.horizontal).padding(.bottom,self.screenSize.height/screenPercentage).background(Color("white_main"),in:Rectangle()).shadow(color: .black.opacity(0.09), radius: 5, x: 5, y: -5), alignment: .bottom
        
        ).ignoresSafeArea().navigationTitle(viewModel.currentTab)
    }
        
}

struct MainNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigationView()
    }
}


//TabBarButton

struct TabBarButton:View{
    var title:String
    var image:String
    @EnvironmentObject var tabData:MainNavigationViewModel
    
    var body: some View{
        Button{
            withAnimation{
                tabData.currentTab = title
            }
        } label:{
            VStack{
                Image(image).renderingMode(.template).font(.title2).frame(height:18)
                Text(title).font(.caption.bold())
            }.foregroundColor(tabData.currentTab == title ? Color("lila"): Color("black_icon")).frame(maxWidth:.infinity).padding(.top,15).overlay(
                ZStack{
                    if tabData.currentTab == title{
                        TabIndicator().fill(Color("lila"))
                    }
                }, alignment: .center
            
            )
            
        }
           
        }
    }
}


//TabBarindicator

struct TabIndicator:Shape{
    func path(in rect:CGRect)->Path{
        let radius:CGFloat = 10
        return Path{path in
            path.move(to:CGPoint(x:rect.width*0.1,y:0))
            path.addLine(to: CGPoint(x: rect.width*0.9, y: 0))
            path.addArc(center: CGPoint(x: rect.width*0.9-radius, y:rect.height/5-radius), radius: radius, startAngle: .degrees(0), endAngle: .degrees(90), clockwise: false)
            path.addArc(center: CGPoint(x: rect.width*0.1+radius, y:rect.height/5-radius), radius: radius, startAngle: .degrees(90), endAngle: .degrees(180), clockwise: false)
            path.addLine(to: CGPoint(x: rect.width*0.1, y: rect.height/5))
         
            
        }
    }
}
