//
//  TutorialView.swift
//  ZeroGame
//
//  Created by Youngseo Yoon on 2022/05/02.
//

import SwiftUI

struct TutorialView: View {
    var body: some View {
        NavigationView{
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
                    
                    List{
                        ForEach(gameModel.indices) { row in
                            NavigationLink(destination: TutorialDetailView(Tutorial: gameModel[row].tutorial, gameImage:  gameModel[row].image).navigationBarHidden(true)) {
                                Text(gameModel[row].title)
                                    .font(Font.custom("Jalnan", size: 15))
                                    .foregroundColor(.mainDarkGreen)
                            }
                            .listRowBackground(Color.white)
                        }
                    }
                }
                .padding(.top, 15)
            }
            .navigationBarHidden(true)
        }
        .onAppear() {
            UITableView.appearance().backgroundColor = .clear
        }
    }
}
struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView().preferredColorScheme(.dark)
    }
}

struct TutorialDetailView: View {
    @Environment(\.presentationMode)
    var presentationMode: Binding<PresentationMode>
    
    var Tutorial: String
    var gameImage: String
    
    var body: some View {
        ZStack{
            Color.mainDarkGreen
            VStack{
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "arrow.backward.circle.fill")
                            .foregroundColor(.mainOrange)
                            .background(Circle()
                                .frame(width: 20, height: 20).foregroundColor(.white))
                    }
                    Spacer()
                }
                .font(.largeTitle)
                .padding(.leading, 15)
                .padding(.top, 20)
                Spacer()
                VStack{
                    Image("\(gameImage)")
                        .resizable()
                        .frame(width: 310, height: 180)
                        .padding(.bottom, 40)
                    
                    VStack{
                        Text("게임방법")
                            .font(Font.custom("Jalnan", size: 20))
                            .foregroundColor(.mainDarkGreen)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 20)
                        Text(self.Tutorial)
                            .font(Font.custom("Jalnan", size: 13))
                            .foregroundColor(.mainDarkGreen)
                            .lineSpacing(20)
                            .padding(.horizontal, 15)
                    }
                    .padding(.vertical, 30)
                    .background(
                        RoundedRectangle(cornerRadius: 18)
                            .stroke(style: StrokeStyle(lineWidth: 3, dash: [10,4]))
                            .foregroundColor(.mainTurquoise)
                    )
                    .padding(.horizontal, 20)
                }
                .padding(.vertical, 20)
                .background(
                    RoundedRectangle(cornerRadius: 22)
                )
                .padding(.horizontal, 25)
                Spacer()
            }
        }
//        .navigationBarTitleDisplayMode(.inline)
//        .navigationBarBackButtonHidden(true)
//        .toolbar {
//            ToolbarItem(placement: .cancellationAction) {
//                Button(action: {
////                    print("test")
//                }) {
//                    Image(systemName: "star.fill")
//                }
//            }
//        }
    }
}

//struct Line: Shape {
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//        path.move(to: CGPoint(x: 0, y: 0))
//        path.addLine(to: CGPoint(x: rect.width, y: 0))
//        return path
//    }
//}
