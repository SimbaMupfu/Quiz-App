//
//  QuizBrain.swift
//  Quiz App
//
//  Created by Simbarashe Mupfururirwa on 2023/06/13.
//

import Foundation

struct QuizBrain{
    let quizQuestions = [
        QuizQuestion(text: "Four + Two is equal to Six", answer: "True"),
        QuizQuestion(text: "Five - Three is greater than One", answer: "False"),
        QuizQuestion(text: "Three + Eight is less than Ten", answer: "False")
    ]
    var questionNumber = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quizQuestions[questionNumber].answer {
            return true
        }else{
            return false
        }
    }
    
    func getQuestionText() -> String{
        return quizQuestions[questionNumber].text
    }
    
    func getQuizProgress() -> Float {
        return Float(questionNumber + 1) / Float(quizQuestions.count)
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < quizQuestions.count {
            questionNumber += 1
        }else{
            questionNumber = 0
        }
    }
}
