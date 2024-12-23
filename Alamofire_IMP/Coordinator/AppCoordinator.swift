//
//  AppCoordinator.swift
//  Alamofire_IMP
//
//  Created by MacBook Two on 23/12/2024.
//

import Foundation
import XCoordinator

enum AppRoute : Route {
    case main(StrongRouter<TabRoutes>?)
}
class AppCoordinator : NavigationCoordinator<AppRoute> {
    init(){
        super.init(initialRoute: .main(nil))
    }
    override func prepareTransition(for route: AppRoute) -> NavigationTransition {
          switch route {
          case .main:
              let tabBarCoordinator = ButtomBarCoordinator()
              return .set([tabBarCoordinator])
          }
      }
}
