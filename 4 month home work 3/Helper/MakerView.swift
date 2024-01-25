//
//  MakerView.swift
//  4 month home work 3
//
//  Created by Nurtilek on 1/22/24.
//

import UIKit

class MakerView {
    
    static let sharedLB = MakerView()
    
    func makeLbl(text: String = "",
                 textColor: UIColor = .gray,
                 textSize: CGFloat = 14, ofSize: UIFont.Weight = .light,
                 numberOfLines: Int = 0) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.font = .systemFont(ofSize: textSize, weight: ofSize)
        label.numberOfLines = numberOfLines
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    func makeTF(placeholder: String = "Напишите что то",
                keyboardType: UIKeyboardType = .default,
                leftViewMode: UITextField.ViewMode = .always,
                cornerRadius: CGFloat = 16,
                borderColor: CGColor = UIColor.red.cgColor,
                borderWidth: CGFloat = 0,
                backgroundColor: UIColor = .systemGray4) -> UITextField {
        let tf = UITextField()
        tf.placeholder = placeholder
        tf.keyboardType = keyboardType
        tf.backgroundColor = backgroundColor
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        tf.leftView = view
        tf.leftViewMode = leftViewMode
        tf.layer.cornerRadius = cornerRadius
        tf.layer.borderColor = borderColor
        tf.layer.borderWidth = borderWidth
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }
    
    
    static let shared = MakerView()
    
    func makeBTN(title: String = "",
                 for state: UIControl.State = .normal,
                 colorBT: UIColor = .blue,
                 backgroundColorBT: UIColor = .white,
                 layerCornerBT: CGFloat = 16) -> UIButton {
        let bt = UIButton(type: .system)
        bt.setTitle(title, for: state)
        bt.tintColor = colorBT
        bt.backgroundColor = backgroundColorBT
        bt.layer.cornerRadius = layerCornerBT
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }
    
}
