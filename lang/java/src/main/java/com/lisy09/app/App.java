package com.lisy09.app;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
* Simple class App.
*/
public class App {
    private static Logger log = LogManager.getLogger(App.class);

    public static void main(String[] args) {
        log.info("Hello Remote World!");
    }
}
