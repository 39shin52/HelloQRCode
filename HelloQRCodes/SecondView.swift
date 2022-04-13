//
//  SecondView.swift
//  HelloQRCodes
//
//  Created by Itou Shingo on 2022/04/13.
//

import SwiftUI

struct SecondView: View {
    @ObservedObject var viewModel = ScannerViewModel()
    
    var body: some View {
        Text("Second View")
        
        ZStack {
            // QRコード読み取りView
            QrCodeScannerView()
                .found(r: self.viewModel.onFoundQrcode)
                .interval(delay: self.viewModel.scanInterval)
            
            VStack {
                VStack {
                    Text("Keep scanning Qr-codes")
                        .font(.subheadline)
                    
                    Text("QR読みとり結果 = [ " + self.viewModel.lastQrCode + " ]")
                        .bold()
                        .lineLimit(5)
                        .padding()
                    
                    Button("Close") {
                        self.viewModel.torchIsOn = false
                    }
                }
                .padding(.vertical, 20)
                Spacer()
            }.padding()
        }
    }
}
