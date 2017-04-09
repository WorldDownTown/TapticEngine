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
        TapticEngine.feedback(.light)
    }

    @IBAction private func medium() {
        TapticEngine.feedback(.medium)
    }

    @IBAction private func heavy() {
        TapticEngine.feedback(.heavy)
    }

    @IBAction private func selection() {
        TapticEngine.feedback(.selection)
    }

    @IBAction private func success() {
        TapticEngine.feedback(.success)
    }

    @IBAction private func warning() {
        TapticEngine.feedback(.warning)
    }

    @IBAction private func error() {
        TapticEngine.feedback(.error)
    }
}
