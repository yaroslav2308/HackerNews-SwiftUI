//
//  WebView.swift
//  H4XOR News
//
//  Created by Yaroslav Monastyrev on 15.11.2021.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {

    let urlString: String?
    
    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView()
        
        if let safeUrlString = urlString {
            if let url = URL(string: safeUrlString) {
                let request = URLRequest(url: url)
                webView.load(request)
            }
        }
        
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
