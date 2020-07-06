//
//  PostsView.swift
//  reddit
//
//  Created by Michael Powers on 7/3/20.
//  Copyright © 2020 Michael Powers. All rights reserved.
//

import SwiftUI

struct PostsView: View {
    var body: some View {
          ScrollView {
                        ForEach(0 ..< 12) { item in
                              Post()
                          }
                      }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}

