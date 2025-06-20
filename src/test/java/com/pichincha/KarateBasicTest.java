package com.pichincha;

import com.intuit.karate.junit5.Karate;

class KarateBasicTest {
    static {
        System.setProperty("karate.ssl", "true");
    }

   @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:com/pichincha/features/obtenerPersonajes.feature");
    }

}
