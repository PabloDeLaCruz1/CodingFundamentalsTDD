//
//  Advanced.swift
//  CodingFundamentals
//
//  Created by Pablo De La Cruz on 7/8/22.
//

import Foundation
import SwiftUI

// #1 API errors: No response, no data. Handle the errors.
//See 'getData' func below

// #2 API errors: Response with partial data, like firstName, but no lastName. Handle the errors.
//See 'getData' func below

// #3 While saving data to CoreData, implement data security in core data and SQLite
//For apps built for iOS 5.0 or later, persistent stores now store data by default in an encrypted format on disk. The default protection level prevents access to the data until after the user unlocks the device for the first time. You can change the protection level by assigning a custom value to the NSPersistentStoreFileProtectionKey key when configuring your persistent stores. For additional information about the data protection that are new in iOS 5.0, see “Data Protection Improvements.” You Can also use third party libraries to encrypt the data.

// #4 When pressing a back button or a next button, if the view doesn't load, how would you handle that situation?
// See

// #5 Implement a UI that can handle multiple screen sizes
//Using dynamicTypeSize in ios 15+
//Using SwiftUI adaptive layout
//Using UIKit AutoLayout
//More at https://developer.apple.com/design/human-interface-guidelines/foundations/layout/

// #6 Make safe internet calls (like to an API)
//Same as #1

// #7 Encrypt the data before storing locally or remotely.
//Same as #3

// #8 Consume a local JSON object for proper use within a project. How would you handle potential errors? Handle errors.
//See below for #1 and #2 on how we created a Response struct and MyResult struct to map a response from a URLSessionDataTask onto a json object.
//We use a guard let to check for errors, if no errors, we can consume the data as we wish.

// #9 View state management: Given an app with two tabs. One to play music, another to read books. On the music tab, play a song, then go to the books tab, then go back to the music tab. The song should continue playing instead of the view refreshing.
//For SwiftUI, views are values, so can save and continue using them as such.
//For UIKIT, From https://stackoverflow.com/questions/38800204/how-to-resume-audio-after-interruption-in-swift
//do {
//    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, withOptions: AVAudioSessionCategoryOptions.MixWithOthers)
//} catch {
//}


private func getData(from url: String) {
    //#1  Using a guard let within the completion handler of the data task, error can be handled here,
    URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            guard let data = data, error == nil else {
                print("Error is handled here")
                return
            }
            //If data is succesful, you can handle the response here.
            var result: Response?
            do {
                //Here we are trying to map the response to our Response struct, which is a codable.
                result = try JSONDecoder().decode(Response.self, from: data)
            } catch {
                print("errors trying to decode")
            }
            //#2 and #8 If no errors, we have our data
            guard let json = result else {
                return
            }
            //#2 At this point, if there is missing data points, you can provide default values, request again, or handle in other ways.
            print(json.status)
            print(json.results.lastName)
            print(json.results.firstName)

        }).resume() //resume is what actually sends the request.
}

struct Response: Codable {
    let results: MyResult
    let status: String
}

struct MyResult: Codable {
    let firstName: String
    let lastName: String
    let age: Int
    let year: Int
}

struct DetailView: View {
    var body: some View {
        Text("Detail view")
    }
}
//#4 for SwiftUI you have a few options:
//-if you want to present on top of current view(ex: presentation style in UIKit)
struct ContentView: View {
    @State var showingDetail = false

    var body: some View {
        Button(action: {
            self.showingDetail.toggle()
        }) {
            Text("Show Detail")
        }.sheet(isPresented: $showingDetail) {
            DetailView()
        }
    }
}
//-push new view (ex: list->detail, navigation controller of UIKit)
struct ContentView1: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Show Detail View")
                }.navigationBarTitle("Navigation")
            }
        }
    }
}
//-update the current view based on @state property, (ex:show error message on login failure)
struct ContentView2: View {
    @State var error = true
    var body: some View {
        //    ...
        // login email
        // login password
        if error {
            Text("Failed to login")
        }
    }
}
