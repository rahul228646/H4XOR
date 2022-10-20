//
//  DetailView.swift
//  H4XOR News
//
//  Created by rahul kaushik on 02/10/22.
//

import SwiftUI


struct DetailView: View {
    let url : String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url : "www.google.com")
    }
}

