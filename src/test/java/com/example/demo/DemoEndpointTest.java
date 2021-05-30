package com.example.demo;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest(classes = DemoEndpoint.class)
public class DemoEndpointTest {

    @Autowired DemoEndpoint endpoint;

    @Test
    public void test(){
        assert(endpoint.sayHello()).equals("Hi there everybody!");
    }
}
