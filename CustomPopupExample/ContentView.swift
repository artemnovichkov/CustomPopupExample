//
//  Created by Artem Novichkov on 20.05.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresented = false
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            Button("Show Popup") {
                isPresented = true
            }
        }
        .popup(isPresented: $isPresented) {
            BottomPopupView {
                NamePopupView(isPresented: $isPresented)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView(isPresented: true)
        }
    }
}
