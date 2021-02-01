//
//  HomeView.swift
//  SwiftDemo
//
//  Created by 罗诗朋 on 2021/1/31.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ScrollView(.horizontal, showsIndicators : false){
                HStack(spacing : 0){
                    PostItem(postBean: postList.list[1]).frame(width: UIScreen.main.bounds.width)
                    PostItem(postBean: postList.list[2]).frame(width: UIScreen.main.bounds.width)
                    
                }
            }
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarItems(leading: HomeNavigationBar(leftPercent: 0))
            .navigationBarTitle("首页", displayMode: .inline)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
