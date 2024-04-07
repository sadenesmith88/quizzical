//
//  GameViewModel.swift
//  quizzical
//
//  Created by sade on 4/6/24.
//

import SwiftUI

class GameViewModel: ObservableObject {
    //mark publsih properties that will update the viewModel when things have changed
    //gameviewmodel will notify user when any changes have been made once user makes guess
    @Published private var game = Game()
    
    
    //keeps track of the current question the user is on
    var currentQuestion: Question {
        game.currentQuestion
    }
    //indicates users progress -- shown at top of screen
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    var gameIsOver: Bool {
        game.isOver
    }
    var correctGuesses: Int {
        game.guessCount.correct
    }
    var incorrectGuesses: Int {
        game.guessCount.incorrect
    }
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    func displayNextScreen() {
        game.updateGameStatus()
    }
    //takes in an index as a parameter and returns a color
    func color(forOptionIndex optionIndex: Int) -> Color {
        //check if user has made a guess
        if let guessedIndex = game.guesses[currentQuestion] {
            //use conditionals to check if users guessed index is equal to the correct answer index, if so, display a color
            if guessedIndex != optionIndex {
                return GameColor.mainColor
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        }
        else { return GameColor.mainColor }
    }
}
