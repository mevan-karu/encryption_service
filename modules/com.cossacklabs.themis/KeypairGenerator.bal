import ballerina/jballerina.java;
import envryption_service.java.lang as javalang;

# Ballerina class mapping for the Java `com.cossacklabs.themis.KeypairGenerator` class.
@java:Binding {'class: "com.cossacklabs.themis.KeypairGenerator"}
public distinct class KeypairGenerator {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `com.cossacklabs.themis.KeypairGenerator` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `com.cossacklabs.themis.KeypairGenerator` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.cossacklabs.themis.KeypairGenerator` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }
    # The function that maps to the `equals` method of `com.cossacklabs.themis.KeypairGenerator`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return com_cossacklabs_themis_KeypairGenerator_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `com.cossacklabs.themis.KeypairGenerator`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = com_cossacklabs_themis_KeypairGenerator_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `com.cossacklabs.themis.KeypairGenerator`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_cossacklabs_themis_KeypairGenerator_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `com.cossacklabs.themis.KeypairGenerator`.
    public function notify() {
        com_cossacklabs_themis_KeypairGenerator_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.cossacklabs.themis.KeypairGenerator`.
    public function notifyAll() {
        com_cossacklabs_themis_KeypairGenerator_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.KeypairGenerator`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_KeypairGenerator_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.KeypairGenerator`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_KeypairGenerator_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.KeypairGenerator`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_KeypairGenerator_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The function that maps to the `generateKeypair` method of `com.cossacklabs.themis.KeypairGenerator`.
#
# + return - The `Keypair` value returning from the Java mapping.
public function KeypairGenerator_generateKeypair() returns Keypair {
    handle externalObj = com_cossacklabs_themis_KeypairGenerator_generateKeypair();
    Keypair newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `generateKeypair` method of `com.cossacklabs.themis.KeypairGenerator`.
#
# + arg0 - The `int` value required to map with the Java method parameter.
# + return - The `Keypair` value returning from the Java mapping.
public function KeypairGenerator_generateKeypair2(int arg0) returns Keypair {
    handle externalObj = com_cossacklabs_themis_KeypairGenerator_generateKeypair2(arg0);
    Keypair newObj = new (externalObj);
    return newObj;
}

function com_cossacklabs_themis_KeypairGenerator_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.cossacklabs.themis.KeypairGenerator",
    paramTypes: ["java.lang.Object"]
} external;

function com_cossacklabs_themis_KeypairGenerator_generateKeypair() returns handle = @java:Method {
    name: "generateKeypair",
    'class: "com.cossacklabs.themis.KeypairGenerator",
    paramTypes: []
} external;

function com_cossacklabs_themis_KeypairGenerator_generateKeypair2(int arg0) returns handle = @java:Method {
    name: "generateKeypair",
    'class: "com.cossacklabs.themis.KeypairGenerator",
    paramTypes: ["int"]
} external;

function com_cossacklabs_themis_KeypairGenerator_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.cossacklabs.themis.KeypairGenerator",
    paramTypes: []
} external;

function com_cossacklabs_themis_KeypairGenerator_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.cossacklabs.themis.KeypairGenerator",
    paramTypes: []
} external;

function com_cossacklabs_themis_KeypairGenerator_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.cossacklabs.themis.KeypairGenerator",
    paramTypes: []
} external;

function com_cossacklabs_themis_KeypairGenerator_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.cossacklabs.themis.KeypairGenerator",
    paramTypes: []
} external;

function com_cossacklabs_themis_KeypairGenerator_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.KeypairGenerator",
    paramTypes: []
} external;

function com_cossacklabs_themis_KeypairGenerator_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.KeypairGenerator",
    paramTypes: ["long"]
} external;

function com_cossacklabs_themis_KeypairGenerator_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.KeypairGenerator",
    paramTypes: ["long", "int"]
} external;

