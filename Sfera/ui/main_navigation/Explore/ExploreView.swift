//
//  ExploreView.swift
//  Sfera
//
//  Created by Fabiola Llanes on 09/06/22.
//


import SwiftUI
import Foundation

struct ExploreView: View {
   
    @Environment(\.openURL) var openURL

    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(named: "lila")
        UIPageControl.appearance().pageIndicatorTintColor =  UIColor(named: "lila")?.withAlphaComponent(0.2)
        UIPageControl.appearance().preferredIndicatorImage = UIImage(systemName: "circle.fill")?.resized(toWidth: 20)
        
           }
    
    var body: some View {
        
        VStack{
            
            
            TabView {
                
                VStack(spacing: 20){
                    
                    Image("logo") .resizable().aspectRatio(contentMode: .fit) .frame(width:UIScreen.main.bounds.width ,height:UIScreen.main.bounds.height/2.8)
                    Text("1 - En Sferea creamos las Apps que impulsan a las empresas y organizaciones líderes en México, Estados Unidos y LATAM").font(.system(size:15)).foregroundColor(Color("black")).multilineTextAlignment(.center)
                    
//                    VStack{}.frame(width: 15, height: 15)
                        
                    
                }
                VStack(spacing: 20){
                    
                    Image("sfera2") .resizable().aspectRatio(contentMode: .fit).frame(width:UIScreen.main.bounds.width ,height:UIScreen.main.bounds.height/2.8)
                    
                    Text("2 - Transformamos ideas y necesidades empresariales en experiencias digitales móviles.").font(.system(size:15)).foregroundColor(Color("black")).multilineTextAlignment(.center)
                    
                }
                VStack(spacing: 20){
                    
                    Image("logo") .resizable().aspectRatio(contentMode: .fit).frame(width:UIScreen.main.bounds.width ,height:UIScreen.main.bounds.height/2.8)
                    
                    Text("3 - Comprometidos a generar Apps útiles, intuitivas, seguras pero sobre todo innovadoras.").font(.system(size:15)).foregroundColor(Color("black")).multilineTextAlignment(.center)
                    
                }
         
                
            }.padding(.horizontal).tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
            Button(action: {
                openURL(URL(string: "https://sferea.com/index.html")!)
            }, label: {
                Text("Conocenos").foregroundColor(Color("lila"))
                
                
                
            })
            
            
        }.padding(.bottom,50)


    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}

extension UIImage {
    func resized(toWidth width: CGFloat) -> UIImage? {
        let canvasSize = CGSize(width: width, height: CGFloat(ceil(width/size.width * size.height)))
        UIGraphicsBeginImageContextWithOptions(canvasSize, false, scale)
        defer { UIGraphicsEndImageContext() }
        draw(in: CGRect(origin: .zero, size: canvasSize))
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}


