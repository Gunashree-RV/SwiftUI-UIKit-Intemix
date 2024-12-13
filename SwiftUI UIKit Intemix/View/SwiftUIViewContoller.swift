//
//  SwiftUIViewContoller.swift
//  SwiftUI UIKit Intemix
//
//  Created by gur on 13/12/24.
//


import UIKit
import SwiftUI

class SwiftUIViewContoller: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a UIHostingController with your SwiftUI view
        let swiftUIView = ChapterListView()
        let hostingController = UIHostingController(rootView: swiftUIView)
        
        // Add the hosting controller as a child view controller
        addChild(hostingController)
        view.addSubview(hostingController.view)
        
        // Set constraints or frame for the hosting controller's view
        hostingController.view.frame = view.bounds
        hostingController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Notify the hosting controller that it has been moved to a parent view controller
        hostingController.didMove(toParent: self)
    }
}
