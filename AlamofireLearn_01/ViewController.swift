//
//  ViewController.swift
//  AlamofireLearn_01
//
//  Created by A1 on 11.02.18.
//  Copyright © 2018 A1. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //request(<#T##url: URLConvertible##URLConvertible#>, method: <#T##HTTPMethod#>, parameters: <#T##Parameters?#>, encoding: <#T##ParameterEncoding#>, headers: <#T##HTTPHeaders?#>)
        
//        request("http://jsonplaceholder.typicode.com/posts").responseJSON { response in
//            print(response)
//        }
        
//        request("http://jsonplaceholder.typicode.com/posts").responseJSON { responseJSON in
//
//            guard let statusCode = responseJSON.response?.statusCode else { return }
//            print("statusCode: ", statusCode)
//
//            if (200..<300).contains(statusCode) {
//                let value = responseJSON.result.value
//                print("value: ", value ?? "nil")
//            } else {
//                print("error")
//            }
//        }
        
//        request("http://jsonplaceholder.typicode.com/posts").validate().responseJSON { responseJSON in
//
//            switch responseJSON.result {
//            case .success(let value):
//                print(value)
//            case .failure(let error):
//                print(error)
//            }
//        }
        
        request("http://jsonplaceholder.typicode.com/posts").responseJSON { responseJSON in
            
            switch responseJSON.result {
            case .success(let value):
                print("value", value)
                
                guard let jsonArray = responseJSON.result.value as? [[String: Any]] else { return }
                print("array: ", jsonArray)
                print("1 object: ", jsonArray[0])
                print("id: ", jsonArray[0]["id"]!)
            case .failure(let error):
                print(error)
            }
        }
        
        print("viewDidLoad ended")
        
    }

}

