//
//  AvatarView.swift
//  vkClient
//
//  Created by Никита Абакумов on 28.11.2021.
//

import UIKit

class AvatarView: UIImageView {
    
    override class var layerClass: AnyClass { //берем слой для рисования
        return CAShapeLayer.self
    }
}

extension UIImageView {
    func addShadow(containerView : UIView) {
        containerView.clipsToBounds = false
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOpacity = 1
        containerView.layer.shadowOffset = .init(width: 14, height: 14)
        containerView.layer.shadowRadius = 12
        containerView.layer.cornerRadius = 32
        containerView.layer.shadowPath = UIBezierPath(roundedRect: containerView.bounds, cornerRadius: containerView.layer.cornerRadius).cgPath
        self.clipsToBounds = true
        self.layer.cornerRadius = containerView.layer.cornerRadius
    }
}
