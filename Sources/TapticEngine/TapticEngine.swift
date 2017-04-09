//
//  TapticEngine.swift
//  TapticEngine
//
//  Created by Keisuke Shoji on 2017/04/09.
//  Copyright © 2017年 Keisuke Shoji. All rights reserved.
//

import UIKit

/// Generates iOS Device vibrations by UIFeedbackGenerator.
public struct TapticEngine {

    /// Feedback vibration types
    ///
    /// - light: A impact feedback between small, light user interface elements.
    /// - medium: A impact feedback between moderately sized user interface elements.
    /// - heavy: A impact feedback between large, heavy user interface elements.
    /// - selection: A selection feedback to communicate movement through a series of discrete values.
    /// - success: A notification feedback, indicating that a task has completed successfully.
    /// - warning: A notification feedback, indicating that a task has produced a warning.
    /// - error: A notification feedback, indicating that a task has failed.
    public enum FeedbackType {
        case light, medium, heavy, selection, success, warning, error
    }

    /// Triggers feedback.
    ///
    /// - Parameter type: Feedback style
    public static func feedback(_ type: FeedbackType = .light) {
        switch type {
        case .light, .medium, .heavy:
            feedbackImpact(type)
        case .selection:
            feedbackSelection()
        case .success, .warning, .error:
            feedbackNotification(type)
        }
    }

    private static func feedbackImpact(_ type: FeedbackType) {
        guard #available(iOS 10.0, *) else { return }

        let feedbackStyle: UIImpactFeedbackStyle
        switch type {
        case .light:
            feedbackStyle = .light
        case .medium:
            feedbackStyle = .medium
        case .heavy:
            feedbackStyle = .heavy
        default:
            return
        }

        let feedbackGenerator: UIImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: feedbackStyle)
        feedbackGenerator.prepare()
        feedbackGenerator.impactOccurred()
    }

    private static func feedbackSelection() {
        guard #available(iOS 10.0, *) else { return }

        let feedbackGenerator: UISelectionFeedbackGenerator = UISelectionFeedbackGenerator()
        feedbackGenerator.prepare()
        feedbackGenerator.selectionChanged()
    }

    private static func feedbackNotification(_ type: FeedbackType) {
        guard #available(iOS 10.0, *) else { return }

        let feedbackType: UINotificationFeedbackType
        switch type {
        case .success:
            feedbackType = .success
        case .warning:
            feedbackType = .warning
        case .error:
            feedbackType = .error
        default:
            return
        }

        let feedbackGenerator: UINotificationFeedbackGenerator = UINotificationFeedbackGenerator()
        feedbackGenerator.prepare()
        feedbackGenerator.notificationOccurred(feedbackType)
    }
}
