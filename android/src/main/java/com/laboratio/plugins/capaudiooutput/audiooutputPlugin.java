package com.laboratio.plugins.capaudiooutput;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

import android.media.AudioManager;

@CapacitorPlugin(name = "audiooutput")
public class audiooutputPlugin extends Plugin {

    private audiooutput implementation = new audiooutput();

    @PluginMethod
    public void switchToSpeaker(PluginCall call) {
        AudioManager audioManager = (AudioManager) getContext().getSystemService(Context.AUDIO_SERVICE);
        audioManager.setMode(AudioManager.MODE_IN_COMMUNICATION);
        audioManager.setSpeakerPhoneOn(true);
        call.resolve();
    }

    @PluginMethod
    public void switchToEarpiece(PluginCall call) {
        AudioManager audioManager = (AudioManager) getContext().getSystemService(Context.AUDIO_SERVICE);
        audioManager.setMode(AudioManager.MODE_IN_COMMUNICATION);
        audioManager.setSpeakerPhoneOn(false);
        call.resolve();
    }
}
