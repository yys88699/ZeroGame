//
//  RandomGame.swift
//  ZeroGame
//
//  Created by Youngseo Yoon on 2022/05/02.
//

import SwiftUI

struct RandomGame: View {
    var body: some View {
        ZStack(){
            Color.mainDarkGreen
            VStack(){
                HStack(){
                    Button(action: {}){
                        Image("soundOn")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                    Spacer()
                    Button(action: {}){
                        Image(systemName: "questionmark.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundColor(.white)
                    }
                }
                .padding()
                Spacer()
                    .frame(height: 40)
                
                ZStack(){
                    RoundedRectangle(cornerRadius: 22)
                        .frame(width: 340, height: 313)
                        .foregroundColor(.white)
                    VStack{
                        Spacer()
                            .frame(height: 20)
                        Image("hunMin_ver1")
                            .resizable()
                            .frame(width: 312, height: 184)
                        Spacer()
                            .frame(height: 30)
                        Button(action: {}){
                            Image(systemName: "arrow.clockwise.circle.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(.mainOrange)
                        }
                    }
                }
                Text("제시어")
                    .font(Font.custom("Jalnan", size: 20))
                    .foregroundColor(.white)
                    .padding(10)
                
                Text("'ㅊㅅ'")
                    .font(Font.custom("Jalnan", size: 80))
                    .foregroundColor(.white)
                Button(action: {}) {
                    NavigationLink(destination: ChooseNumberOfPeople()) {
                        Text("게임 종료")
                            .font(Font.custom("Jalnan", size: 20))
                            .foregroundColor(.white)
                            .padding([.leading, .trailing], 90)
                            .padding()
                            .background(Color.mainTurquoise)
                            .cornerRadius(13)
                    }
                }
                .padding(.top, 10)
                Spacer()
            }
            
        }.navigationBarHidden(true)
    }
}

struct RandomGame_Previews: PreviewProvider {
    static var previews: some View {
        RandomGame().preferredColorScheme(.dark)
    }
}
