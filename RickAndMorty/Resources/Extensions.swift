//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Ihor Orlenko on 17.08.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            self.addSubview($0)
        })
    }
}
