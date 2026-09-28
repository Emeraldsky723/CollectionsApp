//
//  ContentView.swift
//  CollectionsApp
//
//  Created by SCOTT LOZOYA on 9/16/26.
//

import SwiftUI

struct ContentView: View {
    //1
    @State var blah: [Int] = []
    //8 and 9
    @State var dictioblah = ["clc":"Crystal Lake Central", "cg":"Cary Grove", "mhs": "Mchenry"]
    //18 and 19
    //im not too sure why it lets me do @State var if its immutable but eh.
    @State var tuppy2: (name : String, age : Int, gpa: Double) = ("",-1,0.0)
    @State var tuppy = ("Billy", 15, 4.23)
    var body: some View {
        VStack {
            Button("Push Me!"){
                //2
                blah.append(5)
                blah.append(2)
                //3
                print(blah[0])
                print(blah[1])
                //4
                blah.insert(3, at: 1)
                //5
                for i in 0..<blah.count {
                    print(blah[i])
                }
                //6
                blah.sort()
                for i in 0..<blah.count {
                    print(blah[i])
                }
                //7
                for i in 0..<blah.count{
                    blah[i] += 10
                }
                for i in 0..<blah.count {
                    print(blah[i])
                }
                //10
                if let thing = dictioblah["clc"]{
                    print(thing)
                }
                //11
                dictioblah.updateValue("Habor Oaks", forKey: "hohs")
                //12
                for (keys, value) in dictioblah{
                    print("key " + keys + " value " + value)
                }
                //13
                for (keys, _) in dictioblah{
                    print(keys)
                }
                //14
                for (_, value) in dictioblah{
                    print(value)
                }
                //15
                var bleh:[String] = []
                bleh.append(contentsOf: dictioblah.keys)
                bleh.sort()
                for key in bleh{
                    if let tempy = dictioblah[key]{
                        print(key + " " + tempy)
                    }
                }
                //16
                var idk = Int.random(in: 5...7)
                //17
                switch idk{
                case 5:
                print("order 5, don't worry it's not alive")
                case 6:
                print("order 6, eat it with a twix")
                case 7:
                print("order 7, come get it before I send you to heaven")
                default:
                    print("nerd")
                    
                }
                //20
                print("name: " + tuppy2.name + " age: \(tuppy.1) " + "gpa: \(tuppy.2)")
               
                
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
