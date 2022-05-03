//
//  PlayView.swift
//  ZeroGame
//
//  Created by Youngseo Yoon on 2022/05/02.
//

import SwiftUI

struct PlayView: View {
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
                    
                    ZStack{
                        Image("gameLogo_border")
                            .resizable()
                            .frame(width: 342, height: 342)
                        Image("gameLogo")
                            .resizable()
                            .frame(width: 209, height: 225)
                    }
                    
                    Button(action: {}) {
                        NavigationLink(destination: ChooseNumberOfPeople()) {
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
            .navigationBarHidden(true)
        }
        
//        .navigationTitle("")
//            .navigationBarBackButtonHidden(true)
        
    }
}

struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
        PlayView().preferredColorScheme(.dark)
    }
}
