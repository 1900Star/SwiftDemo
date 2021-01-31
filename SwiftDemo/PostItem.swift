//
//  PostItem.swift
//  SwiftDemo
//
//  Created by 罗诗朋 on 2021/1/31.
//

import SwiftUI

struct PostItem: View {
    let postBean:PostBean
    var body: some View {
        VStack(spacing:5){
            HStack(spacing: 5){
                postBean.avatarImage
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        PostVipView(isVip: postBean.vip).offset(x: 16, y:16)
                      
                    ).padding(.leading,4)
                
                VStack(alignment: .leading, spacing: 10){
                    Text(postBean.name).font(Font.system(size: 16)).foregroundColor(Color(red: 242/255, green: 99/255, blue: 4/255)).lineLimit(1)
                    Text(postBean.date).font(.system(size: 14))
                    
                }.padding(.leading ,5)
                Spacer()
                if !postBean.isFollowed {
                    
                    Button(action: {
                        print("click 关注点击")
                        
                    }){
                        Text("关注").font(.system(size: 16))
                            .foregroundColor(.orange)
                            .frame(width: 50, height: 26)
                            .overlay(RoundedRectangle(cornerRadius: 13).stroke(Color.orange,lineWidth: 1))
                    }
                    .buttonStyle(BorderlessButtonStyle())
                    
                }

           
            }
            Text(postBean.text).font(.system(size: 16))
            
            if !postBean.images.isEmpty {
                PostMultiItem(images: postBean.images, width: UIScreen.main.bounds.width - 30)
            }
            
            Divider()
            
            HStack(spacing:0){
                
                Spacer()
                PostAndLikeButton(image: "message", text: postBean.commentCountText, color: .black){
                    print("评论点击")
                }
                
                Spacer()
                
                PostAndLikeButton(image: "heart", text: postBean.commentCountText, color: .red){
                    print("点赞点击")
                }
                Spacer()
            }
            
            Rectangle().padding(.horizontal,-15)
                .frame(height:10).foregroundColor(Color(red: 238/255, green: 238/255, blue: 238/255))
            
        }.padding(.horizontal,15)
        .padding(.top,20)
    
    }
}

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem(postBean:postList.list[3])
}
}
