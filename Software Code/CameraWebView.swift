import SwiftUI
import WebKit

struct CameraWebView: UIViewRepresentable {

    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: configuration)

        webView.scrollView.isScrollEnabled = false
        webView.scrollView.bounces = false
        webView.backgroundColor = .black
        webView.isOpaque = false

        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(
            url: url,
            cachePolicy: .reloadIgnoringLocalCacheData,
            timeoutInterval: 30
        )

        webView.load(request)
    }
}
