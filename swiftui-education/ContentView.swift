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
    
    let lineLikeData:[LineLikeData] = (0..<100).map{ i in LineLikeData(id: i)
    }
    var body: some View {
        
        // TODO: [Int]でやってたときの\.selfって何だろう？
        // \. がdataを指している？
        List(lineLikeData, id: \.id) { data in
            LineLikeCell(lineLikeData: data)
        }
    }
    
}

struct LineLikeCell: View {
    var lineLikeData: LineLikeData
    var body: some View {
        HStack{
            Circle()
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(Color.gray)
            VStack {
                HStack {
                    Text(lineLikeData.name)
                    Spacer()
                    Text(lineLikeData.dateString)
                }
                
                HStack {
                    Text(lineLikeData.message)
                    Spacer()
                }
            }
            
        }
    }
}

struct LineLikeData: Identifiable {
    var id: Int
    let icon: Color = Color.gray
    let name: String = "name"
    private let date: Date = Date()
    let message: String = "message"
    
    var formatter = DateFormatter()
    
    
    var dateString: String {
        formatter.locale = Locale(identifier: "ja_JP")
        formatter.dateStyle = DateFormatter.Style.short
        formatter.timeStyle = DateFormatter.Style.short
        return formatter.string(from: date)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
