package com.openapidemo.demo.controllers

import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class BrokenController {

    @GetMapping("/foo/{unused}/bar")
    fun thisShouldWork() : ResponseEntity<String> {
        return ResponseEntity("Hello, World", HttpStatus.OK)
    }

}
