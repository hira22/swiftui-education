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
//import Firebase
//import FirebaseCore
//import FirebaseFirestore
//import Combine
//
//// hint : observable Objectを使う
//// observable Object　に準拠したモデル(Observed Object)をListに渡す
////
//
//let db = Firestore.firestore()
//
//struct ContentView: View {
//    @ObservedObject (initialValue: UserDatasource()) var dataSource: UserDatasource
//
//    var body: some View {
//        ZStack(alignment: .trailing) {
//            List( self.dataSource.users) { user in
//                UserRow(user: user)
//            }
//            VStack {
//                Spacer()
//                Button("Add",  action: {
//                    db.collection("users").addDocument(data: ["name" : randomString(length: 6)]){ error in
//                        if let error = error {
//                            print("Error adding document: \(error)")
//                        }
//                    }
//                }).padding()
//            }
//        }
//    }
//}
//
//struct UserRow: View {
//    var user: User
//    var body: some View {
//        Text("\(user.name)")
//    }
//}
//
//class UserDatasource: ObservableObject {
//    @Published var docments: [QueryDocumentSnapshot] = []
//    var users: [User] {
//        return self.docments.map({docment in
//            return User(id: docment.documentID, data: docment.data())
//        })
//    }
//
//    init() {
//        db.collection("users").addSnapshotListener { (querySnapshot, error) in
//            guard let documents = querySnapshot?.documents else {
//                       print("Error fetching documents: \(error!)")
//                       return
//                   }
//            self.docments = documents
//        }
//    }
//}
//
//struct User: Identifiable {
//    var id: String
//    var name: String = ""
//    init(id: String, data: [String: Any]) {
//        self.id = id
//        self.name = data["name"] as! String
//    }
//}

// MARK: 9.BindingとPresentaionModeでモーダル表示・非表示
//struct ContentView: View {
//    @State var isContentPresented: Bool = false
//
//    var body: some View {
//        Button("present") {
//            self.isContentPresented = true
//        }.sheet(isPresented: $isContentPresented) {
//            PresentView(isPresented: self.$isContentPresented)
//        }
//    }
//}
//
//struct PresentView: View {
//    @Binding var isPresented: Bool
//    var body: some View {
//        Button("back") {
//            self.isPresented = false
//        }
//    }
//}

//struct ContentView: View {
//    @State var isContentPresented: Bool = false
//
//    var body: some View {
//        Button("present") {
//            self.isContentPresented = true
//        }.sheet(isPresented: $isContentPresented) {
//            PresentView()
//        }
//    }
//}
//
//struct PresentView: View {
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//    var body: some View {
//        Button("back") {
//            self.presentationMode.wrappedValue.dismiss()
//        }
//    }
//}


// MARK: 10. Userの編集画面
//
//struct ContentView: View {
//    @State var isEditViewPresented: Bool = false
//    @State var user: User = User(
//        name: "Masayuki Hiraoka",
//        age: 27,
//        bio: "Tokyo, Japan"
//    )
//    var body: some View {
//        NavigationView {
//            VStack {
//                Text(user.name)
//                Divider()
//                Text(user.ageString)
//                Divider()
//                Text(user.bio)
//                Divider()
//            }
//            .navigationBarTitle("Profile")
//            .navigationBarItems(trailing:
//                Button("Edit") {
//                    self.isEditViewPresented = true
//                }.sheet(isPresented: self.$isEditViewPresented) {
//                    EditView(user: self.$user, defaultUser: self.user)
//                }
//            )
//        }
//
//    }
//}
//
//struct EditView: View {
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//    @Binding var user: User
//    @State var defaultUser: User
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                TextField("name", text: $defaultUser.name)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                TextField("age", value: $defaultUser.age, formatter: NumberFormatter())
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                TextField("bio", text: $defaultUser.bio)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//            }
//            .navigationBarTitle("Edit Profile")
//            .navigationBarItems(trailing:
//                Button("Done") {
//                    self.$user.wrappedValue = self.defaultUser
////                    print(self.presentationMode.wrappedValue)
//                    self.presentationMode.wrappedValue.dismiss()
//            })
//        }
//    }
//}
//
//struct User {
//    var name: String = ""
//    var age: Int = 0
//    var bio: String = ""
//
//    var ageString: String {
//        return "\(age) 歳"
//    }
//}


// MARK: 11. Userの編集画面をFirebaseと連携

import Firebase
import FirebaseCore
import FirebaseFirestore
import Combine

let db = Firestore.firestore()

struct ContentView: View {
    @ObservedObject (initialValue: UserDatasource()) var dataSource: UserDatasource
    
    var body: some View {
        NavigationView {
            List( self.dataSource.users) { user in
                NavigationLink(destination: UserView(user: user)) {
                    HStack {
                        Text("name")
                        Divider()
                        Text(user.name)
                    }
                }
                .navigationBarTitle("Users")
            }
        }
    }
}

struct UserView: View {
    @State var user: User
    @State var isEditViewPresented: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("name")
                    Divider()
                    Text(user.name)
                }
                .frame(height: 50)
                Divider()
                HStack {
                    Text("age")
                    Divider()
                    Text(user.ageString)
                }
                .frame(height: 50)
                Divider()
                HStack {
                    Text("bio")
                    Divider()
                    Text(user.bio)
                    
                }
                .frame(height: 50)
            }
            .navigationBarTitle("Profile")
            .navigationBarItems(trailing:
                Button("Edit") {
                    self.isEditViewPresented = true
                }.sheet(isPresented: self.$isEditViewPresented) {
                    EditView(user: self.$user, defaultUser: self.user)
                }
            )
        }
    }
}

struct EditView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var user: User
    @State var defaultUser: User
    
    var body: some View {
        NavigationView {
            VStack {
                
                TextField("name", text: $defaultUser.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField(
                    "age",
                    value: $defaultUser.age,
                    formatter: NumberFormatter(),  // FIXME: Not Workingらしい
                    onEditingChanged: { value in
                        print(self.$defaultUser.age.wrappedValue)}
                )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("bio", text: $defaultUser.bio)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .navigationBarTitle("Edit Profile")
            .navigationBarItems(trailing:
                Button("Done") {
                    self.$user.wrappedValue = self.defaultUser
                    // Update
                    print(self.user)
                    db.collection("users")
                        .document(self.user.id)
                        .updateData([
                            "name": self.$user.name.wrappedValue,
                            "age": self.$user.age.wrappedValue,
                            "bio": self.$user.bio.wrappedValue,
                            "updateAt": FieldValue.serverTimestamp()
                        ]) { error in
                            if let error: Error = error {
                                print("Error adding document: \(error)")
                            }
                            self.presentationMode.wrappedValue.dismiss()
                    }
            })
        }
    }
}

struct User: Identifiable {
    var id: String
    var name: String = ""
    var age: String = ""
    var bio: String = ""
    
    var ageString: String {
        return "\(age) 歳"
    }
    
    init(id: String, data: [String: Any]) {
        self.id = id
        self.name = data["name"] as! String
        self.age = data["age"] as? String ?? ""
        self.bio = data["bio"] as? String ?? ""
    }
}

class UserDatasource: ObservableObject {
    @Published var docments: [QueryDocumentSnapshot] = []
    var users: [User] {
        return self.docments.map{ docment in
            return User(id: docment.documentID, data: docment.data())
        }
    }
    
    init() {
        db.collection("users")
            .addSnapshotListener { (querySnapshot, error) in
                guard let documents = querySnapshot?.documents else {
                    print("Error fetching documents: \(error!)")
                    return
                }
                self.docments = documents
        }
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
