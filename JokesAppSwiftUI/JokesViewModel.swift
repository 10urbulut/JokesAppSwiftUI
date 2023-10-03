//
//  JokesViewModel.swift
//  JokesAppSwiftUI
//
//  Created by Onur Bulut on 30.09.2023.
//

import Foundation
import Alamofire

class JokesViewModel: ObservableObject {
    
    
  @Published  var jokes = [JokesData]()
    
    //https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json

    
    init() {
        getJokes()
    }
    
    
    func getJokes(){
        
        AF.request("https://api.chucknorris.io/jokes/random", method: .get).responseDecodable(of: JokesData.self, completionHandler: { response in
            
            
            switch response.result {
            case .success(let data):
                let value = data
                self.jokes.append(value)
            case .failure(let error):
                print(error)
            }
            
            
        })
        
    }
    
}






































