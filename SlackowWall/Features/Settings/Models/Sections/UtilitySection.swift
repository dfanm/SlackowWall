//
//  UtilitySection.swift
//  SlackowWall
//
//  Created by Slackow on 5/26/25.
//

import DefaultCodable
import SwiftUI

extension Preferences {
    @DefaultCodable
    struct UtilitySection: Codable, Hashable {
        var autoLaunchPaceman: Bool = false
        var pacemanToolBarIcon: Bool = false

        var eyeProjectorEnabled: Bool = false
        var ecounterProjectorEnabled: Bool = true
        var pieProjectorEnabled: Bool = true
        var eyeProjectorOpenWithTallMode: Bool = true
        var ecounterProjectorOpenWithTallMode: Bool = true
        var pieProjectorOpenWithTallMode: Bool = true
        
        var eyeProjectorShouldOpenWithTallMode: Bool {
            eyeProjectorEnabled && eyeProjectorOpenWithTallMode
        }
        var ecounterProjectorShouldOpenWithTallMode: Bool {
            ecounterProjectorEnabled && ecounterProjectorOpenWithTallMode
        }
        var pieProjectorShouldOpenWithTallMode: Bool {
            pieProjectorEnabled && pieProjectorOpenWithTallMode
        }
        
        // this should no longer be used, but keeping in case it needs to be re-introduced
        private var eyeProjectorWidth: Int = 60
        var eyeProjectorHeightScale: Double = 0.2

        var sensitivityScaleEnabled: Bool = false
        var sensitivityScaleToolBarIcon: Bool = false
        var sensitivityScale: Double = 12.8
        var boatEyeSensitivity: Double = 0.02291165
        var tallSensitivityFactorEnabled: Bool = true
        var tallSensitivityFactor: Double = 40

        var startupApplicationEnabled: Bool = false
        var startupApplications: [URL] = []

        init() {}
    }
}
