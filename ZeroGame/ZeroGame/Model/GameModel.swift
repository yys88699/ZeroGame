//
//  GameModel.swift
//  ZeroGame
//
//  Created by Youngseo Yoon on 2022/05/03.
//

import Foundation
import SwiftUI

struct Game{
    let title: String
    let image: String
    let shortTutorial: String
    let tutorial: String
    let leastNumberOfPeople: Int
    var suggestion : [String]?
    
    
    
}

var gameModel = [
    Game(title: "훈민정음", image: "hunMin_ver1",shortTutorial: "주어진 자음에 해당하는 단어를 \n최대한 빠르게 말해보세요!", tutorial: "특정 자음을 이야기하고 그 자음에 해당하는 단어를 먼저 말한다. 마지막에 말하는 사람이 벌칙을 받는다. 예를 들어 문제를 내는 사람이 'ㅅㄱ'이라고 말하면 사과, 수건, 습관 등 초성에 해당하는 단어를 이야기 한다.", leastNumberOfPeople: 2),
    Game(title: "세글자 게임", image: "game3words", shortTutorial: "세 글자로 이루어진 단어들로 \n이야기를 이어나가보세요. \n말이 되지 않는 않게 되면 탈락!", tutorial: "순서대로 '세 글자를 외치면 되는데, 이 세글자로 문장을 이어나가야 한다. 만약 차례가 된 사람이 세 글자로 말하지 못하거나, 전의 문장과 맥락이 이어지지 않은 세 글자를 말하면 벌칙을 받게 된다. 또한 문장이 끝나는 순간에는 게임이 끝나므로 마지막 문장을 말한 사람 또한 벌칙을 받는다.", leastNumberOfPeople: 2),
    Game(title: "지하철 게임", image: "game_subway", shortTutorial: "자기 차례가 되면 주어진 호선에 \n맞는 역을 중복되지 않게 말해보세요. \n중복되거나 모르면 탈락!", tutorial: "주어진 호선을 기준으로 순서대로 1호선에 있는 역을 하나씩 돌아가면서 말하면 된다. 단, 앞에 사람이 말했던 곳을 중복해서 말하면 게임 끝! 돌아가면서 말하다가 자기 차례 때 말을 못 해도 게임이 끝난다.", leastNumberOfPeople: 2),
    Game(title: "지석진 게임", image: "game3jiseokjin", shortTutorial: "주어진 질문에 동문서답을 하면 \n이기는 게임. 조금이라도 \n말이 되면 탈락!", tutorial: "주어진 질문에 연속으로 동문서답하면 이기는 게임이다. 예를 들어 '여름 휴가 누구와 가고 싶어?'의 질문에 대답으로 올 수 없는 '빨간색'을 외치면 된다.", leastNumberOfPeople: 2),
    Game(title: "아파트 게임", image: "game_apartment", shortTutorial: "손을 가운데로 모아 양손을 \n겹치세요. 주어진 층수에 따라 아래에서 \n하나씩 손을 빼서 마지막 층수에 \n남아 있는 손이 탈락!", tutorial: "게임 참여 모든 인원이 중앙으로 양손을 모두 엇갈리게 겹친 뒤 주어진 층수에 따라 손바닥을 한 층씩 하나하나 빼주면서 위로 쌓기를 하는 게임이다. 쌓다가 말했던 층수에 도달하면 벌칙에 당첨이 되고 게임이 끝난다.", leastNumberOfPeople: 3),
    Game(title: "오늘은 내가 요리사", image: "game_cook", shortTutorial: "메뉴에 들어가지 않는 재료를 \n말하거나 취향에 맞지 않는 재료가 \n나오면 탈락", tutorial: "주어진 메뉴를 정하고 돌아가면서 이 메뉴에 들어가는 재료를 말한다. 예를 들어 '떡볶이'에 A: 떡이 들어가고, B: 고추장이 들어가고, C: 깻잎이 들어간다. 이때 메뉴에 어울리지 않는 재료를 말하거나, 또는 취향에 반할 경우 해당 사람이 술을 마시게 된다.", leastNumberOfPeople: 4),
    Game(title: "손병호 게임", image: "game_sonbyeongho", shortTutorial: "손가락 5개를 펴서 질문을 주고 받으세요. \n해당하는 질문이 오면 그 인원은 \n모두 손가락 하나를 접습니다. \n모두 접히면 탈락",  tutorial: "모든 게임 참여자는 한 손을 위로 올리고 손가락 5개를 펼친다. 이후 한 가지씩 조건이 뜨면 그 조건에 해당하는 모든 인원은 손가락을 하나씩 접는다. 예를 들어 '흰색 옷 접어'가 나오면 흰색 옷에 해당하는 인원이 손가락 하나를 접는다. 마지막에 더이상 접을 손가락이 없는 사람이 게임에서 지게된다.", leastNumberOfPeople: 3),
    Game(title: "더게임오브데스", image: "game_ofdeath", shortTutorial: "한 손으로 아무나 한 명을 지목하세요! \n숫자를 하나씩 차감하면서 \n손가락을 따라 이동하세요. \n숫자가 끝나면 탈락", tutorial: "인트로가 끝나는 순간, 자리에 있는 모든 사람들이 동시에 한 손을 뻗어서 아무나 한 명을 지목하면 된다. 그리고는 술래부터 지목한 사람을 향해 정해진 숫자를 하나씩 차감하면서 외친다. 그러다가 정해진 숫자가 1이 되면 이때 지목당한 사람이 술을 마시게 된다. ", leastNumberOfPeople: 4),
    Game(title: "전화걸기", image: "game_call",shortTutorial: "지인에게 전화를 걸어 \n가장 늦게 받는 사람이 탈락", tutorial: "전화를 가장 빠르게 받을 것 같은 친구에게 전화 또는 문자를 보낸다. 가장 느리게 답이 온 사람이 벌칙을 받는다.", leastNumberOfPeople: 2),
    Game(title: "딸기게임", image: "game_strawberry", shortTutorial: "아이엠그라운드 딸기게임 버전. \n8박자로 이루어진 게임으로 \n1,2 ... 8 ... 2, 1 순으로 \n돌아온다.박자를 놓치면 탈락 ", tutorial: "딸기를 외치는 숫자는 1부터 8까지 한 사람씩 돌아가면서 외치고 다시 8부터 1까지 이어가며 진행하면 된다. A: '딸기', B: '딸기딸기', C: '딸기딸기딸기' ... M: '딸기딸기딸기', N: '딸기딸기', O: '딸기'. 이렇게 순서대로 딸기를 외치며 숫자 또는 박자를 틀리는 사람이 나올 때까지 계속해서 게임을 이어나가면 된다.", leastNumberOfPeople: 4),
    Game(title: "전국 노래 자랑", image: "hunMin_ver1", shortTutorial: "인트로를 부르며 술래는 어떤 행동을 \n하면서 일어난다. 가장 늦게 행동한 \n사람이 탈락", tutorial: "인트로를 부르며 술래는 어떤 행동을 하면서 일어난다. 예를 들어 왼쪽 손으로 숟가락을 들고 일어난다. 이때 가장 늦거나 틀린 사람이 패배. 술래는 몇 개 없는 물건을 들거나 어려운 행동을 취한다면 난이도가 올라가는 게임이다.", leastNumberOfPeople: 3)
    
]
