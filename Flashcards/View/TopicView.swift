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
            List(flashCardViewModel.flashCardModels) { flasCardModel in
                NavigationLink {
                    //TODO: Implement
                    Text(flasCardModel.topic)
                } label: {
                    FlashItemRow(flashCardModel: flasCardModel)
                }
                

            }.navigationTitle("Flashcards")
        }
    }
}

#Preview {
    TopicView()
}
