//
//  RandomGame.swift
//  ZeroGame
//
//  Created by Youngseo Yoon on 2022/05/02.
//

import SwiftUI

struct RandomGame: View {
    
    @State var show = false
    @Binding var test: Bool
    @State var randomGame = gameModel.randomElement()!
    @State var randomSubway = Int.random(in: 1...9)
    @State var randomElevator = Int.random(in: 5...15)
    @State var randomNumber = Int.random(in: 3...12)

    var randomLetters = ["ㄱㄱ", "ㅅㅂ", "ㅁㅁ", "ㄱㅈ", "ㅇㄹ", "ㅅㅈ", "ㅇㅂ", "ㄷㅈ", "ㅊㄴ", "ㅊㅊ", "ㅇㅇ", "ㅂㅂ", "ㅌㅁ", "ㅋㄷ","ㅇㄴ", "ㄴㅂ", "ㅊㅈ"]
    var randomQuestions = ["옆 친구에게 한 마디 하자면?", "오늘의 점심은?", "사랑하는 사람한테 전하고 \n싶은 말은?", "10년뒤의 나에게 해주고 싶은 말은?", "여름 휴가 누구랑 가고 싶어?", "어렸을 적 별명은?", "오른쪽에 있는 친구에게 해주고 \n싶은 말은?", "왼쪽에 있는 친구의 단점은?", "지금 가장 먹고 싶은 건?", "가장 최근에 했던 거짓말을 \n고백하자면?"]
    var randomMenu = ["떡볶이", "감자탕", "케이크", "부대찌개", "제육볶음", "월남쌈", "샌드위치", "김치찌개", "샐러드", "파스타", "볶음밥", "만두전골"]
    
    var body: some View {
            ZStack(){
                Color.mainDarkGreen
                VStack(){
                    HStack(){
                        Button(action: {
                            self.test.toggle()
                        }){
                            Image(systemName: "house.circle.fill")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundColor(.white)
                        }
                        Button(action: {}){
                            Image("soundOn")
                                .resizable()
                                .frame(width: 35, height: 35)
                        }
                        Spacer()
                
                        Button(action: {
                            self.show.toggle()
                            
                        }){
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
                            Image(randomGame.image)
                                .resizable()
                                .frame(width: 312, height: 184)
                            Spacer()
                                .frame(height: 30)
                            Button(action: {
                                randomGame = gameModel.randomElement()!
                            }){
                                Image(systemName: "arrow.clockwise.circle.fill")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(.mainOrange)
                            }
                        }
                    }
                    
                    if randomGame.image == "hunMin_ver1" {
                        Text("제시어")
                            .font(Font.custom("Jalnan", size: 20))
                            .foregroundColor(.white)
                            .padding(10)
                        Text("'\(randomLetters[Int.random(in: 0...16)])'")
                            .font(Font.custom("Jalnan", size: 80))
                            .foregroundColor(.white)
                    } else if randomGame.image == "game_cook" {
                        Text("오늘의 요리")
                            .font(Font.custom("Jalnan", size: 20))
                            .foregroundColor(.white)
                            .padding(10)
                        Text("'\(randomMenu[Int.random(in: 0...11)])'")
                            .font(Font.custom("Jalnan", size: 80))
                            .foregroundColor(.white)
                    } else if randomGame.image == "game_apartment" {
                        Text("아파트 몇 층?")
                            .font(Font.custom("Jalnan", size: 20))
                            .foregroundColor(.white)
                            .padding(10)
                        Text("'\(randomElevator)층'")
                            .font(Font.custom("Jalnan", size: 80))
                            .foregroundColor(.white)
                    }  else if randomGame.image == "game3jiseokjin" {
                        Text("3초 안에 대답해")
                            .font(Font.custom("Jalnan", size: 20))
                            .foregroundColor(.white)
                            .padding(10)
                            .padding(.bottom, 10)
                        Text("'\(randomQuestions[Int.random(in: 0...9)])'")
                            .font(Font.custom("Jalnan", size: 30))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 36)

                    }  else if randomGame.image == "game_subway" {
                        Text("몇 호선")
                            .font(Font.custom("Jalnan", size: 20))
                            .foregroundColor(.white)
                            .padding(10)
                        Text("'\(randomSubway)호선'")
                            .font(Font.custom("Jalnan", size: 80))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    else if randomGame.image == "game_ofdeath" {
                        Text("빵!")
                            .font(Font.custom("Jalnan", size: 20))
                            .foregroundColor(.white)
                            .padding(10)
                        Text("'\(randomNumber)번'")
                            .font(Font.custom("Jalnan", size: 80))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    } else {
                        Text(" ")
                            .font(Font.custom("Jalnan", size: 20))
                            .foregroundColor(.white)
                            .padding(10)
                        Text(" ")
                            .font(Font.custom("Jalnan", size: 80))
                            .foregroundColor(.white)
                    }
                    
                    Button(action: {}) {
                        NavigationLink(destination: LoserView(test: $test)) {
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
                .blur(radius: show ? 20 : 0)

                if show {
                    TutorialPopUp(show: $show, tutorial: randomGame.shortTutorial )
                }
            }.navigationBarHidden(true)
    }
}


struct TutorialPopUp: View {
    @Binding var show: Bool
    var tutorial: String
//    var orangeText = Text("자음에 해당하는 단어")
//        .font(Font.custom("BMJUA", size: 20))
//        .foregroundColor(.mainOrange)
    var body: some View{
        ZStack{
            VStack{
                VStack{
                    HStack{
                        Text("게임 학습하기")
                            .font(Font.custom("BMJUA", size: 20))
                            .padding(.leading, 85)
                        
                        Spacer()
                        
                        Button(action: {
                            self.show.toggle()
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.top, -15)
                    .padding(.horizontal, 50)
                    .padding(.bottom, 40)
                    
                    Text(tutorial)
                        .font(Font.custom("BMJUA", size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .lineSpacing(10)
                        .padding(.bottom, 10)
                    Text("가장 느리게 행동한 벌칙주~")
                        .font(Font.custom("BMJUA", size: 15))
                        .foregroundColor(.black)
                }
                Spacer()
                    .frame(height: 40)
                
                Button(action: {
                    self.show.toggle()
                }) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 19)
                            .frame(width: 226, height: 50)
                            .foregroundColor(.white)
                        Text("게임하러 가기")
                            .font(Font.custom("Jalnan", size: 20))
                            .foregroundColor(.mainOrange)
                    }
                }
                .padding(.top, 20)
            }
            .background(
                Image("popUpSquare")
                    .resizable()
                    .frame(width: 312, height: 347))
            
        }
    }
}


struct RandomGame_Previews: PreviewProvider {
    static var previews: some View {
        RandomGame(show: false, test: .constant(true)).preferredColorScheme(.dark)
    }
}
