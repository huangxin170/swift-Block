//
//  HomeViewController.swift
//  swift-Block
//
//  Created by huangxin on 2020/9/15.
//  Copyright © 2020 huangxin. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    let utils : Utils = Utils()
    var homeBlock:((String ,Dictionary<String , Any>) -> Void)? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       creatUI()
        
        utils.loadData { (callData:String, dic:Dictionary) in
            print("回调的数据:\(callData)")
            print("回调的字典:\(dic)")
        }
        
    }
    
    @objc func ONActionBack(){
        
        self.homeBlock!("why",["name":"why","age":12])
        self .dismiss(animated: true) {
            
        }
    }
    

   

}


extension HomeViewController{
    func creatUI(){
        self.view.backgroundColor = UIColor.white
        let button = UIButton(frame: CGRect(x: 0, y: 100, width: 100, height: 100))
        button.setTitle("返回", for: .normal)
        button.backgroundColor = UIColor.black
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.addTarget(self, action: #selector(ONActionBack), for: .touchUpInside)
        self.view.addSubview(button)
    }
}
