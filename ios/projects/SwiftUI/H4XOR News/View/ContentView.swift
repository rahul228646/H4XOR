//
//  ContentView.swift
//  H4XOR News
//
//  Created by rahul kaushik on 02/10/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkMamager()
    var body: some View {
        NavigationView {
            List(networkManager.posts, rowContent: { post in
                NavigationLink(destination: DetailView(url : post.url)) {
                    HStack {
                        Text(String(post.points))
                            .padding(.trailing)
                        Text(post.title)
                    }
                }
            })
            .navigationTitle("H4XOR NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


