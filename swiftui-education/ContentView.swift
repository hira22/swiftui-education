//
//  ContentView.swift
//  swiftui-education
//
//  Created by 平岡真之 on 2019/09/03.
//  Copyright © 2019 hiraoka. All rights reserved.
//

import SwiftUI

struct ContentView: View {

// 100までListで表示
//    let data: [Int] = (0..<100).map{$0}
//
//    // returnされるものはViewだけ
//    var body: some View {
//        // id はユニークさを担保する
//        List(data, id: \.self) { item in
//            Text("\(item)")
//        }
//    }
    
    
// 2.ButtonでBackGroudを変更する
//    @State var backgroudColor = Color.white
//    var body: some View {
//            VStack {
//
//                // Stateを変更する
//                // Stateを変更したときだけUIが変更される
//                Button("Button",  action: {
//                    self.backgroudColor = Color.black
//                })
//            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//                .background(self.backgroudColor)
//    }

// 3. VStack, HStack でレイアウトする
//    var body: some View {
//
//        VStack {
//            HStack {
//                Spacer()
//                Text("a")
//                Spacer()
//                Text("a")
//                Spacer()
//            }.background(Color.red)
//
//            VStack{
//                Spacer()
//                Text("a")
//                Spacer()
//            }.background(Color.green)
//
//            HStack {
//                Text("a")
//                Spacer()
//                Text("a")
//            }.background(Color.blue)
//        }.frame(height: UIScreen.main.bounds.height)
//
//    }
    
// 4.Lineのトーク画面的なものを組む
    // TODO: セルを作る
    // Hint: Imageは画像ないのでShapeで
    // TODO: Listで表示する
    
    let data: [Int] = (0..<100).map{$0}
    var body: some View {
        
        List(data, id: \.self) { i in
            LineLikeCell(id: i)
        }
    }
    
}

struct LineLikeCell: View, Identifiable {
    var id: Int
    
    var body: some View {
        HStack{
            Circle()
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(Color.gray)
            VStack {
                HStack {
                    Text("name")
                    Spacer()
                    Text("2019/09/03 23:00")
                }
                
                HStack {
                    Text("hogehogehogehogehogehogehogehoge")
                    Spacer()
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
