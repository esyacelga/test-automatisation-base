package com.pichincha;

import com.intuit.karate.junit5.Karate;

class KarateBasicTest {
    static {
        System.setProperty("karate.ssl", "true");
    }

   @Karate.Test
    Karate obtenerPersonajes() {
        return Karate.run("classpath:com/pichincha/features/obtenerPersonajes.feature");
    }


    @Karate.Test
    Karate obtenerPersonajePorId() {
        return Karate.run("classpath:com/pichincha/features/obtenerPersonajePorId.feature");
    }

    @Karate.Test
    Karate put() {
        return Karate.run("classpath:com/pichincha/features/put.feature");
    }

    @Karate.Test
    Karate delete() {
        return Karate.run("classpath:com/pichincha/features/delete.feature");
    }


    @Karate.Test
    Karate post() {
        return Karate.run("classpath:com/pichincha/features/post.feature");
    }
}
