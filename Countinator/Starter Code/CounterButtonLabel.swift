//
//  CounterButtonLabel.swift
//  Countinator
//
//  Created by Samuel Shi on 1/30/25.
//

import SwiftUI

/// The label for Countinator's plus/minus buttons. Accepts a `systemImage`
/// parameter that determines which SF Symbol is used in this view.
struct CounterButtonLabel: View {
    let systemImage: String
    
    var body: some View {
        Image(systemName: systemImage)
            .resizable()
            .scaledToFit()
            .fontWeight(.bold)
            .frame(width: 24, height: 24)
            .padding(24)
            .background(.background.secondary, in: .circle)
    }
}

#Preview {
    HStack {
        CounterButtonLabel(systemImage: "minus")
        Spacer()
        CounterButtonLabel(systemImage: "plus")
    }
}
