//
//  ContentView.swift
//  quizzical
//
//  Created by sade on 4/3/24.
//

import SwiftUI

struct GameView: View {
   
    @StateObject var viewModel = GameViewModel()
    let accentColor = Color(red:48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        NavigationStack {
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
            }.background(
                NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.gameIsOver), label: { EmptyView() })
            ).navigationBarBackButtonHidden(true)
        }
      
    }
}

    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
        }
    }

