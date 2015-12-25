//
//  ViewController.swift
//  dogHuman
//
//  Created by 高部 真一郎 on 2015/12/24.
//  Copyright © 2015年 takabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogAge: UITextField!
    @IBAction func tapBtn(sender: AnyObject) {
        
        if (self.dogAge.text != nil || self.dogAge.text != "") {
            
            let tempAge = Int(self.dogAge.text!)
            var calAge: Int = 0
            
            if tempAge == 1 {
                calAge = 12
                humanAge.text = "犬の1歳は\(calAge)です"
            } else if tempAge == 2 {
                calAge = 24
                humanAge.text = "犬の2歳は\(calAge)です"
            } else if tempAge >= 3 {
                calAge = 24 + ((tempAge!-2) * 4)
                humanAge.text = "犬の\(tempAge!)歳は\(calAge)です"
            }
        
        } else {
                humanAge.text = "整数値を入力してください。"
        }
    }
    
    @IBOutlet weak var humanAge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        humanAge.text  = ""
        // Do any additional setup after loading the view, typically from a nib.
        //ジェスチャー登録
        let _singleTap = UITapGestureRecognizer(target: self, action: "onTap:");
        _singleTap.numberOfTapsRequired = 1;
        view.addGestureRecognizer(_singleTap);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapScreen(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    func onTap (recognizer:UIPanGestureRecognizer){
    dogAge.resignFirstResponder();
    }
    

}

