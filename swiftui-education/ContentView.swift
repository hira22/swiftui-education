//
//  ContentView.swift
//  swiftui-education
//
//  Created by 平岡真之 on 2019/09/03.
//  Copyright © 2019 hiraoka. All rights reserved.
//

import SwiftUI

// MARK: 1.100までListで表示
//struct ContentView: View {
//    let data: [Int] = (0..<100).map{$0}
//
//    // returnされるものはViewだけ
//    var body: some View {
//        // id はユニークさを担保する
//        List(data, id: \.self) { item in
//            Text("\(item)")
//        }
//    }
//}
    
    
// MARK: 2.ButtonでBackGroudを変更する
//struct ContentView: View {
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
//}

// MARK: 3. VStack, HStack でレイアウトする
//struct ContentView: View {
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
//}
    
// MARK: 4.Lineのトークリスト画面的なものを組む
    // TODO: セルを作る
    // Hint: Imageは画像ないのでShapeで
    // TODO: Listで表示する
//struct ContentView: View {
//    let lineLikeData:[LineLikeData] = (0..<100).map{ i in
//        LineLikeData(id: i)
//    }
//    var body: some View {
//        // TODO: [Int]でやってたときの\.selfって何だろう？
//        // \. が第一引数のDataを指している？
//        // KeyPath<Data.Element, ID>について調べる
//        List(lineLikeData, id: \.id) { data in
//            LineLikeCell(lineLikeData: data)
//        }
//    }
//}
//struct LineLikeCell: View {
//    var lineLikeData: LineLikeData
//    var body: some View {
//        HStack{
//            Circle()
//                .frame(width: 50, height: 50, alignment: .center)
//                .foregroundColor(Color.gray)
//
//            VStack {
//                HStack {
//                    Text(lineLikeData.name)
//                    Spacer()
//                    Text(lineLikeData.dateString)
//                }
//
//                HStack {
//                    Text(lineLikeData.message)
//                    Spacer()
//                }
//            }
//        }
//    }
//}
//
//struct LineLikeData: Identifiable {
//    var id: Int
//    let icon: Color = Color.gray
//    let name: String = "name"
//    private let date: Date = Date()
//    let message: String = "messagemessagemessage"
//
//    var formatter: DateFormatter = DateFormatter()
//
//    var dateString: String {
//        formatter.locale = Locale(identifier: "ja_JP")
//        formatter.dateStyle = DateFormatter.Style.short
//        formatter.timeStyle = DateFormatter.Style.short
//        return formatter.string(from: date)
//    }
//}


// MARK: 5. 指でなぞるとついてくるview
//struct ContentView: View {
//    @State var translation: CGSize = .zero
//    var body: some View {
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .foregroundColor(Color.blue)
//            .background(Color.blue)
//            .offset(self.translation)
//            .animation(.spring())
//            .gesture(
//                DragGesture()
//                    .onChanged({ (value) in
//                        self.translation = value.translation
//                    })
//                    .onEnded({ (value) in
//                        self.translation = .zero
//                    })
//        )
//
//    }
//}

// MARK: 6. 扇型に並べるRectangle
//struct ContentView: View {
//    let size = CGSize(width: 100, height: 150)
//    var body: some View {
//        ZStack() {
//            Rectangle()
//                .frame(width: 50, height: 100)
//                .rotationEffect(Angle(degrees: -30))
//                .offset(x: -100, y: 0)
//            Rectangle()
//                .frame(width: 50, height: 100)
//                .rotationEffect(Angle(degrees: -15))
//                .offset(x: -30, y: -15)
//            Rectangle()
//                .frame(width: 50, height: 100)
//                .rotationEffect(Angle(degrees: 15))
//                .offset(x: 30, y: -15)
//            Rectangle()
//                .frame(width: 50, height: 100)
//                .rotationEffect(Angle(degrees: 30))
//                .offset(x: 100, y: 0)
//        }
//
//    }
//}

// MARK: 7.Lineのトークリスト画面的なものを組む
    // TODO: タップしたらアラート
//struct ContentView: View {
//    let lineLikeData: [LineLikeData] = (0..<100).map{ i in
//        LineLikeData(id: i)
//    }
//    var body: some View {
//        List(lineLikeData, id: \.id) { data in
//            LineLikeCell(lineLikeData: data)
//        }
//    }
//}

//// @Stateが更新されるとbodyが再描画される
//struct LineLikeCell: View {
//    @State var isShown: Bool = false
//
//    var lineLikeData: LineLikeData
//    var body: some View {
//        Button(action: {
//            self.isShown.toggle()
//        }){
//            HStack {
//                Circle()
//                    .frame(width: 50, height: 50, alignment: .center)
//                    .foregroundColor(Color.gray)
//
//                VStack {
//                    HStack {
//                        Text(lineLikeData.name)
//                        Spacer()
//                        Text(lineLikeData.dateString)
//                    }
//
//                    HStack {
//                        Text(lineLikeData.message)
//                        Spacer()
//                    }
//                }
//            }
//        }
//        .sheet(isPresented: $isShown, content: {
//            Rectangle()
////            Alert(title: Text("タップできません"))
//        })
//
//    }
//}
//
//struct LineLikeData: Identifiable {
//    var id: Int
//    let icon: Color = Color.gray
//    let name: String = "name"
//    private let date: Date = Date()
//    let message: String = "messagemessagemessage"
//
//    var formatter: DateFormatter = DateFormatter()
//
//    var dateString: String {
//        formatter.locale = Locale(identifier: "ja_JP")
//        formatter.dateStyle = DateFormatter.Style.short
//        formatter.timeStyle = DateFormatter.Style.short
//        return formatter.string(from: date)
//    }
//}

// MARK: 8.Firebaseと連携
import Firebase
import FirebaseCore
import FirebaseFirestore
import Combine

// hint : observable Objectを使う
// observable Object　に準拠したモデル(Observed Object)をListに渡す
//

let db = Firestore.firestore()

struct ContentView: View {
    @ObservedObject (initialValue: UserDatasource()) var dataSource: UserDatasource

    var body: some View {
        ZStack(alignment: .trailing) {
            List( self.dataSource.users, id: \.id) { user in
                UserRow(user: user)
            }
            VStack {
                Spacer()
                Button("Add",  action: {
                    db.collection("users").addDocument(data: ["name" : randomString(length: 6)]){ error in
                        if let error = error {
                            print("Error adding document: \(error)")
                        }
                    }
                }).padding()
            }
        }
    }
}

struct UserRow: View {
    var user: User
    var body: some View {
        Text("\(user.name)")
    }
}

class UserDatasource: ObservableObject {
    @Published var docments: [QueryDocumentSnapshot] = []
    var users: [User] {
        return self.docments.map({docment in
            return User(id: docment.documentID, data: docment.data())
        })
    }

    init() {
        db.collection("users").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                       print("Error fetching documents: \(error!)")
                       return
                   }
            self.docments = documents
        }
    }
}

struct User: Identifiable {
    var id: String
    var name: String = ""
    init(id: String, data: [String: Any]) {
        self.id = id
        self.name = data["name"] as! String
    }
}

//  MARK: SwiftUICanvas描画用
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK: ランダム文字列作成
func randomString(length: Int) -> String {
  let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  return String((0..<length).map{ _ in letters.randomElement()! })
}
