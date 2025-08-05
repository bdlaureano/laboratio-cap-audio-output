package com.laboratio.plugins.capaudiooutput;

import com.getcapacitor.Logger;

public class audiooutput {

    public String echo(String value) {
        Logger.info("Echo", value);
        return value;
    }
}
