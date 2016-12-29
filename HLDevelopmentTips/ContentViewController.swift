//
//  ContentViewController.swift
//  HLDevelopmentTips
//
//  Created by 刘豪亮 on 2016/12/27.
//  Copyright © 2016年 刘豪亮. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    let textView = UITextView()

    convenience init(name: String) {
        self.init()
        self.title = name;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        textView.frame = CGRect(x: 0, y: 0, width: HLUtils.screenWidth, height: HLUtils.screenHeight)
        
        self.view.addSubview(textView)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textView.text = Common.contentForTitle(title: self.title!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
