//
//  LoginViewController.swift
//  swiftLogin
//
//  Created by Chi Zhang on 14/6/11.
//  Copyright (c) 2014年 Chi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController , UITextFieldDelegate{

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder:aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        var backgroundView:UIView = UIView(frame:CGRectMake(10,74,300,80))
        backgroundView.layer.cornerRadius = 8.0
        backgroundView.backgroundColor = UIColor(red: 247.0/255.0, green: 247.0/255.0, blue: 247.0/255.0, alpha: 1.0)
        backgroundView.layer.borderWidth = 1
        let borderColor:UIColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0, alpha: 1.0)
        backgroundView.layer.borderColor = borderColor.CGColor
        self.view.addSubview(backgroundView)
        
        var lineView:UIView = UIView(frame:CGRectMake(10,115,300,1))
        lineView.backgroundColor = borderColor
        self.view.addSubview(lineView)
        
        var evView:UIImageView = UIImageView(frame:CGRectMake(0,0,250,40))
        evView.userInteractionEnabled = true
        backgroundView.addSubview(evView)
        
        
        var lpFont:UIFont = UIFont.boldSystemFontOfSize(16);
        
        var unameLable:UILabel = UILabel(frame:CGRectMake(20,5,55,40))
        unameLable.text = "用户名"
        unameLable.highlighted = true
        unameLable.highlightedTextColor = UIColor.blackColor()
        unameLable.textColor = UIColor.blackColor()
        unameLable.backgroundColor = UIColor.clearColor()
        unameLable.font = lpFont
        backgroundView.addSubview(unameLable)
//        self.view.bringSubviewToFront(unameLable)
        
        var emailView = UITextField(frame:CGRectMake(80.0,5,200,40))
        emailView.backgroundColor = UIColor.clearColor()
        emailView.keyboardType = UIKeyboardType.EmailAddress
        emailView.textColor = UIColor.grayColor()
        emailView.tag = 101
        emailView.returnKeyType = UIReturnKeyType.Next
        emailView.font = UIFont.systemFontOfSize(17)
        emailView.delegate = self
        emailView.placeholder = "用户名或电子邮箱"
        emailView.highlighted = true
        evView.addSubview(emailView)
        
        
        var passwdLable:UILabel = UILabel(frame:CGRectMake(20, 43, 45, 40))
        passwdLable.backgroundColor = UIColor.clearColor()
        passwdLable.text = "密码"
        passwdLable.font = lpFont
        passwdLable.highlighted = true
        passwdLable.highlightedTextColor = UIColor.blackColor();
        passwdLable.backgroundColor = UIColor.clearColor()
        passwdLable.textColor = UIColor.blackColor()
        backgroundView.addSubview(passwdLable)
        
        var passwdView = UITextField(frame:CGRectMake(80, 43, 200, 40));
        passwdView.backgroundColor = UIColor.clearColor();
        passwdView.keyboardType = UIKeyboardType.Default;
        passwdView.borderStyle = UITextBorderStyle.None;
        passwdView.autocapitalizationType = UITextAutocapitalizationType.None; //关闭首字母大写
        passwdView.returnKeyType = UIReturnKeyType.Done; //完成
        passwdView.secureTextEntry = true //验证
        passwdView.delegate = self;
        passwdView.tag = 102;
        passwdView.textColor = UIColor.grayColor();
        passwdView.font = lpFont
        backgroundView.addSubview(passwdView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
