//
//  ContentView.swift
//  SwiftDemo
//
//  Created by 罗诗朋 on 2021/1/25.
//

import SwiftUI

struct ContentView: View {
 
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().selectionStyle = .none
        
    }
    var body: some View {
        List{
            ForEach(postList.list){ postBean in
                ZStack {
                    PostItem(postBean: postBean).listRowInsets(EdgeInsets())
                    
                    NavigationLink(destination: PostDetailView(postBean: postBean)) {
                        EmptyView()
                    }.hidden()
                }.listRowInsets(EdgeInsets())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
                NavigationView{
                    ContentView()
                   .navigationBarTitle(Text("Smartisan"))
                    .navigationBarHidden(false)
                }
        
    }
}
