//
//  ChooseNumberOfPeopleView.swift
//  ZeroGame
//
//  Created by Youngseo Yoon on 2022/05/02.
//

import SwiftUI
import AVFAudio

struct ChooseNumberOfPeopleView: View {
    @State var numberOfPeople = 4
    @Binding var test: Bool
    @State var sound: Bool = true
    @State var soundOnOff: String = "soundOn"
    @State var show = false

    
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
                    Button(action: {
                        sound.toggle()
                        if sound == false {
                            soundOnOff = "muteIcon"
                            SoundManager().player?.stop()
                            //                            AVAudioPlayer.play("backgroundMusic")
                        } else {
                            soundOnOff = "soundOn"
                            SoundManager().player?.play()
                        }
                    }){
                        
                        Image(soundOnOff)
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
                    .frame(height: 100)
                
                Text("게임 인원 수 설정하기")
                    .font(Font.custom("Jalnan", size: 30))
                    .padding(.bottom, 30)
                
                Rectangle()
                    .frame(width: 392, height: 18)
                    .foregroundColor(.mainOrange)
                    .padding(.bottom, 10)
                
                ZStack(){
                    Rectangle()
                        .frame(width: 392, height: 165)
                        .foregroundColor(.mainOrange)
                        .padding(.bottom, 10)
                    Text("\(numberOfPeople)명").font(Font.custom("Jalnan", size: 70))
                    HStack{
                        Button(action: {
                            if numberOfPeople > 0 {
                                self.numberOfPeople -= 1
                            }
                        }){
                            Image("minus")
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            if numberOfPeople < 12 {
                                self.numberOfPeople += 1
                            }
                        }){
                            Image("plus")
                        }
                    }
                    .padding([.leading, .trailing], 20)
                }
                Rectangle()
                    .frame(width: 392, height: 18)
                    .foregroundColor(.mainOrange)
                Spacer()
                
                Button(action: {}) {
                    NavigationLink(destination: RandomGame(test: $test)) {
                        Text("랜덤게임 START")
                            .font(Font.custom("Jalnan", size: 20))
                            .foregroundColor(.white)
                            .padding([.leading, .trailing], 50)
                            .padding()
                            .background(Color.mainTurquoise)
                            .cornerRadius(13)
                    }
                }
                .padding(.top, 60)
                Spacer()
                
            }
            .navigationBarHidden(true)
                .blur(radius: show ? 20 : 0)
            
            if show {
                QuestionPopUp(show: $show)
            }
        }
    }
    
    
    
    
    struct ChooseNumberOfPeopleView_Previews: PreviewProvider {
        static var previews: some View {
            ChooseNumberOfPeopleView(test: .constant(true)).preferredColorScheme(.dark)
        }
    }
}

struct QuestionPopUp: View {
    @Binding var show: Bool
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
                    .padding(.top, -25)
                    .padding(.horizontal, 50)
                    .padding(.bottom, 60)
                    
                    Text("지정한 인원 수에 따라 \n다른 랜덤게임이 준비되어 있습니다.")
                        .font(Font.custom("BMJUA", size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .lineSpacing(10)
                        .padding(.bottom, 10)
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
                .padding(.top, 50)
            }
            .background(
                Image("popUpSquare")
                    .resizable()
                    .frame(width: 312, height: 347))
            
        }
    }
}
