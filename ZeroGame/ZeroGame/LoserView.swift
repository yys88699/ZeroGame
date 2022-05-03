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
                Spacer()
                
                Button(action: {buzzerTapped.toggle()
                    if buzzerTapped == true {
//                        Image()
                    }
                }) {
                    Image("buzzer")
                        .resizable()
                        .frame(width: 326, height: 442)
                }
                Text(
                """
                진 사람은 버저를 누르고
                한 잔 마시기!
                """)
                .multilineTextAlignment(.center)
                .font(Font.custom("Jalnan", size: 30))
                Spacer()
            }
        }
    }
}

struct LoserView_Previews: PreviewProvider {
    static var previews: some View {
        LoserView().preferredColorScheme(.dark)
    }
}
