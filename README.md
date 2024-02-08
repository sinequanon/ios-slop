iOS Slop

* [Associated Type](./associatedType.md)

* Binding
```swift
    func selection() -> Binding<Int> {
        Binding {
            self.currentIndex
        } set: { tappedTab in
            print("Tapped : \(tappedTab)")
            if tappedTab != currentIndex {
                print("XXXXXXXXXXXXXXXXXX")
            } else {
                self.currentIndex = tappedTab
            }

        }
    }

    Binding<CGFloat>(
    	get: {$translation.wrappedValue},
    	set: { value in
            print("XXXXXXXXXXXXXXXXX: \(value)")
    	})
```

* Nibs
	* IBDesignable
		Takes one of your controls and allows it to show up in Interface Designer.

* [Objective-C](./objectivec.md)

* [@StateObject vs @ObservedObject](state/state.md)
    * StateObject retains state. ObservedObject loses state after reinitialization.


* Stepper

* View modifiers
```swift
.offset(x: geometry.framein: .global)(.minX * 0.1)
.transformEffect.init((translationX: figureTransform(position: foo.baz,width: geometry.size.width), y: 0))
.clipped()
.animation(Animation.linear(duration: 0.75).repeatForever(autoreverses: false)))
```

