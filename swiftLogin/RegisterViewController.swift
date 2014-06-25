//
//  RegisterViewController.swift
//  swiftLogin
//
//  Created by Chi Zhang on 14/6/24.
//  Copyright (c) 2014年 Chi. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController , UITextFieldDelegate{

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }
    
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder:aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var backgroundView:UIView = UIView(frame:CGRectMake(10,74,300,125))
        backgroundView.layer.cornerRadius = 8.0
        backgroundView.backgroundColor = UIColor(red: 247.0/255.0, green: 247.0/255.0, blue: 247.0/255.0, alpha: 1.0)
        backgroundView.layer.borderWidth = 1
        let borderColor:UIColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0, alpha: 1.0)
        backgroundView.layer.borderColor = borderColor.CGColor
        self.view.addSubview(backgroundView)
        
        var lineView:UIView = UIView(frame:CGRectMake(10,115,300,1))
        lineView.backgroundColor = borderColor
        self.view.addSubview(lineView)
        
        var lpFont:UIFont = UIFont.boldSystemFontOfSize(16);
        
        var unameLable:UILabel = UILabel(frame:CGRectMake(20,5,55,40))
        unameLable.text = "用户名"
        unameLable.highlighted = true
        unameLable.highlightedTextColor = UIColor.blackColor()
        unameLable.textColor = UIColor.blackColor()
        unameLable.backgroundColor = UIColor.clearColor()
        unameLable.font = lpFont
        backgroundView.addSubview(unameLable)
        
        var unameView = UITextField(frame:CGRectMake(80.0,5,200,40))
        unameView.backgroundColor = UIColor.clearColor()
        unameView.keyboardType = UIKeyboardType.EmailAddress
        unameView.textColor = UIColor.grayColor()
        unameView.tag = 101
        unameView.returnKeyType = UIReturnKeyType.Next
        unameView.font = UIFont.systemFontOfSize(17)
        unameView.delegate = self
        unameView.placeholder = "用户名"
        unameView.highlighted = true
        backgroundView.addSubview(unameView)
        
        
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
        passwdView.returnKeyType = UIReturnKeyType.Next; //完成
        passwdView.secureTextEntry = true //验证
        passwdView.delegate = self;
        passwdView.tag = 102;
        passwdView.textColor = UIColor.grayColor();
        passwdView.font = lpFont
        backgroundView.addSubview(passwdView)
        
        var line2View:UIView = UIView(frame:CGRectMake(10, 155, 300, 1))
        line2View.backgroundColor = borderColor
        self.view.addSubview(line2View)
        
        var emailLable:UILabel = UILabel(frame:CGRectMake(20, 82, 280, 40))
        emailLable.backgroundColor = UIColor.clearColor()
        emailLable.text = "电子邮箱"
        emailLable.font = lpFont
        emailLable.highlighted = true
        emailLable.highlightedTextColor = UIColor.blackColor();
        emailLable.backgroundColor = UIColor.clearColor()
        emailLable.textColor = UIColor.blackColor()
        backgroundView.addSubview(emailLable)
        
        
        var emailView = UITextField(frame:CGRectMake(90, 82, 200, 40))
        emailView.backgroundColor = UIColor.clearColor()
        emailView.keyboardType = UIKeyboardType.EmailAddress
        emailView.textColor = UIColor.grayColor()
        emailView.tag = 103
        emailView.returnKeyType = UIReturnKeyType.Done
        emailView.font = UIFont.systemFontOfSize(17)
        emailView.delegate = self
        emailView.placeholder = "zhangchi1213@gmail.com"
        emailView.highlighted = true
        backgroundView.addSubview(emailView)
        
        var nextButton:UIBarButtonItem = UIBarButtonItem(title:"下一步", style:UIBarButtonItemStyle.Plain,target:self,action:"gotonext")
        self.navigationItem.rightBarButtonItem = nextButton
    }
    
    func gotonext() {
        println("go to next")
        var registerView:Register2ViewController = self.storyboard.instantiateViewControllerWithIdentifier("register2") as Register2ViewController
        self.navigationController.pushViewController(registerView, animated:true)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_textField: UITextField!) -> Bool {
        _textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField!) {
        println(textField.text)
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
