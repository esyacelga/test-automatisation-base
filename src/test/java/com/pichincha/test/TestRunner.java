/*
package com.pichincha.test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class TestRunner {

    @Test
    void testParallel() {
        System.setProperty("javax.net.ssl.trustStore", "NONE");
        System.setProperty("karate.ssl", "true");
        
        Results results = Runner.path("classpath:com/pichincha/features/ReqResTest.feature")
                .parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
*/
