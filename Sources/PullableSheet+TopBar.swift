//
//  PullableSheet+TopBar.swift
//  PullableSheet
//
//  Created by Tatsuya Tanaka on 20180915.
//  Copyright © 2018年 tattn. All rights reserved.
//

import UIKit

extension PullableSheet {
    public enum TopBarStyle {
        case `default`
        case custom(UIView)
    }
}

extension PullableSheet.TopBarStyle {
    public var view: UIView {
        switch self {
        case .default:
            let view = UIView(frame: .init(x: 0, y: 10, width: 40, height: 4))
            view.backgroundColor = .gray
            view.alpha = 0.5
            view.layer.cornerRadius = 2
            return view
        case .custom(let view):
            return view
        }
    }
}
