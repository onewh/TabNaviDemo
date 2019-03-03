//
//  FirstViewController.swift
//  TabNaviDemo
//
//  Created by wanghao on 2019/3/2.
//  Copyright © 2019 wanghao. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //        self.navigationController?.navigationBar.setBackgroundImage(UIImage(color:UIColor.kcGreen), for: .default)
        if self.transitionCoordinator != nil {
            self.navigationController?.setNavigationBarHidden(false, animated: true)
            self.transitionCoordinator?.animateAlongsideTransition(in: view, animation: { (context) in
                self.navigationController?.navigationBar.alpha = 0.0
            }, completion: { (context) in
                debugPrint("complete")
            })
        }else{
            self.navigationController?.setNavigationBarHidden(true, animated: false)
        }
       
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        super.viewWillDisappear(animated)
    }
}

class FirstNaviVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(color:UIColor.kcRed), for: .default)
        self.transitionCoordinator?.animateAlongsideTransition(in: view, animation: { (context) in
            self.navigationController?.navigationBar.alpha = 1.0
        }, completion: { (context) in
            debugPrint("complete")
        })
        
    }
    
    @IBAction func popToRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}

class FirstNonNaviVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override var hidesBottomBarWhenPushed: Bool {
        get{
            return true
        }
        set {
            super.hidesBottomBarWhenPushed = newValue
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //        self.navigationController?.navigationBar.setBackgroundImage(UIImage(color:UIColor.kcGreen), for: .default)
        self.transitionCoordinator?.animateAlongsideTransition(in: view, animation: { (context) in
            self.navigationController?.navigationBar.alpha = 0.0
        }, completion: { (context) in
            debugPrint("complete")
        })
    }
    
    @IBAction func popToRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
}
