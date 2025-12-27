//
//  PieProjectorWindowView.swift
//  SlackowWall
//
//  Created by Dfanm on 12/21/25.
//

import SwiftUI

struct PieProjectorWindowView: View {

    @ObservedObject
    var screenRecorder = ScreenRecorder.shared

    @AppSettings(\.utility) var settings
    var body: some View {
        if !settings.pieProjectorEnabled {
            Text("Projector is disabled")
                .font(.largeTitle.weight(.bold))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        } else if let instance = screenRecorder.ProjectedInstance {
            PieProjectorView(instance: instance)
        } else {
            Text("No Instance to Project")
                .font(.largeTitle.weight(.bold))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    PieProjectorWindowView()
}
