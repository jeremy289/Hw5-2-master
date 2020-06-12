//
//  UVView.swift
//  Hw5
//
//  Created by User13 on 2020/6/12.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import SwiftUI

struct UVView: View {
    var data : UVData
    var body: some View {
        VStack {
            Text(data.date_iso)
            Text("\(data.value)")
        }
        
    
    }
}

/*struct UVView_Previews: PreviewProvider {
    static var previews: some View {
        UVView()
    }
}*/
