//
//  ViewController.swift
//  CustomEditMenuSample
//
//  Created by ykkc on 2020/12/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addCustomMenu()
    }
    
    private func addCustomMenu() {
        let printToConsole = UIMenuItem(
            title: "Copy Text with \"+\"",
            action: #selector(copyTextWithPlus)
        )
        UIMenuController.shared.menuItems = [printToConsole]
    }
    
    @objc func copyTextWithPlus() {
        guard let range = textView.selectedTextRange,
              let selectedText = textView.text(in: range) else { return }
        UIPasteboard.general.string = "\(selectedText)+"
    }
}

