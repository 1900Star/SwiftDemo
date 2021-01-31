//
//  PostBean.swift
//  SwiftDemo
//
//  Created by 罗诗朋 on 2021/1/30.
//

import SwiftUI

struct PostList :Codable {
    var list:[PostBean]
}

struct PostBean :Codable ,Identifiable{
    let id:Int
    let avatar:String
    let vip:Bool
    let name:String
    let date:String
    var isFollowed:Bool
    let text:String
    let images:[String]
    var commentCount:Int
    var likeCount:Int
    var isLiked:Bool
    
  
}

extension PostBean{
    
    var avatarImage: Image {
       return loadImg(name: avatar)
    }
    
    var commentCountText : String {
        if commentCount <= 0 { return "评论" }
        if commentCount < 1000 { return "\(commentCount)" }
        return String(format: "%.1fK",Double(commentCount)/1000)
    }
    
    var likeCountText : String {
        if likeCount <= 0 { return "点赞" }
        if likeCount < 1000 { return "\(likeCount)" }
        
        return String(format: "%.1fK",Double(commentCount)/1000)
    }
}

let postList = loadList("PostListData_recommend_1.json")

func loadList(_ fileName:String) -> PostList {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: nil) else {
      fatalError("没有找到 \(fileName) json文件")
    }
    guard let data = try? Data(contentsOf: url) else {
        fatalError("文件地址解析 \(url) 出错")
    }
    guard let list = try? JSONDecoder().decode(PostList.self, from: data) else {
        fatalError("数据List解析出错")
    }
    
    return list
}
func loadImg(name:String)->Image{

    return Image(uiImage:UIImage(named:name)!)
}
