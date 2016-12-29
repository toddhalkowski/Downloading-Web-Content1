//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Todd Halkowski
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "http://www.stackoverflow.com")!
        
        webView.loadRequest(URLRequest(url: url))
        // loading contents of url into a webView by utilizing a load request and the webView added to the view controller
        
        
        
        /*
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            
            // Will happen when task completes
            
            if let urlContent = data {
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    
                    self.webView.loadHTMLString(String(webContent!), baseURL: nil)
                    
                })
                
                
                
                
                
            } else {
                
                // Show error message
                
            }
            
            
            
        }
        
        task.resume()
        
*/
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

