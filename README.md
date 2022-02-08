# PagingView

A paging scroll view for SwiftUI, using internal SwiftUI components. 

This is basically the same as TabView in the paging mode with the index style set to never.
The major difference is having control over the spacing / margins for items in the scroll view,
allowing you to create card-like where the next and previous cards can "peek".

## Example

Using TabView:
```swift
import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      Color.red
      Color.blue
      Color.green
    }
    .tabViewStyle(.page(indexDisplayMode: .never))
  }
}
```

Using PagingView:
```swift
import SwiftUI
import PagingView

struct ContentView: View {
  var body: some View {
    PagingView {
      Color.red
      Color.blue
      Color.green
    }
  }
}
```

Card like interface:
```swift
import SwiftUI
import PagingView

struct ContentView: View {
  var body: some View {
    PagingView(config: .init(margin: 20, spacing: 10)) {
      Group {
        Color.red
        Color.green
        Color.blue
      }
      .mask(RoundedRectangle(cornerRadius: 10))
      .aspectRatio(1.4, contentMode: .fit)
    }
  }
}
```
