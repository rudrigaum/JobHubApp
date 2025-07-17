//
//  MainCoordinator.swift
//  JobHubApp
//
//  Created by Rodrigo Cerqueira Reis on 16/07/25.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    var children: [Coordinator] = []

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewModel = JobSearchViewModel()
        let viewController = JobSearchViewController(viewModel: viewModel)
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: false)
    }

    func showJobDetail(job: Job) {
        if UIApplication.shared.canOpenURL(job.redirect_url) {
            UIApplication.shared.open(job.redirect_url, options: [:], completionHandler: nil)
        }
    }
}

