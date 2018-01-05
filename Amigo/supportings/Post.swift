//
//  Post.swift
//  Amigo
//
//  Created by Yongjae Kwon on 2017. 11. 30..
//  Copyright © 2017년 Yongjae Kwon. All rights reserved.
//

import Foundation

// 로그인
struct Login: Encodable, Decodable {
    let email: String
    let password: String
}

// 회원가입
struct SignUp: Encodable, Decodable {
    let email: String
    let name: String
    let password: String
}

// 이메일 중복확인
struct EmailConfirm: Encodable, Decodable {
    let email: String
}

