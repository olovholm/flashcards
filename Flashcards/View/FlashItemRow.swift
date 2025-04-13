//
//  FlashItemRow.swift
//  Flashcards
//
//  Created by Ola Loevholm on 13/04/2025.
//

import SwiftUI

struct FlashItemRow: View {
    let flashCardModel: FlashcardModel
    
    let imageSize: CGFloat = 60
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(flashCardModel.topic)
                    .font(.body)
                    .fontWeight(.semibold)
                Text(flashCardModel.topicDescription)
                    .font(.caption)
                    .fontWeight(.light)
                
            }
            
            Spacer()
            
            Image(flashCardModel.topicImageName)
                .resizable()
                .scaledToFill()
                .frame(width: imageSize, height: imageSize)
                .clipShape(.rect(cornerRadius: 10))
        }
    }
}

#Preview {
    FlashItemRow(
        flashCardModel: .init(
            topic: "Countries",
            topicDescription: "Exlore geography! ",
            topicImageName: .bigBen,
            questionModels: QuestionViewModel.countryQuestionModels
        )
    )
    .padding()
}
