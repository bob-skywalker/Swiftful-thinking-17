//
//  UnitTestingBootcampViewModel.swift
//  Swiftful-thinking-17
//
//  Created by Bo Zhong on 6/11/24.
//

import Foundation
import SwiftUI

class UnitTestingBootcampViewModel: ObservableObject {
    
    @Published var isPremium: Bool
    @Published var dataArray: [String] = [] 
    
    init(isPremium: Bool) {
        self.isPremium = isPremium
    }
    
}
