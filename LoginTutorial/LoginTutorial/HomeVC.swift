
//
//  HomeVC.swift
//  LoginTutorial
//
//  Created by anil kumar on 19/08/20.
//  Copyright © 2020 VikasSIngh. All rights reserved.
//

import SwiftUI

struct HomeViewController:View {
    @State var userName: String = ""
    @State var PassWord: String = ""
    
    var body: some View{
        VStack (alignment:.leading){
        AppLogo()
        Tableview()
            
        Text ("UserName")
            .font(.callout)
            .bold()
            .padding(.leading,10)
            
            TextField("Enter User Name", text: $userName)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            Text ("Password")
                       .font(.callout)
                       .bold()
                       .padding(.leading,10)
               
            
            TextField("Enter Password", text: $PassWord)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
             Spacer()
    }
    }
}


fileprivate func AppLogo()-> some View{
    return Text("Home Screen")
        .font(.title)
        .fontWeight(.bold)
       // .padding(.top, 10)
        .frame(width: 360, height: 60, alignment: .center)
        .background(Color.black)
        .foregroundColor(Color.white)
        .padding()
        
}

fileprivate func Tableview()-> some View
{
    return List{
        Text("Numeber 1")
        Text("Numeber 1")
        Text("Numeber 1")
        Text("Numeber 1")
        Text("Numeber 1")
    }
}


//fileprivate func TxtFieldFunc()-> some View{
//
//    return
//        VStack(alignment:.leading) {
//            Text("UserName")
//                .font(.callout)
//                .bold()
//            TextField("Enter UserName... ", text:$userName)
//    }
//}



struct HomeView_Controller:PreviewProvider {
    static var previews: some View{
        HomeViewController()
    }
}


