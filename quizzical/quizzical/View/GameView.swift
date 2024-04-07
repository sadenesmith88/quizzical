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
    @StateObject var viewModel = GameViewModel()
    let accentColor = Color(red:48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        
        ZStack {
            GameColor.mainColor.ignoresSafeArea()
            
            VStack{
                Text(viewModel.questionProgressText)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(.white)
                    .navigationBarBackButtonHidden(true)
                QuestionView(question: viewModel.currentQuestion)
                    .environmentObject(viewModel)
                Spacer()
            }
        }
    }
}

    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
        }
    }

