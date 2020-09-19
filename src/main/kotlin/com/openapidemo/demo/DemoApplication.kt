package com.openapidemo.demo

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.context.annotation.ComponentScan

@SpringBootApplication
@ComponentScan("com.openapidemo.demo.controllers")
class DemoApplication

fun main(args: Array<String>) {
    runApplication<DemoApplication>(*args)
}
