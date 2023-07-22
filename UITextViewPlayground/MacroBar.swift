//
//  MacroBar.swift
//  UITextViewPlayground
//
//  Created by Ken Franklin on 6/6/23.
//

import UIKit
import SnapKit

class MacroBar: UIView {
    let contentView = UIView()
    
    convenience init() {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 44))
        contentView.backgroundColor = .yellow
        addSubview(contentView)
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
