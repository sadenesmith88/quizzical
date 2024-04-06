//
//  QuestionView.swift
//  quizzical
//
//  Created by sade on 4/6/24.
//

import SwiftUI

struct QuestionView: View {
    let question: Question
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswers.count) {
                    answerIndex in
                    Button {
                        print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                    } label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                    }
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question:Game().currentQuestion)
    }
}
