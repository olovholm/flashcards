//
//  FillBarView.swift
//  Flashcards
//
//  Created by Ola Loevholm on 13/04/2025.
//

import SwiftUI

struct FillBarView: View {
    let barWidth: CGFloat
    let colorBG: Color
    let colorFill: Color
    let percentage: CGFloat
    
    let opacity: Double = 0.7
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                //Background
                RoundedRectangle(cornerRadius: 10)
                    .fill(colorBG.opacity(opacity))
                    .frame(width: .infinity, height: barWidth)
                
                // Forground bar
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(colorFill.opacity(opacity))
                        .frame(width: geometry.size.width * percentage, height: barWidth)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white.opacity(opacity / 2))
                        .frame(width: geometry.size.width * percentage - 10, height: 0.3 * barWidth)
                        .offset(y: -1)
                }
            }
        }.frame(height: barWidth)
    }
}

#Preview {
    FillBarView(
        barWidth: 10,
        colorBG: .gray,
        colorFill: .purple,
        percentage: 0.75
    )
    .padding()
}
