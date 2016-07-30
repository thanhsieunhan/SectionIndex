//
//  DetailVC.swift
//  SectionIndex
//
//  Created by Le Ha Thanh on 7/30/16.
//  Copyright © 2016 le ha thanh. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    var person : Person!
    var avatar = UIImageView()
    var labelname = UILabel()
    var mess = UIButton()
    var labelPhone = UILabel()
    var type = UILabel()
    var call = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.avatar.image = UIImage(named: "avatar.png")
        self.avatar.frame = CGRectMake(self.view.bounds.width/2 - 150 , 80, 300, 300)
        self.view.backgroundColor = UIColor.whiteColor()
        self.labelname.frame = CGRectMake(30, 400, 300, 50)
        self.labelname.font = UIFont.boldSystemFontOfSize(25)
        self.labelname.text = person.lastName + " " + person.firstname
        
        self.labelPhone.frame = CGRectMake(130, 440, 200, 50)
        self.labelPhone.text = person.telephone
        
        self.call.frame = CGRectMake(30, 450, 50, 50)
        self.call.setImage(UIImage(named: "call.png"), forState: .Normal)
        
        self.type.frame = CGRectMake(130, 460, 200, 50)
        self.type.text = "Di động"
        self.type.alpha = 0.5
        
        self.mess.frame = CGRectMake(300, 440, 60, 60)
        self.mess.setImage(UIImage(named: "mess.png"), forState: .Normal)
        
        self.view.addSubview(self.avatar)
        self.view.addSubview(self.labelname)
        self.view.addSubview(self.mess)
        self.view.addSubview(self.labelPhone)
        self.view.addSubview(self.type)
        self.view.addSubview(self.call)
    }
}
