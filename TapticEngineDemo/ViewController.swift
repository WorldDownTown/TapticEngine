//
//  ViewController.swift
//  TapticEngineDemo
//
//  Created by Keisuke Shoji on 2017/04/09.
//  Copyright © 2017年 Keisuke Shoji. All rights reserved.
//

import UIKit
import TapticEngine

class ViewController: UIViewController {

    @IBAction private func light() {
        TapticEngine.impact.feedback(.light)
    }

    @IBAction private func medium() {
        TapticEngine.impact.feedback(.medium)
    }

    @IBAction private func heavy() {
        TapticEngine.impact.feedback(.heavy)
    }

    @IBAction private func selection() {
        TapticEngine.selection.feedback()
    }

    @IBAction private func success() {
        TapticEngine.notification.feedback(.success)
    }

    @IBAction private func warning() {
        TapticEngine.notification.feedback(.warning)
    }

    @IBAction private func error() {
        TapticEngine.notification.feedback(.error)
    }
}
