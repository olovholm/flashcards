//
//  FlashcardModel.swift
//  Flashcards
//
//  Created by Ola Loevholm on 13/04/2025.
//

import Foundation
import SwiftUI

struct FlashcardModel: Identifiable {
    let id = UUID()
    
    let topic: String
    let topicDescription: String
    let topicImageName: ImageResource
    let questionModels : [QuestionModel]
    var numberOfQuestions: Int {
        questionModels.count
    }
    
    
}
