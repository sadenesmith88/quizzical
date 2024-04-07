//
//  QuestionView.swift
//  quizzical
//
//  Created by sade on 4/6/24.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    var body: some View {
        ZStack {
            GameColor.mainColor.ignoresSafeArea()
            VStack {
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    
                Spacer()
                HStack {
                    ForEach(0..<question.possibleAnswers.count) {
                        answerIndex in
                        Button {
                            print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                            viewModel.makeGuess(atIndex: answerIndex)
                        } label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        }
                    }
                }
                    if viewModel.guessWasMade {
                        Button {
                            viewModel.displayNextScreen()
                        } label: {
                            NextButtonTextView(strin: "Next")
                        }

                    }
                }
            }
        }
    }


struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question:Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}
