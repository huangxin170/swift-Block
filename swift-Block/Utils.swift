//
//  Utils.swift
//  swift-Block
//
//  Created by huangxin on 2020/9/15.
//  Copyright © 2020 huangxin. All rights reserved.
//

import UIKit

class Utils: NSObject {

    
    func loadData(callBack:(String,Dictionary<String,Any>) -> Void){
        callBack("回调数据",["name":"huangxin"])
    }
    
}
