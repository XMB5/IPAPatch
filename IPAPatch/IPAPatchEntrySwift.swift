//
//  IPAPatchEntry.swift
//  IPAPatchFramework
//
//  Created by Sam Foxman on 7/18/18.
//  Copyright © 2018 Weibo. All rights reserved.
//

import UIKit

public class IPAPatchEntrySwift : NSObject {
    
    public class func enter () {
        
        //add code here
        
        //for example, show an alert
        for_example_showAlert();
        
    }
    
    class func for_example_showAlert() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(3 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: {
            let alertController = UIAlertController(title: "Hacked", message: "Hacked with IPAPatch", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            var controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController
            while ((controller?.presentedViewController) != nil) {
                controller = controller?.presentedViewController
            }
            controller?.present(alertController, animated: true)
        })
    }

    
}
