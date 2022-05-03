//
//  ChooseNumberOfPeopleView.swift
//  ZeroGame
//
//  Created by Youngseo Yoon on 2022/05/02.
//

import SwiftUI

struct ChooseNumberOfPeopleView: View {
    @State var numberOfPeople = 4
    @Binding var test: Bool
    
    var body: some View {
        ZStack(){
            Color.mainDarkGreen
            VStack(){
                HStack(){
                    Button(action: {
                        self.test.toggle()
                    }){
//                        NavigationLink(destination: PlayView()) {
                            Image(systemName: "house.circle.fill")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundColor(.white)
//                        }
                    }
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
                            if numberOfPeople < 12 {
                                self.numberOfPeople += 1
                            }
                        }){
                            Image("plus")
                        }
                        Spacer()
                        Button(action: {
                            if numberOfPeople > 0 {
                                self.numberOfPeople -= 1
                            }

                        }){
                            Image("minus")
                        }
                    }
                    .padding([.leading, .trailing], 20)

                }
                
                Rectangle()
                    .frame(width: 392, height: 18)
                    .foregroundColor(.mainOrange)
                Spacer()
                
                Button(action: {}) {
                    NavigationLink(destination: RandomGame()) {
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
                
            }.navigationBarHidden(true)
        }
    }
    
    struct ChooseNumberOfPeopleView_Previews: PreviewProvider {
        static var previews: some View {
            ChooseNumberOfPeopleView(test: .constant(true)).preferredColorScheme(.dark)
        }
    }
    
}
