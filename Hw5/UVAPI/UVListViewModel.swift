//
//  UVListViewModel.swift
//  Hw5
//
//  Created by User13 on 2020/6/12.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import Foundation

class UVListViewModel: ObservableObject {
    @Published var uv = [UVData]()
    //@Published var weathers = [weather]()
    func fetchUV() {
    let urlStr = "http://api.openweathermap.org/data/2.5/uvi?appid=bdb56bc1ef58c981e76bd0a4d7c6dbd1&lat=24&lon=121&cnt=1"
        if let url = URL(string: urlStr){
            URLSession.shared.dataTask(with: url){(data,response,error) in
                let decoder=JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                if let data = data,let UVData = try?decoder.decode(UVData.self,from: data){
                    DispatchQueue.main.async {
                        self.uv = [UVData]

                    }
                    
                }
            }.resume()
        }
    }
}
