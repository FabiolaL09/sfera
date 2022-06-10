//
//  Extensions.swift
//  Sfera
//
//  Created by Fabiola Llanes on 09/06/22.
//

import Foundation
import SwiftUI

extension View {
    func hiddenNavigationBarStyle() -> some View {
        modifier( HiddenNavigationBar() )
    }
}
