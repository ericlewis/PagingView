import SwiftUI

public struct PagingView<Views: View>: View {
  public typealias Config = _PagingViewConfig
  public typealias PageIndex = _VariadicView.Children.Index

  private let tree: _VariadicView.Tree<Root, Views>

  public init(
    config: Config = Config(),
    page: Binding<PageIndex>? = nil,
    @ViewBuilder _ content: () -> Views
  ) {
    tree = _VariadicView.Tree(
      Root(config: config, page: page),
      content: content
    )
  }

  public init(
    direction: _PagingViewConfig.Direction,
    page: Binding<PageIndex>? = nil,
    @ViewBuilder _ content: () -> Views
  ) {
    tree = _VariadicView.Tree(
      Root(config: .init(direction: direction), page: page),
      content: content
    )
  }

  public var body: some View { tree }

  struct Root: _VariadicView.UnaryViewRoot {
    let config: Config
    let page: Binding<PageIndex>?

    func body(children: _VariadicView.Children) -> some View {
      _PagingView(
        config: config,
        page: page,
        views: children
      )
    }
  }
}
