package com.example;
public class HelloDevOpsTest {
public static void main(String[] args) {
System.out.println("Testing HelloDevOps class...");
String message = HelloDevOps.getMessage();
System.out.println("Message: " + message);
if (message.equals("Hello from DevOps Training")) {
System.out.println("í°€ Test passed!");
System.exit(0);
} else {
System.out.println("í°€ Test failed!");
System.exit(1);
}
}
}
