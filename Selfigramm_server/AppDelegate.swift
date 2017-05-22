//
//  AppDelegate.swift
//  Selfigramm_server
//
//  Created by Artsiom Sazonau on 29.04.17.
//  Copyright © 2017 Arts Corp. All rights reserved.
//

import Cocoa
import Swifter

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        print("hi")
        
        let server = HttpServer()
        server["/hello"] = { .ok(.text("You asked for \($0)"))  }
        do {
            try server.start(9080)
            print("Server started on port 9080")
        } catch let err {
            print(err)
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

