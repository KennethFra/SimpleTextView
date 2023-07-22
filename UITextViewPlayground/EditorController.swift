//
//  ViewController.swift
//  UITextViewPlayground
//
//  Created by Ken Franklin on 6/6/23.
//

import UIKit

struct UI {
    static let padding = 10.0
    static let topPadding = 45.0
}

class EditorController: UIViewController, UITextViewDelegate {
    lazy var textView = UITextView()
    let macroBar = MacroBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.translatesAutoresizingMaskIntoConstraints  = false
        
        view.addSubview(textView)
        textView.topAnchor.constraint(equalTo: view.topAnchor, constant: UI.topPadding).isActive = true
        textView.bottomAnchor.constraint(
            equalTo: view.keyboardLayoutGuide.topAnchor,
            constant: -UI.padding
        ).isActive = true
        textView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: UI.padding).isActive = true
        textView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -UI.padding).isActive = true
        textView.font = UIFont.systemFont(ofSize: 18.0)
        textView.inputAccessoryView = macroBar
        textView.delegate = self
        textView.text = "This is a sentence containing the phrase United States as well as Cornell University.  Double-tap 'United' or 'Cornell' and notice the phrase is selected, not the single word."
                
        textView.autocorrectionType = .no
        textView.autocapitalizationType = .none
        textView.spellCheckingType = .no
        textView.smartQuotesType = .no
        textView.smartDashesType = .no
        textView.smartInsertDeleteType = .no
    }
}


