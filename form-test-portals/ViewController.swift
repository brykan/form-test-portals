//
//  ViewController.swift
//  form-test-portals
//
//  Created by Bryan Evans on 4/27/23.
//

import UIKit
import Combine
import IonicPortals

class ViewController: UIViewController {
    var inputCancellable: AnyCancellable?
    override func loadView() {
        self.view = PortalUIView(portal: .myApp1)
        
        inputCancellable = PortalsPubSub.publisher(for: "dismiss")
            .data(as: String.self)
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { result in
                print(result)
            })
                    
        }
}

