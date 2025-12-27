//
//  PieProjectorView.swift
//  SlackowWall
//
//  Created by Dfanm on 12/21/25.
//

import SwiftUI

struct PieProjectorView: View {
    @ObservedObject private var screenRecorder =
        ScreenRecorder.shared
    @ObservedObject private var instanceManager = InstanceManager.shared
    @ObservedObject private var gridManager = GridManager.shared
    @StateObject var previewRenderer: PreviewRenderer
    
    @AppSettings(\.instance)
    private var instances
    @AppSettings(\.mode)
    private var mode
    @AppSettings(\.utility)
    private var utility
    
    init(instance: TrackedInstance) {
        _previewRenderer = StateObject(wrappedValue: PreviewRenderer(instance: instance))
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                previewRenderer.instance.pieProjectorStream.capturePreviewBottomRight
                .offset(x:-230,y:8)
                .contentShape(Rectangle())
                .scaleEffect(2.5)
                .opacity(previewRenderer.isVisible ? 1 : 0)
                .onAppear {
                    previewRenderer.handleGridAnimation()
                }
            }
        }
    }
}
