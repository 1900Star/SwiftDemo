//
//  PostView.swift
//  SwiftDemo
//
//  Created by 罗诗朋 on 2021/1/30.
//

import SwiftUI

struct PostVipView: View {
    let isVip:Bool
    var body: some View {
        Group{
            if isVip{
                Text("V").bold()
                    .font(.system(size:16))
                    .frame(width: 15, height: 15)
                    .foregroundColor(.yellow)
                    .background(Color.red)
                    .clipShape(Circle())
                    .overlay(RoundedRectangle(cornerRadius: 7.5).stroke(Color.white,lineWidth: 1))
            }
        }

            
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostVipView(isVip: true)
    }
}
