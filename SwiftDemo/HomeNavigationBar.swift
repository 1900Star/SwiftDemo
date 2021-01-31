//
//  HomeNavigationBar.swift
//  SwiftDemo
//
//  Created by 罗诗朋 on 2021/1/31.
//

import SwiftUI

private let kLableWidth:CGFloat = 60
private let kLableHeight:CGFloat = 24

struct HomeNavigationBar: View {
   @State var leftPercent: CGFloat
    var body: some View {
        HStack(alignment: .top, spacing: 0){
            Button(action: {
                print("camera click")
                
            }){
                Image(systemName: "camera").resizable()
                    .scaledToFit()
                    .frame(width: kLableHeight, height: kLableHeight)
                    .padding(.horizontal, 15)
                    .padding(.top,5)
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            VStack(spacing : 3){
                HStack(spacing : 0){
                    Text("推荐").bold()
                        .frame(width: kLableWidth, height: kLableHeight)
                        .padding(.top, 5)
                        .opacity(Double(1 - leftPercent * 0.5))
                        .onTapGesture {
                            withAnimation {
                                self.leftPercent = 0
                                
                            }
                        }
                    
                    Spacer()
                    
                    Text("热门").bold()
                        .frame(width: kLableWidth, height: kLableHeight)
                        .padding(.top, 5)
                        .opacity(Double(0.5 + leftPercent * 0.5))
                        .onTapGesture {
                            withAnimation {
                                self.leftPercent = 1
                            }
                        }
                    
                }.font(.system(size: 20))
                
                GeometryReader { geometry in
                    RoundedRectangle(cornerRadius: 2)
                        .foregroundColor(.orange)
                        .frame(width: 30, height: 4)
                        .offset(x: geometry.size.width * (self.leftPercent - 0.5) + kLableWidth * (0.5 - self.leftPercent))
                    
                }.frame(height: 6)
               
            }.frame(width: UIScreen.main.bounds.width * 0.5)
            
            Spacer()
            
            Button(action: {
                print("add click")
            }){
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: kLableHeight, height: kLableHeight)
                    .padding(.horizontal, 15)
                    .padding(.top,5)
                    .foregroundColor(.orange)
            }
           
        }.frame(width: UIScreen.main.bounds.width)
    }
}

struct HomeNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavigationBar(leftPercent: 0)
    }
}
