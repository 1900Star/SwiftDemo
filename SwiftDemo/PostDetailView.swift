//
//  PostDetailView.swift
//  SwiftDemo
//
//  Created by 罗诗朋 on 2021/1/31.
//

import SwiftUI

struct PostDetailView: View {
    let postBean:PostBean
    var body: some View {
        List{
            PostItem(postBean:postBean).listRowInsets(EdgeInsets())
            ForEach(1...10,id: \.self)  {  i in
                Text("评论 \(i)")
                
            }
        }
        .navigationBarTitle("详情",displayMode: .inline)
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(postBean: postList.list[0])
    }
}
