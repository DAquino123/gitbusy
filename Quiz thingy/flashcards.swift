//
//  flashcards.swift
//  Quiz thingy
//
//  Created by iD Student on 7/18/17.
//  Copyright © 2017 ID TECH. All rights reserved.
//

import Foundation
class Flashcard {
    var question : String
    
    var options : [String]
    var correctAnswer : String
    
    init(question : String, options : [String]){
        self.question = question
        self.options = options
        
        self.correctAnswer = options[0]
}
}
class CardCollection {
    public static var instance : CardCollection = CardCollection()

public private(set) var cards : [Flashcard]
public private(set) var currentIndex : Int
    public var currentCard : Flashcard {
        get { return cards[currentIndex] }
    }
    private init(){
    cards = [ Flashcard(question: "What is the capitol of the philippines???", options: ["Manila","Maasin City","Philly", "Texas"]),
              Flashcard(question: "whats the worlds most popular sport???", options:["soccer", "football", "baseball", "basketball"]),
              Flashcard(question: "What is the deepest part of the ocean???", options:["The Challenger", "Tonga Trench", "Kuril-Kamchatka Trench", "Galathea Dept"]),
              Flashcard(question: "how long can penguins hold there breath???", options:["20minutes", "15 minutes", "16 minutes", "25 minutes"]),
              Flashcard(question: "How long do sharks tend to live????", options:["20-30 years", "15-30", "20-40 years", "25-35 years"]),
              Flashcard(question: "How long do dogstend to live????", options:["10-13 years", "10-13 years", "15-17 years", "10-35 years"])]

        currentIndex = 0;

    }
    public func nextQuestion() {
        currentIndex += 1
        if (currentIndex >= cards.count){
            currentIndex = 0
        }
    }
    
    public func checkAnswer(_ selectedAnswer : Int) -> Bool {
        return currentCard.options[selectedAnswer] == currentCard.correctAnswer
        
    }
}



