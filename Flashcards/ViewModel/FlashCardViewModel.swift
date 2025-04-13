//
//  FlashCardViewModel.swift
//  Flashcards
//
//  Created by Ola Loevholm on 13/04/2025.
//

import Foundation


@Observable
class FlashCardViewModel {
    var flashCardModels: [FlashcardModel] = [
        .init(
            topic: "Countries",
            topicDescription: "Explore geographical knowledge",
            topicImageName: .bigBen,
            questionModels: QuestionViewModel.countryQuestionModels
        ),
        .init(
            topic: "Movies",
            topicDescription: "Test your movie knowledge",
            topicImageName: .moviesTopic,
            questionModels: QuestionViewModel.movieTriviaModels
        ),
        .init(
            topic: "Shakespeare",
            topicDescription: "Shakespeare trivia",
            topicImageName: .shakespeare,
            questionModels: QuestionViewModel.shakespeareTriviaQuestions
        ),
        .init(
            topic: "Spanish greetings",
            topicDescription: "Greet in Spanish!",
            topicImageName: .madrid,
            questionModels: QuestionViewModel.spanishGreetingsModels
        )
    ]
    
    
}
