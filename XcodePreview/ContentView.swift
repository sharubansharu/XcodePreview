//
//  ContentView.swift
//  XcodePreview
//
//  Created by Sharuban Sharu on 4/7/24.
//

import SwiftUI

// real coding start

// Multi Text edit Modifiers shorted //

struct cutomModifiers:ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .fontWeight(.semibold)
    }
}

//  where are use the name "customModifiers" for modifing Text

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "macbook")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Hello, world!")  // read only
                .font(.largeTitle)
                .foregroundColor(.purple)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Text("Welcome SwiftUI!")  // read only
                .font(.largeTitle)
                .foregroundColor(.red)
                .fontWeight(.semibold)
            
            Text("Hello Xcode!")  // read only
                .font(.largeTitle)
                .foregroundColor(.gray)
                .fontWeight(.heavy)
            
            Text(" I'm iOS developer ")  // read only
                .modifier(cutomModifiers())
            
            Text("Develop on MacBook Pro")  // read only
                .modifier(cutomModifiers())
            
            Text("Thank you everyone !")  // read only
                .modifier(cutomModifiers())
            
            Button("Click") {
                print("User clicked on button")
            }
            .foregroundColor(.green)
            .font(.largeTitle)
            
        }
        .padding()
    }
}

// real coding end

// Many Preview action

#Preview {
   ContentView()
}

struct ContentView_Provider : PreviewProvider{
    static var previews: some View{
        ContentView()
            .previewDevice("iPhone 12 Pro")
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
        ContentView()
            .previewDevice("iPhone 15 Pro Max")
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

// preview means only see the features in xcode rightside preview section //

// real coding means simulator run coding section
