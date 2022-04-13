//
//  ContentView.swift
//  HelloQRCodes
//
//  Created by Itou Shingo on 2022/04/12.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ScannerViewModel()
    
    var body: some View {
        VStack{
            Text("QRコードリーダー")
                .padding()
            
            // 読み取ったQRコード表示位置
            Text("URL = [ " + viewModel.lastQrCode + " ]")
            
            Button(action: {
                viewModel.torchIsOn = true
            }){
                Text("カメラ起動")
                Image(systemName: "camera")
            }
            .fullScreenCover(isPresented: $viewModel.torchIsOn) {
                SecondView(viewModel: viewModel)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
