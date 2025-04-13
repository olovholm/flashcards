//
//  QuestionModel.swift
//  Flashcards
//
//  Created by Ola Loevholm on 13/04/2025.
//

import Foundation
import SwiftUI


struct QuestionModel: Identifiable {
    let id = UUID()
    let question: String
    let questionImageName: ImageResource?
    let answer: String
    let answerImageName: ImageResource?
    
}
