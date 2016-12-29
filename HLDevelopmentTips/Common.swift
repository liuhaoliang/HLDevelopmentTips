//
//  Common.swift
//  HLDevelopmentTips
//
//  Created by 刘豪亮 on 2016/12/27.
//  Copyright © 2016年 刘豪亮. All rights reserved.
//

import UIKit

class Common: NSObject {
    
    static func titlesForContent() -> [String] {
        let paths = Bundle.main.paths(forResourcesOfType: "txt", inDirectory: nil)
        var titles = Array<String>();
        for path in paths {
            let compoments : Array = path.components(separatedBy: "/")
            let title = compoments.last?.replacingOccurrences(of: ".txt", with: "")
            titles.append(title!)
        }
        return titles;
    }
    
    
    static func contentForTitle(title:String) -> String {
        let path = Bundle.main.resourcePath?.appending("/").appending(title).appending(".txt")
        var content = ""
        
        do {
            content = try NSString.init(contentsOf: NSURL.fileURL(withPath: path!), encoding: String.Encoding.utf8.rawValue) as String
            print(content)
        } catch {
            print(error)
        }
        return content;
    }
    
    
    
}


//NSString *path = [[[[NSBundle mainBundle] resourcePath] stringByAppendingString:@"/"] stringByAppendingString:@"TermsFile.txt"];
//_textView.text = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
