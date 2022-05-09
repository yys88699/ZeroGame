//
//  PlayView.swift
//  ZeroGame
//
//  Created by Youngseo Yoon on 2022/05/02.
//

import SwiftUI


struct PlayView: View {
    @State var test = false
//    @State private var isAnimating = true
    var foreverAnimation: Animation {
        Animation.linear(duration: 1.0)
            .repeatForever(autoreverses: false)
    }
    
    @State private var degrees = 0.0
    @State private var isAnimating = false
    @State private var showProgress = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.mainDarkGreen
                
                let O = Text("O")
                    .font(Font.custom("Jalnan", size: 40, relativeTo: .title))
                    .foregroundColor(.mainOrange)
                let E = Text("E")
                    .font(Font.custom("Jalnan", size: 40, relativeTo: .title))
                    .foregroundColor(.mainOrange)
                let zero = Text("Z\(E)R\(O)!").font(Font.custom("Jalnan", size: 40, relativeTo: .title))
                
                VStack{
                    Text(
                    """
                    고민할 시간은 \(zero)
                    쉽고 재밌게 술게임을 즐겨 보세요
                    """)
                    .font(Font.custom("Jalnan", size: 20, relativeTo: .title))
                    .multilineTextAlignment(.center)
                    .lineSpacing(20)
                    .padding(.bottom, 40)
                    
                    Image("gameLogo")
                        .resizable()
                        .frame(width: 209, height: 225)
                        .background(
                            Group{
                                Circle()
                                    .stroke(style: StrokeStyle(lineWidth: 3, dash: [8,3]))
                                    .foregroundColor(.mainOrange)
                                    .frame(width: 342, height: 342)
                                    .rotationEffect(.degrees(degrees))
//                                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                                    .transition(.opacity)
                                    .onAppear {
                                        let d = 210.0
                                        withAnimation (foreverAnimation) {
                                            self.degrees += d
                                        }
                                    }
                                    .transition(.opacity)
                                
                                Circle()
                                    .frame(width: 328, height: 328)
                                    .foregroundColor(.white)
                                Circle()
                                    .frame(width: 312, height: 312)
                                    .foregroundColor(.mainTurquoise)
                            }
                        ).padding(.vertical, 55)
                    
                    
                    
//                    ZStack{
//                        Group{
//                            Circle()
//                                .stroke(style: StrokeStyle(lineWidth: 3, dash: [8,3]))
//                                .foregroundColor(.mainOrange)
//                                .frame(width: 342, height: 342)
//                            Circle()
//                                .frame(width: 328, height: 328)
//                                .foregroundColor(.white)
//                            Circle()
//                                .frame(width: 312, height: 312)
//                                .foregroundColor(.mainTurquoise)
//                        }
//                        .rotationEffect(Angle.degrees(300))
//                        .animation(self.foreverAnimation)
//
//                        Image("gameLogo")
//                            .resizable()
//                            .frame(width: 209, height: 225)
//                    }
                        
                        
//                Image("gameLogo")
//                    .resizable()
//                    .frame(width: 209, height: 225)
//                    .background(
//                        Group{
//                            Circle()
//                                .stroke(style: StrokeStyle(lineWidth: 3, dash: [8,3]))
//                                .foregroundColor(.mainOrange)
//                                .frame(width: 342, height: 342)
//                                .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
//                                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
//                                .transition(.opacity)
//                                .onAppear {
//                                    withAnimation {
//                                        self.isAnimating = true
////                                        Animation.easeInOut(duration: 2.0)
////                                            .repeatForever(autoreverses: false)
//                                    }
//                                }
//                                .transition(.opacity)
//                                .animation(self.foreverAnimation)
                            
//                            Circle()
//                                .frame(width: 328, height: 328)
//                                .foregroundColor(.white)
//                            Circle()
//                                .frame(width: 312, height: 312)
//                                .foregroundColor(.mainTurquoise)
//                        }
//                        .animation(.default, value: self.isAnimating)
//                    ).padding(.vertical, 55)
//
                    
                    Button(action: {
                        self.test.toggle()
                    }) {
                        NavigationLink(destination: ChooseNumberOfPeopleView(test: self.$test), isActive: self.$test) {
                            Text("랜덤게임 START")
                                .font(Font.custom("Jalnan", size: 20))
                                .foregroundColor(.white)
                                .padding([.leading, .trailing], 50)
                                .padding()
                                .background(Color.mainOrange)
                                .cornerRadius(13)
                        }
                    }
                    .padding(.top, 60)
                }
            }
            .onAppear(perform: {
                SoundManager.instance.playSound(sound: .backgroundMusic)
            })
            .navigationBarHidden(true)
        }
    }
}

struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
        PlayView().preferredColorScheme(.dark)
    }
}
