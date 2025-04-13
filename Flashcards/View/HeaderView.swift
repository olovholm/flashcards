//
//  HeaderView.swift
//  Flashcards
//
//  Created by Ola Loevholm on 13/04/2025.
//

import SwiftUI

struct HeaderView: View {
    let topic: String
    let questionNumber: Int
    let numberOfQuestions: Int
    let colorBG: Color
    let colorFill: Color
    
    var dismissFunc: () -> Void
    
    let barWidth = 10.0
    let unicodeX = "\u{2715}"
    var percentage: CGFloat {
        CGFloat(questionNumber) / CGFloat(numberOfQuestions)
    }
    
    var topicFont : Font {
        UIDevice.isPad ? .largeTitle : .body
    }
    
    var numberOfQuestionsText : String {
        "\(questionNumber) out of \(numberOfQuestions)"
    }
    
    var numberOfQuestionsFont: Font {
        UIDevice.isPad ? .largeTitle : .caption
    }
    
    var body: some View {
        VStack(spacing: 5) {
            // First row
            HStack {
                Text(topic)
                    .font(topicFont)
                
                Spacer()
                Text(numberOfQuestionsText)
                    .font(numberOfQuestionsFont)
            }
            .fontWeight(.bold)
            HStack {
                Button {
                    dismissFunc()
                } label: {
                    Text(unicodeX)
                        .font(.largeTitle)
                        .fontWeight(.thin)
                        .foregroundStyle(colorBG)
                    
                }
                FillBarView(
                    barWidth: barWidth,
                    colorBG: .gray,
                    colorFill: .purple,
                    percentage: percentage)
            }
        }
    }
}

#Preview {
    HeaderView(
        topic: "Countries",
        questionNumber: 3,
        numberOfQuestions: 10,
        colorBG: .gray,
        colorFill: .purple,
        dismissFunc: {}
    )
    .padding()
}
