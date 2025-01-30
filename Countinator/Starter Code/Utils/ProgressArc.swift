//
//  ProgressArc.swift
//  ktp fitness
//
//  Created by Samuel Shi on 3/21/22.
//

import SwiftUI

struct ProgressArc: InsettableShape {
    var progress: Double
    var insetAmount: Double

    init(progress: Double, insetAmount: Double = 0) {
        self.progress = max(0, min(progress, 1))
        self.insetAmount = insetAmount
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let startAngle = Angle(degrees: -90)
        let endAngle = Angle(degrees: 360 * progress - 90)

        let width = rect.width
        let height = rect.height
        let radius = min(width, height) / 2
        
        let insetRadius = radius - insetAmount
        let center = CGPoint(x: rect.midX, y: rect.midY)

        path.addArc(
            center: center,
            radius: insetRadius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: false)
        
        return path
    }

    var animatableData: Double {
        get { progress }
        set { progress = newValue }
    }

    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}
