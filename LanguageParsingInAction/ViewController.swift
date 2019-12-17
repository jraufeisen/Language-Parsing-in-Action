//
//  ViewController.swift
//  LanguageParsingInAction
//
//  Created by Johannes on 07.12.19.
//  Copyright © 2019 Johannes Raufeisen. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let buf = yy_scan_string("3+5+6*2")
        ParseTestSuccessBlock = { (value) in
            print("I calculated \(value)")
        }
        ParseTestFailBlock = { (error) in
            print("I received error \(error)")
        }
        yyparse()
        yy_delete_buffer(buf)
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

