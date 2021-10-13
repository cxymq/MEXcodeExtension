//
//  AppDelegate.swift
//  MEXcodeExtension
//
//  Created by snowimba on 2020/4/15.
//  Copyright © 2020 snowimba. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var selectClangformat: NSPathControl!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        selectClangformat.action = #selector(changeLocationPathAction(sender:))
    }
    
    @objc func changeLocationPathAction(sender: NSPathControl) {
        let url = sender.clickedPathItem?.url
        if (url != nil) {
            let dd = UserDefaults.init(suiteName: "group.com.MEXcodeExtension")
            dd?.setValue(url?.absoluteString.data(using: .utf8), forKey: "clangFormatPathKey")
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func pathControlClick(_ sender: Any) {
        
    }
}

