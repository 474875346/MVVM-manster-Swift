//
//  BaseViewModel.swift
//  MVVM-manster-Swift
//
//  Created by 新龙科技 on 2017/1/19.
//  Copyright © 2017年 新龙科技. All rights reserved.
//

import UIKit

class BaseViewModel: NSObject {
    typealias ReturnBlock = (_ success:AnyObject?)->Void
    typealias ErrorBlock = (_ error:AnyObject?)->Void
    var returnBlock:ReturnBlock?
    var errorBlock:ErrorBlock?
    func netWorkState(URl:String,NetWorkBlock:(_ netConnetState:Bool)->Void) -> Void {
        let netState = HttpRequestTool.HttpReachability(strUrl: URl)
        NetWorkBlock(netState)
    }
    func setBlock(Return:@escaping ReturnBlock,Error:@escaping ErrorBlock) -> Void {
        returnBlock = Return
        errorBlock = Error
    }
}
