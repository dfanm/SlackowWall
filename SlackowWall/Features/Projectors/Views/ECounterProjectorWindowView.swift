//
//  ECounterProjectorWindowView.swift
//  SlackowWall
//
//  Created by Dfanm on 12/20/25.
//


import SwiftUI

struct ECounterProjectorWindowView: View {

    @ObservedObject
    var screenRecorder = ScreenRecorder.shared

    @AppSettings(\.utility) var settings
    var body: some View {
        if !settings.ecounterProjectorEnabled {
            Text("Projector is disabled")
                .font(.largeTitle.weight(.bold))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        } else if let instance = screenRecorder.ProjectedInstance {
            ECounterProjectorView(instance: instance)
        } else {
            Text("No Instance to Project")
                .font(.largeTitle.weight(.bold))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    ECounterProjectorWindowView()
}
