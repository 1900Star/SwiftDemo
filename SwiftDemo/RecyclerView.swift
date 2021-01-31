//
//  RecyclerView.swift
//  SwiftDemo
//
//  Created by 罗诗朋 on 2021/1/30.
//

import SwiftUI

struct RecyclerView: View {
    
    var body: some View {
        HStack(spacing: 5){
            Image(uiImage:UIImage(named:"d0c21786ly8fsax1ftiifj20ro0ro43g.jpg")!)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(
                    PostVipView(isVip: false).offset(x: 16, y:16)
                  
                ).padding(.leading,4)
            
            VStack(alignment: .leading, spacing: 10){
                Text("Smartisan").font(Font.system(size: 16)).foregroundColor(Color(red: 242/255, green: 99/255, blue: 4/255)).lineLimit(1)
                Text("2021-01-30").font(.system(size: 14))
                
            }.padding(.leading ,5)
            Spacer()
            if !true {
                Button(action: {
                    print("click test")
                    
                }, label: {
                    Text("关注").font(.system(size: 16))
                        .foregroundColor(.orange)
                        .frame(width: 50, height: 26, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .overlay(RoundedRectangle(cornerRadius: 13).stroke(Color.orange,lineWidth: 1))
                }).padding()
                
            }
     
       
        }
      
    }
}

struct RecyclerView_Previews: PreviewProvider {
    static var previews: some View {
        RecyclerView()
        
      
    }
}
