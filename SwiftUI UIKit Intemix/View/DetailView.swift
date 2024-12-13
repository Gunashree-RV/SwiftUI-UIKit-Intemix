//
//  DetailView.swift
//  SwiftUI UIKit Intemix
//
//  Created by gur on 13/12/24.
//

import SwiftUI

struct DetailView: View {
    var title: String
    var subtitle: String

    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .padding()
            Text(subtitle)
                .font(.title)
                .foregroundColor(.secondary)
                .padding()
            Spacer()
        }
        .navigationTitle("Detail View")
    }
}
