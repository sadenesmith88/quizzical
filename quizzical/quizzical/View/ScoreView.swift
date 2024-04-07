//
//  ScoreView.swift
//  quizzical
//
//  Created by sade on 4/6/24.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    var correctAnswerCount = 0
    var incorrectAnswerCount = 0
    var body: some View {
        ZStack {
            GameColor.mainColor.ignoresSafeArea()
            VStack{
                Text("Final Score")
                Spacer()
                Text("\(viewModel.percentage)%")
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses) ✅")
                    Text("\(viewModel.incorrectGuesses)❌")
                }
                Spacer()
                NavigationLink {
                    GameView()
                } label: {
                    NextButtonTextView(strin: "Re-take Quiz")
                }
               
            }
            .font(.title)
            .foregroundColor(.white)
            .navigationBarBackButtonHidden(true)
        }
        

    }
}


struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
