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
        
        //responseJSON
        
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
        
//        request("http://jsonplaceholder.typicode.com/posts").responseJSON { responseJSON in
//
//            switch responseJSON.result {
//            case .success(let value):
//                print("value", value)
//
//                guard let jsonArray = responseJSON.result.value as? [[String: Any]] else { return }
//                print("array: ", jsonArray)
//                print("1 object: ", jsonArray[0])
//                print("id: ", jsonArray[0]["id"]!)
//            case .failure(let error):
//                print(error)
//            }
//        }
        
//        request("http://jsonplaceholder.typicode.com/posts").responseJSON { responseJSON in
//
//            switch responseJSON.result {
//            case .success(let value):
//
//                guard let jsonArray = value as? Array<[String: Any]> else { return }
//
//                var posts: [Post] = []
//
//                for jsonObject in jsonArray {
//                    guard
//                        let id = jsonObject["id"] as? Int,
//                        let title = jsonObject["title"] as? String,
//                        let body = jsonObject["body"] as? String,
//                        let userId = jsonObject["userId"] as? Int
//                        else {
//                            return
//                        }
//                    let post = Post(id: id, title: title, body: body, userId: userId)
//                    posts.append(post)
//                }
//
//                print(posts)
//
//            case .failure(let error):
//                print(error)
//            }
//        }
        
//        request("http://jsonplaceholder.typicode.com/posts").responseJSON { responseJSON in
//
//            switch responseJSON.result {
//            case .success(let value):
//
//                guard let jsonArray = value as? Array<[String: Any]> else { return }
//                var posts: [Post] = []
//
//                for jsonObject in jsonArray {
//                    guard let post = Post(json: jsonObject) else { return }
//                    posts.append(post)
//                }
//                print(posts)
//
//            case .failure(let error):
//                print(error)
//            }
//        }
        
//        request("http://jsonplaceholder.typicode.com/posts").responseJSON { responseJSON in
//
//            switch responseJSON.result {
//            case .success(let value):
//                guard let posts = Post.getArray(from: value) else { return }
//                print(posts)
//
//            case .failure(let error):
//                print(error)
//            }
//        }
        
//        //responseData
//        request("http://jsonplaceholder.typicode.com/posts").responseData { responseData in
//
//            switch responseData.result {
//            case .success(let value):
//                guard let string = String(data: value, encoding: .utf8) else { return }
//                print(string)
//
//            case .failure(let error):
//                print(error)
//            }
//        }
        
//        //responseString
//        request("http://jsonplaceholder.typicode.com/posts").responseString { responseString in
//
//            switch responseString.result {
//            case .success(let value):
//                print(value)
//
//            case .failure(let error):
//                print(error)
//            }
//        }
        
//        //response
//        request("http://jsonplaceholder.typicode.com/posts").response { response in
//            guard
//                let data = response.data,
//                let string = String(data: data, encoding: .utf8)
//                else { return }
//            print(string)
//        }
        
        
//        //Прогресс загрузки
//
//        request("https://s-media-cache-ak0.pinimg.com/originals/ef/6f/8a/ef6f8ac3c1d9038cad7f072261ffc841.jpg")
//            .validate()
//            .downloadProgress { progress in
//                print("totalUnitCount:\n", progress.totalUnitCount)
//                print("completedUnitCount:\n", progress.completedUnitCount)
//                print("fractionCompleted:\n", progress.fractionCompleted)
//                print("localizedDescription:\n", progress.localizedDescription)
//                print("---------------------------------------------")
//            }
//            .response { response in
//                guard
//                    let data = response.data,
//                    let image = UIImage(data: data)
//                    else { return }
//                print(image)
//        }
        
//        //Создание объекта (POST)
//
//        let params: [String: Any] = [
//            "title": "new post",
//            "body": "some news",
//            "userId": 10
//        ]
//
//        request("http://jsonplaceholder.typicode.com/posts", method: .post, parameters: params).validate().responseJSON { responseJSON in
//
//            switch responseJSON.result {
//            case .success(let value):
//                guard
//                    let jsonObject = value as? [String: Any],
//                    let post = Post(json: jsonObject)
//                    else { return }
//                print(post)
//
//            case .failure(let error):
//                print(error)
//            }
//        }
//
//        request("http://jsonplaceholder.typicode.com/posts").responseJSON { responseJSON in
//
//            switch responseJSON.result {
//            case .success(let value):
//
//                guard let jsonArray = value as? Array<[String: Any]> else { return }
//                var posts: [Post] = []
//
//                for jsonObject in jsonArray {
//                    guard let post = Post(json: jsonObject) else { return }
//                    if (post.userId == 10) {
//                        print(post.body + "\n")
//                    }
//                    posts.append(post)
//                }
//                //print(posts)
//
//            case .failure(let error):
//                print(error)
//            }
//        }
        
//        //Обновление объекта (PUT)
//        let params: [String: Any] = [
//            "title": "new post",
//            "body": "some news",
//            "userId": 10
//        ]
//        
//        request("http://jsonplaceholder.typicode.com/posts/1", method: .put, parameters: params).validate().responseJSON { responseJSON in
//            
//            switch responseJSON.result {
//            case .success(let value):
//                guard
//                    let jsonObject = value as? [String: Any],
//                    let post = Post(json: jsonObject)
//                    else {
//                        print("can't create post :(\n")
//                        return }
//                print(post)
//                
//            case .failure(let error):
//                print(error)
//            }
//        }
        
        //Загрузка фотографии на сервер (multipartFormData)
        let image = UIImage(named: "nyno2_tour")!
        let data = UIImagePNGRepresentation(image)!
        
        let httpHeaders = ["Authorization": "Basic YWNjX2NkYTJkNGM5ZmJjNmViZTpmMjAzNzNiOWE0ZTJmNGY2NDk0ZjEyNzFmNzEzOTdmNg=="]
        
        upload(multipartFormData: { multipartFormData in
            multipartFormData.append(data, withName: "imagefile", fileName: "image.jpg", mimeType: "image/jpeg")
        }, to: "https://api.imagga.com/v1/content", headers: httpHeaders, encodingCompletion: { encodingResult in
            switch encodingResult {
            case .success(let uploadRequest, let streamingFromDisk, let streamFileURL):
                print(uploadRequest)
                print(streamingFromDisk)
                print(streamFileURL ?? "streamFileURL is NIL")
                
                uploadRequest.validate().responseJSON() { responseJSON in
                    switch responseJSON.result {
                    case .success(let value):
                        print(value)
                        
                    case .failure(let error):
                        print(error)
                    }
                }
                
            case .failure(let error):
                print(error)
            }
        })
        
        print("viewDidLoad ended \n")
        
    }

}

