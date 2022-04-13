//
//  ScannerViewModel.swift
//  HelloQRCodes
//
//  Created by Itou Shingo on 2022/04/12.
//

import Foundation

class ScannerViewModel: ObservableObject {
    // 画面更新頻度(インターバル)
    let scanInterval: Double = 1.0
    @Published var torchIsOn: Bool = false
//    @Published var torchIsOn: Bool = false
    @Published var lastQrCode: String = "QRコード"
    
    func onFoundQrcode(_ code: String) {
        self.lastQrCode = code
        torchIsOn = false
    }
}
