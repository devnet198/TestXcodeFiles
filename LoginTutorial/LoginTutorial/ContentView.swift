//
//  ContentView.swift
//  LoginTutorial
//
//  Created by anil kumar on 18/08/20.
//  Copyright © 2020 VikasSIngh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName = ""
    @State private var userPassword = ""
    @State var showAlert = false
    @State var ErrorTitle = ""
    @State var SuccessAlert = ""
    
    var body: some View {
       // NavigationView {
        VStack{
            
            
            //MARK:- Header
            AppName()
            
            //MARK:- LOGO
            AppLogo()
            
            //MARK:- TEXTFIELD
            
            CustomLabelTextField(label: "UserName", placeHolder: "Enter User Name", secure: false, bVariable: $userName)
            CustomLabelTextField(label: "Password", placeHolder: "Enter User Password", secure: false, bVariable: $userPassword)
            
            
            //MARK:- BUTTON TITLE WITH ACTION
            Button(action: {
                // Action Part
                
                if self.userName == ""{
                    self.ErrorTitle = "Please Enter your UserName"
                    self.showAlert = true
                    
                }else if self.userPassword == ""{
                    self.ErrorTitle = "Please Enter your Password"
                    self.showAlert = true
                    
                }
                
                else {
                    self.SuccessAlert = "Logged in Successful"
                    self.showAlert = true
                    
                }
            })
            {
                
                NavigationLink(destination: HomeViewController()){
                //UI PART
                Text("LOGIN")
                    .font(.headline)
                    .frame(width: 290, height: 65, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(30)
                    
                .padding(30)
                }}
                
           
                
            
            //MARK:- ALERT
                .alert(isPresented: $showAlert){
                    Alert(title: Text(self.ErrorTitle))
            }
        }.padding()
        
        
    
   // }
    
    } }


fileprivate func AppName()-> some View{
    return Text ("Login With Wink App")
        .font(.largeTitle)
        .fontWeight(.bold)
        .padding(.bottom , 10)
}

fileprivate func AppLogo()-> some View{
    return Image("background2")
    .clipped()
        .frame(width: 160, height: 160, alignment: .center)
    .cornerRadius(80)
        .padding(.bottom, 20 )
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


