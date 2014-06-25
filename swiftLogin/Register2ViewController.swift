//
//  Register2ViewController.swift
//  swiftLogin
//
//  Created by Chi Zhang on 14/6/25.
//  Copyright (c) 2014年 Chi. All rights reserved.
//

import UIKit

class Register2ViewController: UIViewController , UITextFieldDelegate{

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }
    
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder:aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        var nextButton:UIBarButtonItem = UIBarButtonItem(title:"完成", style:UIBarButtonItemStyle.Plain,target:self,action:"finish")
        self.navigationItem.rightBarButtonItem = nextButton

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
        
        var nicknameLable:UILabel = UILabel(frame:CGRectMake(20,5,75,40))
        nicknameLable.text = "宝贝小名"
        nicknameLable.highlighted = true
        nicknameLable.highlightedTextColor = UIColor.blackColor()
        nicknameLable.textColor = UIColor.blackColor()
        nicknameLable.backgroundColor = UIColor.clearColor()
        nicknameLable.font = lpFont
        backgroundView.addSubview(nicknameLable)

        var nicknameView = UITextField(frame:CGRectMake(80.0,5,200,40))
        nicknameView.backgroundColor = UIColor.clearColor()
        nicknameView.keyboardType = UIKeyboardType.EmailAddress
        nicknameView.textColor = UIColor.grayColor()
        nicknameView.tag = 101
        nicknameView.returnKeyType = UIReturnKeyType.Next
        nicknameView.font = UIFont.systemFontOfSize(17)
        nicknameView.delegate = self
        nicknameView.placeholder = ""
        nicknameView.highlighted = true
        nicknameView.becomeFirstResponder()
        backgroundView.addSubview(nicknameView)
        
        var genderLable:UILabel = UILabel(frame:CGRectMake(20, 43, 75, 40))
        genderLable.backgroundColor = UIColor.clearColor()
        genderLable.text = "宝贝性别"
        genderLable.font = lpFont
        genderLable.highlighted = true
        genderLable.highlightedTextColor = UIColor.blackColor();
        genderLable.backgroundColor = UIColor.clearColor()
        genderLable.textColor = UIColor.blackColor()
        backgroundView.addSubview(genderLable)
        
        var genderView:UISegmentedControl = UISegmentedControl(items:["男","女"])
        genderView.frame = CGRectMake(90,46, 130,32)
        genderView.segmentedControlStyle = UISegmentedControlStyle.Plain
        genderView.selectedSegmentIndex = 1
        backgroundView.addSubview(genderView)
    }
    
    func finish() {
        println("finish")
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
