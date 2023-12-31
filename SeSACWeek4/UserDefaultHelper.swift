//
//  UserDefaultHelper.swift
//  SeSACWeek4
//
//  Created by 이승현 on 2023/08/11.
//

import Foundation

//ㄹ
class UserDefaultsHelper {
    
    static let standard = UserDefaultsHelper() //싱글톤 패턴
    
    private init() { } //접근 제어자 (다음주)
    
    let userDefaults = UserDefaults.standard
    
    enum Key: String { //컴파일 최적화
        case nickname, age
    }
    
    var nickname: String {
        get {
            return userDefaults.string(forKey:  Key.age.rawValue) ?? "대장"
        }
        set {
            userDefaults.set(newValue, forKey: Key.nickname.rawValue)
        }
    }
    
    
    var age: Int {
        get {
            return userDefaults.integer(forKey: Key.age.rawValue)
        }
        set {
            return userDefaults.set(newValue, forKey: Key.age.rawValue)
        }
    }
    
}



