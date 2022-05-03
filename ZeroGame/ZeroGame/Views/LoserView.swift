//
//  LoserView.swift
//  ZeroGame
//
//  Created by Youngseo Yoon on 2022/05/03.
//

import SwiftUI

struct LoserView: View {
    @State var buzzerTapped = false
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
                }.padding()
                
                Image("buzzerAlarm")
                    .resizable()
                    .frame(width: 80, height: 80)
                
                Button(action: {buzzerTapped.toggle()
                    if buzzerTapped == true {
//                        Image("buzzerUnpressed") = !Image("buzzerPressed")
                    }
                }) {
                    Image("buzzerUnpressed")
                        .resizable()
                        .frame(width: 300, height: 300)
                }.padding(.bottom, 20)
                
                Text(
                """
                진 사람은 버저를 누르고
                한 잔 마시기!
                """)
                .multilineTextAlignment(.center)
                .font(Font.custom("Jalnan", size: 30))
                .lineSpacing(20)
                .padding(.bottom, 20)

                Button(action: {}) {
                    NavigationLink(destination: RandomGame()) {
                        Text("다음 게임 하러가기")
                            .font(Font.custom("Jalnan", size: 20))
                            .foregroundColor(.white)
                            .padding([.leading, .trailing], 50)
                            .padding()
                            .background(Color.mainTurquoise)
                            .cornerRadius(13)
                    }
                }
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct LoserView_Previews: PreviewProvider {
    static var previews: some View {
        LoserView().preferredColorScheme(.dark)
    }
}
