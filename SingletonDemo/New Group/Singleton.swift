//
//  ApiClient.swift
//  SingletonDemo
//
//  Created by Arpana on 11/08/24.
//

import Foundation
import UIKit

struct LoggedInUser {}

class ApiClient {
    
    static var sharedInstance = ApiClient()
    
    private init() {}
    
    func login(completion :(LoggedInUser)->Void) {}
}


class MockAPiClient : ApiClient {
    
    //Now you can inject mock data  through int method
     init() {}
}


class LoginViewController: UIViewController {
    
    func loginBtnTapped()
    {
        
        //let client = ApiClient.sharedInstance

        var api = ApiClient.sharedInstance
        ApiClient.sharedInstance.login { user in
            
            //go to next screen
        }
    }
}
