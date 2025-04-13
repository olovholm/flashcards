//
//  TwoSidedBackgroundView.swift
//  Flashcards
//
//  Created by Ola Loevholm on 13/04/2025.
//

import SwiftUI

struct TwoSidedBackgroundView: View {
    let frontColor: Color
    let backColor: Color
    let opacity: CGFloat
    let isFrontUp: Bool
    
    var color : Color {
        isFrontUp ? frontColor : backColor
    }
    
    var body: some View {
        color
            .opacity(opacity)
            .ignoresSafeArea()
    }
}

#Preview {
    TwoSidedBackgroundView(
        frontColor: .blue,
        backColor: .red,
        opacity: 0.3,
        isFrontUp: false
    )
}
