//
//  WebView.swift
//  H4XOR News
//
//  Created by rahul kaushik on 02/10/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView : UIViewRepresentable {
    let urlString : String?
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView , context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url : url)
                uiView.load(request)
            }
        }
    }
    
}
