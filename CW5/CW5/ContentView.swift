//
//  ContentView.swift
//  CW5
//
//  Created by Macbook Air on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    var emojies = ["🥳", "🤯", "😅", "😐", "😬", "😡", "🫠", "🤩", "😴"]
    
    @State var tap = ""
    
    var body: some View {
        VStack{
          Text("اختار الايموجي الذي يعبر عنك اليوم")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                
            
                .padding(.all, 50)
            
                Text(tap)
                .font(.system(size: 90))
                .fontWeight(.heavy)
            
                .padding(.all, 50)
            
        ScrollView(.horizontal){
                HStack{
                    
                ForEach(emojies, id: \.self){
                    emoji in
                    Text(emoji)
                        .font(.largeTitle)
                        .frame(width: 70, height: 70)
                        .background(.gray)
                        .opacity(0.7)
                        .clipShape(Circle())
                        .onTapGesture {
                            
                            tap = emoji
                                
                                    }
                }
                }
                
                
                
            }
            
            
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
