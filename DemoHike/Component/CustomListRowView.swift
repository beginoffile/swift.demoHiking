//
//  CustomListRowView.swift
//  DemoHike
//
//  Created by Aguid Ramirez Sanchez on 07/03/24.
//

import SwiftUI

struct CustomListRowView: View {
    //MARK: - PROOPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            if rowContent != nil{
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            
            }else if(rowLinkLabel != nil && rowLinkDestination != nil){
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
                    .fontWeight(.heavy)
            }
            else{
                EmptyView()
            }
           
        } label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width:30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
        CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowContent: nil, rowTintColor: .pink, rowLinkLabel: "github", rowLinkDestination: "https://github.com/beginoffile")
    }
}
