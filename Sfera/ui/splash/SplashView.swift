//



import SwiftUI

struct SplashView: View {
    @State var animate = false
    @State var endSplash = false
    
    @State var navigateLogin = false
    @State var navigateHome = false
    @State var normalFlow = true

    
    init() {

         
    }
    var body: some View {
        ZStack {
           if (endSplash){
                NavigationView{
                MainNavigationView()
                }
            }
            else{
        
            ZStack{
                Image("logo").resizable()
                    .aspectRatio(contentMode: animate ? .fill :.fit)
        
            }
            }
        }.onAppear{
            animateSplash()
        }.ignoresSafeArea()
        
    }
    
    func animateSplash() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.90) {
            withAnimation(Animation.easeOut(duration: 0.90)) {
                withAnimation{
                animate.toggle()
                endSplash.toggle()
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
