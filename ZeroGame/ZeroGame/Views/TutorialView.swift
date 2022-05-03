//
//  TutorialView.swift
//  ZeroGame
//
//  Created by Youngseo Yoon on 2022/05/02.
//

import SwiftUI

struct TutorialView: View {
    var body: some View {
        ZStack{
            Color.mainDarkGreen
            VStack{
                Text("마시면서 배우는 술게임")
                    .font(Font.custom("Jalnan", size: 30))
                    .foregroundColor(.white)
                    .padding()
                Text("제로게임에서 제공하는 튜토리얼입니다 \n 미리 게임을 학습해 보세요")
                    .multilineTextAlignment(.center)
                    .font(Font.custom("Jalnan", size: 15))
                    .foregroundColor(.white)
                    .lineSpacing(5)
                

            }
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
