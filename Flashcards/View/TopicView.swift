//
//  ContentView.swift
//  Flashcards
//
//  Created by Ola Loevholm on 13/04/2025.
//

import SwiftUI

struct TopicView: View {
    var flashCardViewModel = FlashCardViewModel()
    var body: some View {
        NavigationStack {
            List(flashCardViewModel.flashCardModels) { flashCardModel in
                NavigationLink {
                    QuestionsView(questionModels: flashCardModel.questionModels, topic: flashCardModel.topic, numberOfQuestions: flashCardModel.numberOfQuestions)
                        .navigationBarBackButtonHidden(true)
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    FlashItemRow(flashCardModel: flashCardModel)
                }
                

            }.navigationTitle("Flashcards")
        }
    }
}

#Preview {
    TopicView()
}
