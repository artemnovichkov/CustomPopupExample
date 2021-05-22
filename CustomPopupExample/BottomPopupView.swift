//
//  Created by Artem Novichkov on 20.05.2021.
//

import SwiftUI

struct BottomPopupView<Content: View>: View {
    
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                content()
                    .padding(.bottom, geometry.safeAreaInsets.bottom)
                    .background(Color.white)
                    .cornerRadius(radius: 16, corners: [.topLeft, .topRight])
            }
            .edgesIgnoringSafeArea([.top, .bottom])
        }
        .animation(.easeOut)
        .transition(.move(edge: .bottom))
    }
}
