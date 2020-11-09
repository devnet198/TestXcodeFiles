//
//  CustomTextField.swift
//  LoginTutorial
//
//  Created by anil kumar on 18/08/20.
//  Copyright © 2020 VikasSIngh. All rights reserved.
//

import SwiftUI

struct CustomLabelTextField: View {
    var label : String
    var placeHolder: String
    var secure: Bool
    @Binding var bVariable : String
    
    var body: some View{
        VStack(alignment: .leading) {
            Text(label)
                .font(.headline)
            if secure{
                SecureField(placeHolder, text: $bVariable)
                .padding()
                .background( Color.gray)
                
                    
                .cornerRadius(7)
            }else{
                TextField(placeHolder, text: $bVariable)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                .padding()
                   // .background(Color.gray)
                        .cornerRadius(7)
            }
        }
        //.padding(.horizontal, 15)
        //.padding([.bottom,.top], 10)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
       /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
