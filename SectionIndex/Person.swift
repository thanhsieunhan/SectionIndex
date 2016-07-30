
//
//  Person.swift
//  SectionIndex
//
//  Created by Le Ha Thanh on 7/30/16.
//  Copyright © 2016 le ha thanh. All rights reserved.
//

import Foundation

class Person {
    static var arrFirstnameMen: [String]!
    static var arrFirstnameWomen: [String]!
    static var arrLastName: [String]!
    static var arrMiddleNameMen: [String]!
    static var arrMiddleNameWomen: [String]!
    static var arrTelephoneNumber: [String]!
    var fullName: String!
    var lastName: String!
    var firstname: String!
    var middlename: String!
    var telephone: String!
    
    
    
    static var isCheck: Bool = true
    
    init(){
        if Person.isCheck == true {
            Person.arrFirstnameMen = ["Anh", "Bắc", "Biên", "Chung", "Chiến", "Chính", "Công", "Dương", "Dũng", "Đạo", "Điền", "Đạt", "Kiên", "Kiểm", "Long", "Mạnh", "Nam", "Nhân", "Phúc", "Phước", "Phú", "Quảng", "Quân", "Sáng", "Trung", "Tú", "Cần", "Minh", "Phương", "Thế", "Duy", "Cường", "Huy", "Thắng", "Tiến", "Tùng", "Bình"]
            
            Person.arrFirstnameWomen = ["An", "Anh", "Ánh", "Chung", "Dung", "Giang", "Hằng", "Hương", "Khánh", "Liên", "Linh", "Liễu", "Mai", "Nhi", "Nhung", "Oanh", "Phúc", "Quyên", "Quỳnh", "Thuỷ", "Thảo", "Tú", "Phương", "Hoa", "Huệ", "Uyên", "Xinh", "Yến"]
            
            Person.arrMiddleNameMen = ["Văn", "Đăng", "Bảo", "Đình", "Minh", "Vĩnh", "Hữu", "Công", "Khắc", "Duy", "Kim", "Thế", "Xuân"]
            Person.arrMiddleNameWomen = ["Thị", "Ngọc", "Thuỳ"]
            Person.arrLastName = ["Hoàng", "Trần", "Nguyễn", "Đặng", "Phạm", "Trịnh", "Đỗ", "Đinh", "Lê", "Vũ", "Bùi", "Hồ", "Ngô", "Dương", "Lý", "Lương", "Doãn"]
            Person.arrTelephoneNumber = ["0123123123", "0123456456", "0456234123", "078956745", "098123345", "0123345234", "0456456324"]
            Person.isCheck = false
        }
        
        let genderIndex = arc4random_uniform(2)
        
        if genderIndex == 0 || genderIndex == 1 {
            middlename = Person.arrMiddleNameWomen[Int(arc4random_uniform(UInt32(Person.arrMiddleNameWomen.count)))]
            firstname = Person.arrFirstnameWomen[Int(arc4random_uniform(UInt32(Person.arrFirstnameWomen.count)))]
        } else {
            middlename = Person.arrMiddleNameMen[Int(arc4random_uniform(UInt32(Person.arrMiddleNameMen.count)))]
            
            firstname = Person.arrFirstnameMen[Int(arc4random_uniform(UInt32(Person.arrFirstnameMen.count)))]
        }
        
        lastName = Person.arrLastName[Int(arc4random_uniform(UInt32(Person.arrLastName.count)))]
        telephone = Person.arrTelephoneNumber[Int(arc4random_uniform(UInt32(Person.arrTelephoneNumber.count)))]
        
        fullName = lastName + " " + middlename + " " + firstname
        
        
    }
}
