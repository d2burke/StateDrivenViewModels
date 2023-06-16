//
//  LoginViewModel.swift
//  NavigationStacks
//
//  Created by Daniel Burke on 6/16/23.
//

import Foundation
import SwiftUI

enum LoginPath: Equatable {
    case register
    case forgotPassword
    case confirmResetPassword
}

struct LoginViewModel: Identifiable, Equatable {
    var id = UUID().uuidString
    var isLoggedIn: Bool = false
    var loginPath = [LoginPath]()
}

enum ProfilePath: Equatable {
    case photo
}

struct ProfileViewModel: Identifiable, Equatable, Hashable {
    var id = UUID().uuidString
    var profilePath = [ProfilePath]()
}

