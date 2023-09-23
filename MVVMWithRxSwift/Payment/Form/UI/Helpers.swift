//
//  Helpers.swift
//  MVVMWithRxSwift
//
//  Created by Thibaud Oudin on 24/09/2023.
//  Copyright © 2023 Essential Developer Ltd. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import UIKit

extension UITextField {
    var rx_resignFirstResponder: ControlEvent<Void> {
        let source = self.rx.controlEvent([.editingDidEndOnExit, .editingDidEnd])
        return ControlEvent(events: source)
    }
}
