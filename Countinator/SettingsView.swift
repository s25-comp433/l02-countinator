//
//  SettingsView.swift
//  Countinator
//

import SwiftUI

struct SettingsView: View {
    // TODO: Replace this with bindings
    
    var body: some View {
        Form {
            Section("Capacity") {
                // TODO: Replace this with capacity Stepper
                // - range: 1 ... 100
            }
            
            Section("Colors") {
                // TODO: Replace this with empty color picker
                // TODO: Replace this with full color picker
            }
        }
    }
}

#Preview {
    @Previewable @State var capacity: Int = 10
    @Previewable @State var emptyColor: Color = .blue
    @Previewable @State var fullColor: Color = .purple
    SettingsView()
}
