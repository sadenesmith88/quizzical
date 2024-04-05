//
//  ContentView.swift
//  quizzical
//
//  Created by sade on 4/3/24.
//

import SwiftUI

struct GameView: View {
    let question = Question(
        questionText: "What country has the highest life expectancy?", possibleAnswers: ["United States", "Canada", "Japan", "Hong Kong"], correctAnswerIndex: 3)
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red:48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        
        ZStack {
            mainColor.ignoresSafeArea()
            
            VStack{
                Text("1/10")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(.white)
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .padding(.horizontal)
                    .foregroundColor(.white)
                Spacer()
                
                
                HStack {
                    
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button {
                            print("Tapped on option with text: \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        } label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        }
                        
                    }
                    
                }
                
                
            }
        }
    }
}
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
        }
    }

