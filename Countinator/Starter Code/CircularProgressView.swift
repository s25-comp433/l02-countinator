//
//  CircularProgressView.swift
//  Countinator
//
//  Created by Samuel Shi on 1/30/25.
//

import SwiftUI

/// A view that displays a background circle and an arc – filled with
/// `color` – that wraps around `portionFilled` percent of the circle.
struct CircularProgressView: View {
    let portionFilled: Double
    let color: Color
    var strokeWidth: CGFloat = 24
    
    var body: some View {
        Circle()
            .strokeBorder(.background.secondary, lineWidth: strokeWidth)
            .scaledToFit()
            .overlay(alignment: .top) {
                if portionFilled > 0 {
                    ProgressArc(progress: portionFilled)
                        .strokeBorder(color, style: .init(lineWidth: strokeWidth, lineCap: .round))
                } else {
                    Circle()
                        .fill(color)
                        .frame(width: strokeWidth, height: strokeWidth)
                }
            }
    }
}

#Preview("0") {
    CircularProgressView(portionFilled: 0, color: .blue)
}

#Preview("0.25") {
    CircularProgressView(portionFilled: 0.25, color: .blue)
}
