//
//  ContentView.swift
//  PodkatButtonSWUI
//
//  Created by Yan Khanetski on 20.09.21.
//

import SwiftUI

struct YellowBackgroundLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration)
            .padding()
            .background(Color.yellow)
    }
}

struct ContentView: View {
    
    
    @State private var counter = 0
    
    
    var body: some View {
        VStack {

            ZStack{
                
            Text("\(self.counter)")
                .padding()
            
               // Label("", systemImage: "book.fill")
                //.frame(width: 10, height: 10)
                //.background(Image("lbl"))
            }
            
            HStack{
            Button("Tap At Me") {
                self.counter += 1
            }
                Spacer()
                    .frame(width: 100, height: 50)
            Button("Restart") {
                self.counter = 0
            }
            }
            //.frame(width: 2000, height: 1000)
            //.background(Image("bck"))
            
        }
        
        
        
    }
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
