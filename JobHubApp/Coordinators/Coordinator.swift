//
//  Coordinator.swift
//  JobHubApp
//
//  Created by Rodrigo Cerqueira Reis on 16/07/25.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    var children: [Coordinator] { get set }

    func start()
}
