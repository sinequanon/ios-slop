//
//  ContentView.swift
//  PropertyWrapperSample
//
//  Created by Rowell Sotto on 12/19/23.
//

import SwiftUI

@propertyWrapper
struct UserDefault<Value> {
    let key: String
    let defaultValue: Value
    let container: UserDefaults = .standard
    
    var wrappedValue: Value {
        get {
            container.object(forKey: key) as? Value ?? defaultValue
        }
        set {
            container.set(newValue, forKey: key)
        }
    }
    
}

struct ContentView: View {
    var body: some View {
        VStack {
            if (UserDefaults.hasOnboarded) {
                Text("Has Onboarded")
            }
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button(action: {
                UserDefaults.hasOnboarded = true
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                Text(String(UserDefaults.hasOnboarded))
            })
        }
        .padding()
    }
}

extension UserDefaults {
    public enum Keys {
        static let hasOnboarded = "hasOnboarded"
    }
   
    @UserDefault(key: UserDefaults.Keys.hasOnboarded, defaultValue: false)
    static var hasOnboarded: Bool
}


#Preview {
    ContentView()
}
