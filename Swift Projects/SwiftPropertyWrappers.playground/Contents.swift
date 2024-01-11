import UIKit

var greeting = "Hello, playground"

@propertyWrapper
struct UserDefault<Value> {
    let key: String
    let defaultValue: Value
    let container: UserDefaults = .standard // UserDefaults(suiteName: "foo")
    
    var wrappedValue: Value {
        get {
            container.object(forKey: key) as? Value ?? defaultValue
        }
        set {
            container.set(newValue, forKey: key)
        }
    }
}

extension UserDefaults {
    public enum Keys {
       static let hasOnboarded = "hasOnboarded"
    }
    
    @UserDefault(key: UserDefaults.Keys.hasOnboarded, defaultValue: false)
    static var hasOnboarded: Bool
}

func shouldShowOnboardingUI() {
//    if UserDefaults.standard.bool(forKey: "hasOnboarded") {
    if UserDefaults.hasOnboarded {
        // show app
    } else {
       // do something else
    }
}
