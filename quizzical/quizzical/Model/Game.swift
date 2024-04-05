//
//  Game.swift
//  quizzical
//
//  Created by sade on 4/4/24.
//

import Foundation

struct Game {
    private (set) var currentQuestionIndex = 0
    private(set) var guesses = [Question: Int] ()
    
//determine if the game has ended
    private(set) var isOver = false
    //shuffles the questiosn array and stores them in questions variable
    private let questions = Question.allQuestions.shuffled()
    
    //guessCount is a tuple that stores two values, correct and incorrect
    var guessCount: (correct: Int, incorrect: Int) {
        //to start, the count for both correct and incorrect are 0
        var count: (correct: Int, incorrect: Int) = (0,0)
        //iterating through the guesses array as the user plays and increasing the correct or incorrect based on their answers
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        //return the incorrect and correct values at the end
        return count
    }
    //variable that stores the total
    var numberOfQuestions: Int {
        questions.count
    }
    //variable that stores the current question based on the index
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    //function to update game status (bound to change)
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
