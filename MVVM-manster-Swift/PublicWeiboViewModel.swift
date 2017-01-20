//
//  PublicWeiboViewModel.swift
//  MVVM-manster-Swift
//
//  Created by 新龙科技 on 2017/1/19.
//  Copyright © 2017年 新龙科技. All rights reserved.
//

import UIKit

class PublicWeiboViewModel: BaseViewModel {
    var publicModelArray = Array<model>()
    
    func fetchPublicWeiBo() -> Void {
        HttpRequestTool.sharedInstance.HttpRequestJSONDataWithUrl(url: "/2/statuses/public_timeline.json", type: .GET, parameters: ["access_token":"2.00NofgBD0L1k4pc584f79cc48SKGdD","count":"100"], SafetyCertification: false, successed: { (success) in
            self.fetchValueSuccess(returnValue: success!)
        }) { (error) in
            self.errorCodeWithDic(error: error)
        }
    }
    func fetchValueSuccess(returnValue:AnyObject) -> Void {
        let dic = returnValue as! [String:Any]
        let arrayAny = dic["statuses"]
        let array = arrayAny as! Array<Any>
        
        for (_,obj) in array.enumerated() {
            let mod = model()
            let dic = obj as! [String:Any]
            let user = dic["user"] as! [String:Any]
            mod.name = user["screen_name"] as! String
            publicModelArray.append(mod)
        }
        returnBlock!(publicModelArray as AnyObject?)
    }
    func  errorCodeWithDic(error:NSError?) -> Void {
        errorBlock!(error)
    }
    func  weiboDetai(MoD:model,VC:UIViewController) -> Void {
        let First = FirstViewController()
        First.MOD = MoD
        VC.present(First, animated: true, completion: nil)
    }
}
