//
//  InstanceStream.swift
//  SlackowWall
//
//  Created by Kihron on 7/23/24.
//

import ScreenCaptureKit
import SwiftUI

class InstanceStream {
    var capturePreview: CapturePreview
    var capturePreviewTopLeft: CapturePreviewTopLeft
    var capturePreviewBottomRight: CapturePreviewBottomRight
    var captureFilter: SCContentFilter?
    var captureRect: CGSize

    var streamError: StreamError?

    init() {
        self.capturePreview = CapturePreview()
        self.capturePreviewTopLeft = CapturePreviewTopLeft()
        self.capturePreviewBottomRight = CapturePreviewBottomRight()
        self.captureRect = .zero
    }

    func clearCapture() {
        capturePreview = CapturePreview()
        capturePreviewTopLeft = CapturePreviewTopLeft()
        capturePreviewBottomRight = CapturePreviewBottomRight()
        captureFilter = nil
        captureRect = .zero
        streamError = nil
    }
}
