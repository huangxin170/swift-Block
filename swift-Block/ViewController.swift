//
//  ViewController.swift
//  swift-Block
//
//  Created by huangxin on 2020/9/15.
//  Copyright © 2020 huangxin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        creatUI()
        
        myBlock("hx")
        
    }

    
    let myBlock = {(name:String) -> Void in
        print(name)
    }
    
    func creatUI(){
        self.view.backgroundColor = UIColor.white
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button.setTitle("进入下一页", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(ONActionPush), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func ONActionPush(){
        
        let home = HomeViewController()
        home.homeBlock = { (name:String ,dic :Dictionary) in
            print("传过来的字符串\(name)")
            print("传过来的字典\(dic)")
        }
        self .present(home, animated: true) {
        
        }
    }

}

