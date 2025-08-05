import Foundation
import Capacitor
import AVFoundation;

@objc(audiooutputPlugin)
public class audiooutputPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "audiooutputPlugin"
    public let jsName = "audiooutput"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "switchToSpeaker", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "switchToEarpiece", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = audiooutput()

    @objc func switchToSpeaker(_ call: CAPPluginCall) {
        do {
            let session = AVAudioSession.sharedInstance()
            try session.setCategory(.playAndRecord, mode: .voiceChat, options: .defaultToSpeaker)
            try session.overrideOutputAudioPort(.speaker)
            try session.setActive(true)
            call.resolve()
        } catch {
            call.reject("Error activating speaker: \(error)")
        }
    }

    @objc func switchToEarpiece(_ call: CAPPluginCall) {
        do {
            let session = AVAudioSession.sharedInstance()
            try session.setCategory(.playAndRecord, mode: .voiceChat)
            try session.overrideOutputAudioPort(.none)
            try session.setActive(true)
            call.resolve()
        } catch {
            call.reject("Error activating earpiece: \(error)")
        }
    }
}
