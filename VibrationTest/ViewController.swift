//
//  ViewController.swift
//  VibrationTest
//
//  Created by Andreas Garcia on 2023-01-29.
//

import UIKit
import CoreHaptics
import AVKit
import AVFoundation

var engine: CHHapticEngine?

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            engine = try CHHapticEngine()
            try engine?.start()
        } catch {
            print("There was an error creating the engine")
        }

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        
        guard let filePath = Bundle.main.path(forResource: "musicnotes", ofType: "mov") else { return}
        let player = AVPlayer(url: URL(fileURLWithPath: filePath))
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        player.play()
        
        var events = [CHHapticEvent]()
        
        for i in stride(from: 1.7, to: 2.2, by: 1/246.94) { // 246.94 Hz - B3
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((2.2-i)/0.5))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: Float(0.7*(2.2-i)/0.5))
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 2.2, to: 2.55, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((2.55-i)/0.35))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 2.7, to: 3.05, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((3.05-i)/0.35))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 3.2, to: 3.5, by: 1/587.33) { // 587 Hz - D5
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 0.8)
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0.6)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 3.7, to: 3.92, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((3.92-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 3.92, to: 4.14, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((4.14-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 4.18, to: 4.40, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((4.40-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 4.45, to: 4.67, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((4.67-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 4.7, to: 4.92, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((4.92-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 5.2, to: 5.7, by: 1/587.33) { // 587 Hz - D5
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 0.9)
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0.7)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
    
        for i in stride(from: 5.7, to: 5.92, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((5.92-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 5.95, to: 6.17, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((6.17-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 6.2, to: 6.42, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((6.42-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 6.7, to: 6.92, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((6.92-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 7.20, to: 7.68, by: 1/246.94) { // 246.94 Hz - B3
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((7.68-i)/0.5))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: Float(0.7*(7.68-i)/0.5))
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 7.68, to: 7.90, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((7.90-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 7.95, to: 8.17, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((8.17-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 8.20, to: 8.42, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((8.42-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 8.45, to: 8.67, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((8.67-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 8.68, to: 8.90, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((8.90-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 9.20, to: 9.70, by: 1/587.33) { // 587 Hz - D5
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 0.9)
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0.7)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 9.72, to: 9.94, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((9.94-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 10.20, to: 10.42, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((10.42-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 10.70, to: 10.92, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((10.92-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 11.18, to: 11.48, by: 1/587.33) { // 587 Hz - D5
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 0.8)
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0.6)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 11.68, to: 11.90, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((11.90-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 11.92, to: 12.14, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((12.14-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 12.16, to: 12.38, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((12.38-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 12.45, to: 12.67, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((12.67-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 12.7, to: 12.92, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((12.92-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 13.20, to: 13.60, by: 1/587.33) { // 587 Hz - D5
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 0.9)
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0.7)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
    
        for i in stride(from: 13.70, to: 13.92, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((13.92-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 13.95, to: 14.17, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((14.17-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 14.20, to: 14.42, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((14.42-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 14.7, to: 14.92, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((14.92-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 15.2, to: 15.5, by: 1/587.33) { // 587 Hz - D5
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 0.8)
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0.6)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 15.7, to: 15.92, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((15.92-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 15.92, to: 16.14, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((16.14-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 16.18, to: 16.40, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((16.40-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 16.45, to: 16.67, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((16.67-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 16.7, to: 16.92, by: 1/90) { // 90 Hz - Normal kick
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float((16.92-i)/0.22))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 0)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 17.36, to: 20.15, by: 1/587.33) { // 587 Hz - D5
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float(0.7*(20.15-i)/2.79))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: Float(0.6*(20.15-i)/2.79))
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        
        
        do {
            let pattern = try CHHapticPattern(events: events, parameters: [])
            let player = try engine?.makePlayer(with: pattern)
            try player?.start(atTime: 0)
        } catch {
            print("Failed to play pattern")
        }
        
    }


}

