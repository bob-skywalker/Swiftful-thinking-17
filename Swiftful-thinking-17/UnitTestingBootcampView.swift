//
//  UnitTestingBootcampView.swift
//  Swiftful-thinking-17
//
//  Created by Bo Zhong on 6/11/24.
//

/*
 1. Unit Tests
    -test the business logic in your app
 
 2. UI Tests
    -test the UI of your app
 
 */

import SwiftUI

struct UnitTestingBootcampView: View {
    @StateObject private var vm: UnitTestingBootcampViewModel
    
    init(isPremium: Bool) {
        _vm = StateObject(wrappedValue: UnitTestingBootcampViewModel(isPremium: isPremium))
    }
    
    var body: some View {
        Text(vm.isPremium.description)
    }
}

#Preview {
    UnitTestingBootcampView(isPremium: true)
}
