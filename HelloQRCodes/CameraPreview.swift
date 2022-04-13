//
//  CameraPreview.swift
//  HelloQRCodes
//
//  Created by Itou Shingo on 2022/04/13.
//

import AVFoundation
import UIKit

class CameraPreview: UIView {
    
    private var label: UILabel?
    
    var previewLayer: AVCaptureVideoPreviewLayer?
    var session = AVCaptureSession()
    weak var delegate: QrCodeCameraDelegate?
    
    init(session: AVCaptureSession) {
        super.init(frame: .zero)
        self.session = session
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder)")
    }
    
    @objc func onClick() {
        delegate?.onSimulateScanning()
    }
    
    // override func layoutSubviews() {
    override func layoutSubviews() {
        super.layoutSubviews()
        previewLayer?.frame = self.bounds
    }
}
