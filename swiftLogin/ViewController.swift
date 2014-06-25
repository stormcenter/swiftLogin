//
//  ViewController.swift
//  swiftLogin
//
//  Created by Chi Zhang on 14/6/11.
//  Copyright (c) 2014年 Chi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet
    var loginButton:UIButton
    
    @IBOutlet
    var registerButton:UIButton
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loginButton.addTarget(self,action:"loginButtonClick:",forControlEvents:.TouchUpInside)
        registerButton.addTarget(self,action:"registerButtonClick:",forControlEvents:.TouchUpInside);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loginButtonClick(sender:UIButton!) {
        println("login")
        var loginView:LoginViewController = self.storyboard.instantiateViewControllerWithIdentifier("login") as LoginViewController
        self.navigationController.pushViewController(loginView, animated:true)
    }
    
    func registerButtonClick(sender:UIButton!) {
        println("register")
        var registerView:RegisterViewController = self.storyboard.instantiateViewControllerWithIdentifier("register") as RegisterViewController
        self.navigationController.pushViewController(registerView, animated:true)

    }

}

