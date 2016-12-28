//
//  HLUtils.swift
//  HLDevelopmentTips
//
//  Created by 刘豪亮 on 2016/12/28.
//  Copyright © 2016年 刘豪亮. All rights reserved.
//

import UIKit

public struct HLUtils {

    /////////////////app相关信息////////////////
    /// Info.plist
    static let infoDictionary = Bundle.main.infoDictionary!
    /// 项目名称
    static let executable = infoDictionary[String(kCFBundleExecutableKey)]
    /// bundle Identifier
    static let identifier = Bundle.main.bundleIdentifier!
    /// version版本号
    static let shortVersion = infoDictionary["CFBundleShortVersionString"]
    /// build版本号
    static let version = infoDictionary[String(kCFBundleVersionKey)]
    /// app名称
    static let name = infoDictionary[String(kCFBundleNameKey)]
    /// app定位区域
    static let localizations = infoDictionary[String(kCFBundleLocalizationsKey)]
    
    /////////////////机型////////////////
    /// IPhone4
    static let isIPhone4 = isPhone && screenMaxLength == 480.0
    /// IPhone5
    static let isIPhone5 = isPhone && screenMaxLength == 568.0
    /// IPhone6
    static let isIPhone6 = isPhone && screenMaxLength == 667.0
    /// IPhone6P
    static let isIPhone6P = isPhone && screenMaxLength == 736.0
    
     /////////////////屏幕尺寸////////////////
    /// 屏幕宽
    static let screenWidth = UIScreen.main.bounds.size.width
    /// 屏幕高
    static let screenHeight = UIScreen.main.bounds.size.height
    /// 屏幕最大长度
    static let screenMaxLength = max(screenWidth, screenHeight)
    /// 屏幕最小长度
    static let screenMinLength = min(screenWidth, screenHeight)
    
    /////////////////user interface////////////////
    /// The user interface should be designed for iPhone and iPod touch.
    static let isPhone = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone
    /// The user interface should be designed for iPad.
    static let isPad = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad
    /// The user interface should be designed for Apple TV.
    static let isAppleTV = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.tv
}
