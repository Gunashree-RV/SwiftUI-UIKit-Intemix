//
//  ItemView.swift
//  SwiftUI UIKit Intemix
//
//  Created by gur on 13/12/24.
//

import SwiftUI

struct ItemView: View {
    var chapter: Chapter
    var action: () -> Void

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(chapter.name)
                    .font(.headline)
                Text(chapter.summary)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }

            Spacer()
            
            Button(action: action) {
                Text("Add")
                    .padding(EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12))
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .buttonStyle(PlainButtonStyle()) // Ensure the button doesn't interfere with the tap gesture
        }
        .padding()
    }
}
