//
//  ChapterListView.swift
//  SwiftUI UIKit Intemix
//
//  Created by gur on 13/12/24.
//

import SwiftUI

struct ChapterListView: View {
    @State private var items: [Chapter] = [
        Chapter(id: 1, name: "Item 1", summary: "Summary 1"),
        Chapter(id: 2, name: "Item 2", summary: "Summary 2"),
        Chapter(id: 3, name: "Item 3", summary: "Summary 3"),
        Chapter(id: 4, name: "Item 4", summary: "Summary 4")
    ]
    
    @State private var navigateToDetail: Chapter?

    var body: some View {
        NavigationView {
            List {
                ForEach(items, id: \.id) { item in
                    HStack {
                        ItemView(
                            chapter: item,
                            action: { addItem(title: item.name) }
                        )

                        NavigationLink(destination: DetailView(title: item.name, subtitle: item.summary)) {
                            EmptyView()
                        }
                        .frame(width: 0)
                        .opacity(0)
                    }
                }
            }
        }
        
    }

    private func addItem(title: String) {
        print("\(title) added!")
    }
}

#Preview {
    ChapterListView()
}
