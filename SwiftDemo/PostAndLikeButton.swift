//
//  PostAndLikeButton.swift
//  SwiftDemo
//
//  Created by 罗诗朋 on 2021/1/31.
//

import SwiftUI

struct PostAndLikeButton: View {
    let image:String
    let text: String
    let color: Color
    let action:()->Void
    
    var body: some View {
        Button(action:action){
            HStack(spacing: 5){
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                Text(text).font(.system(size: 15))
            }
            
        }.foregroundColor(color)
        .buttonStyle(BorderlessButtonStyle())
    }
}

struct PostAndLikeButton_Previews: PreviewProvider {
    static var previews: some View {
        PostAndLikeButton(image: "heart", text: "点赞", color: .red){
            print("点赞")
        }
    }
}
