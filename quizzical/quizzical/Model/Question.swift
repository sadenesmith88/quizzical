//
//  Question.swift
//  quizzical
//
//  Created by sade on 4/4/24.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    //    let questions: [String] = ["What country has the highest life expectancy?", "Which language has the more native speakers: English or Spanish?", "What is the most common surname in the United States?", "What year was the United Nations established?", "Who has won the most total Academy Awards?", "What artist has the most streams on Spotify?", "How many minutes are in a full week?", "What car manufacturer had the highest revenue in 2020?", "How many elements are in the periodic table?", "What company was originally called Cadabra?","Aureolin is a shade of what color?", "How many ghosts chase Pac-Man at the start of each game?", "What character have both Robert Downey Jr. and Benedict Cumberbatch played?", "What country drinks the most coffee per capita?", "Which planet in the Milky Way is the hottest?", "What is the 4th letter of the Greek alphabet?", "What sports car company manufactures the 911?", "Which planet has the most moons?", "What country has won the most World Cups?", "In what country would you find Mount Kilimanjaro?", "How many bones do we have in an ear?"]
    //    let answers: [String] = ["Hong Kong", "Spanish", "Smith", "1945", "Walt Disney", "Drake", "10,080", "Volkswagon", "118", "Amazon", "Yellow", "4", "Sherlock Holmes", "Finland", "Venus", "Delta", "Porche", "Saturn", "Brazil", "Tanzania", "3"]
    //    @State var triviaCount: Int = 0
    
    static var allQuestions = [
    Question(questionText: "Which language has the most native speakers", possibleAnswers: ["English", "Spanish", "Chinese", "German"], correctAnswerIndex: 2),
    Question(questionText: "What is the most common surname in the United States?", possibleAnswers: ["Smith", "James", "Hall", "Freeman"], correctAnswerIndex: 0),
    Question(questionText: "What year was the United Nations established?", possibleAnswers: ["1920", "1945", "1950", "1930"], correctAnswerIndex: 1),
    Question(questionText: "Who has won the most total Academy Awards?", possibleAnswers: ["Robert Downey Jr.", "Oppenheimer", "Will Smith", "Walt Disney"], correctAnswerIndex: 3),
    Question(questionText: "What artist has the most streams on Spotify?", possibleAnswers: ["Chris Brown", "Taylor Swift", "Drake", "Beyonce"], correctAnswerIndex: 2),
    Question(questionText: "How many minutes are in a full week?", possibleAnswers: ["10,000", "10,080", "11,000", "13,050"], correctAnswerIndex: 1),
    Question(questionText: "What car manufacturer had the highest revenue in 2020?", possibleAnswers: ["Volkswagon", "Jaguar", "Nissan", "Honda"], correctAnswerIndex: 0),
    Question(questionText: "How many elements are in the periodic table?", possibleAnswers: ["120", "118", "116", "114"], correctAnswerIndex: 1),
    Question(questionText: "What company was originally called Cadabra?", possibleAnswers: ["Uber", "NASA", "Amazon", "Walmart"], correctAnswerIndex: 2),
    Question(questionText: "Aureolin is a shade of what color?", possibleAnswers: ["Red", "Yellow", "Blue", "Purple"], correctAnswerIndex: 1),
    Question(questionText: "How many ghosts chase Pac-Man at the start of each game?", possibleAnswers: ["6", "2", "9", "4"], correctAnswerIndex: 3),
    Question(questionText: "What character have both Robert Downey Jr. and Benedict Cumberbatch played?", possibleAnswers: ["Sherlock Holmes", "Larry Paul", "Tony Stark", "Harry Lockhart"], correctAnswerIndex: 0),
    Question(questionText: "What country drinks the most coffee per capita?", possibleAnswers: ["Switzerland", "Finland", "Berlin", "Germany"], correctAnswerIndex: 1),
    Question(questionText: "Which planet in the Milky Way is the hottest?", possibleAnswers: ["Mars", "Jupiter", "Saturn", "Uranus"], correctAnswerIndex: 2),
    Question(questionText: "What is the 4th letter of the Greek alphabet?", possibleAnswers: ["Delta", "Beta", "Alpha", "Gamma"], correctAnswerIndex: 0),
    Question(questionText: "What sports car company manufactures the 911?", possibleAnswers: ["BMW", "Camaro", "Corvette", "Porche"], correctAnswerIndex: 3),
    Question(questionText: "Which planet has the most moons?", possibleAnswers: ["Saturn", "Neptune", "Uranus", "Jupiter"], correctAnswerIndex: 0),
    Question(questionText: "What country has won the most World Cups?", possibleAnswers: ["Brazil", "United States", "China", "Jamaica"], correctAnswerIndex: 0),
    Question(questionText: "In what country would you find Mount Kilimanjaro?", possibleAnswers: ["Tanzania", "Russia", "Nigeria", "Peru"], correctAnswerIndex: 0),
    Question(questionText: "How many bones do we have in an ear?", possibleAnswers: ["1", "2", "3", "4"], correctAnswerIndex: 2),
    ]
}
