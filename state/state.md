#StateObject
#ObservedObject

#EnvironmentObject

```
    class Data: ObservableObject {
        @Published var text: String = "Hello World"
    }

    struct OuterView: View {
        @StateObject var data: Data = Data()

        var body: some View {
            ZStack {
                Color.blue.ignorSafeArea()
                InnerView()
                .environmentObject(data)
            }
        }
    }

    struct InnerView: View {
        var body: some View {
            ZStack {
                Color.red.ignorSafeArea()
                InnermostView()
            }
        }
    }

    struct InnermostView: View {
        @EnvironmentObject var data: Data

        var body: some View {
            ZStack {
                Color.yellow.ignorSafeArea()
                Text(data.text)
            }
        }
    }
```
