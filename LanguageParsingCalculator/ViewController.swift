//
//  ViewController.swift
//  LanguageParsingCalculator
//
//  Created by Johannes on 19.12.19.
//  Copyright © 2019 Johannes Raufeisen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultTextView.text = ""
        resultTextView.delegate = self
    }

    @IBAction func pressedEqual() {
        guard let text = resultTextView.text else {
            return
        }

        let buf = yy_scan_string(text)
        ParseTestSuccessBlock = { (value) in
            self.resultTextView.text = "\(value)"
        }
        ParseTestFailBlock = { (error) in
            self.resultTextView.text = "Error"
        }
        
        yyparse()
        yy_delete_buffer(buf)
    }

    @IBAction func pressedMathButton(sender: UIButton) {
        guard let mathSymbol = sender.titleLabel?.text else {
            return
        }
        guard let text = resultTextView.text else {
            return
        }
        
        resultTextView.text = text + mathSymbol
    }
    
    @IBAction func pressedClear() {
        resultTextView.text = ""
    }
    
}

extension ViewController: UITextViewDelegate {

    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }
        return true
    }

    
}
