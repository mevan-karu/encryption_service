import ballerina/jballerina.java;
import envryption_service.java.lang as javalang;

# Ballerina class mapping for the Java `com.cossacklabs.themis.Keypair` class.
@java:Binding {'class: "com.cossacklabs.themis.Keypair"}
public distinct class Keypair {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `com.cossacklabs.themis.Keypair` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `com.cossacklabs.themis.Keypair` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.cossacklabs.themis.Keypair` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }
    # The function that maps to the `equals` method of `com.cossacklabs.themis.Keypair`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return com_cossacklabs_themis_Keypair_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `com.cossacklabs.themis.Keypair`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = com_cossacklabs_themis_Keypair_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getPrivateKey` method of `com.cossacklabs.themis.Keypair`.
    #
    # + return - The `PrivateKey` value returning from the Java mapping.
    public function getPrivateKey() returns PrivateKey {
        handle externalObj = com_cossacklabs_themis_Keypair_getPrivateKey(self.jObj);
        PrivateKey newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getPublicKey` method of `com.cossacklabs.themis.Keypair`.
    #
    # + return - The `PublicKey` value returning from the Java mapping.
    public function getPublicKey() returns PublicKey {
        handle externalObj = com_cossacklabs_themis_Keypair_getPublicKey(self.jObj);
        PublicKey newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `com.cossacklabs.themis.Keypair`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_cossacklabs_themis_Keypair_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `com.cossacklabs.themis.Keypair`.
    public function notify() {
        com_cossacklabs_themis_Keypair_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.cossacklabs.themis.Keypair`.
    public function notifyAll() {
        com_cossacklabs_themis_Keypair_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.Keypair`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_Keypair_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.Keypair`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_Keypair_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.Keypair`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_Keypair_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `com.cossacklabs.themis.Keypair`.
#
# + arg0 - The `PrivateKey` value required to map with the Java constructor parameter.
# + arg1 - The `PublicKey` value required to map with the Java constructor parameter.
# + return - The new `Keypair` class generated.
public function newKeypair1(PrivateKey arg0, PublicKey arg1) returns Keypair {
    handle externalObj = com_cossacklabs_themis_Keypair_newKeypair1(arg0.jObj, arg1.jObj);
    Keypair newObj = new (externalObj);
    return newObj;
}

function com_cossacklabs_themis_Keypair_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.cossacklabs.themis.Keypair",
    paramTypes: ["java.lang.Object"]
} external;

function com_cossacklabs_themis_Keypair_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.cossacklabs.themis.Keypair",
    paramTypes: []
} external;

function com_cossacklabs_themis_Keypair_getPrivateKey(handle receiver) returns handle = @java:Method {
    name: "getPrivateKey",
    'class: "com.cossacklabs.themis.Keypair",
    paramTypes: []
} external;

function com_cossacklabs_themis_Keypair_getPublicKey(handle receiver) returns handle = @java:Method {
    name: "getPublicKey",
    'class: "com.cossacklabs.themis.Keypair",
    paramTypes: []
} external;

function com_cossacklabs_themis_Keypair_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.cossacklabs.themis.Keypair",
    paramTypes: []
} external;

function com_cossacklabs_themis_Keypair_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.cossacklabs.themis.Keypair",
    paramTypes: []
} external;

function com_cossacklabs_themis_Keypair_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.cossacklabs.themis.Keypair",
    paramTypes: []
} external;

function com_cossacklabs_themis_Keypair_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.Keypair",
    paramTypes: []
} external;

function com_cossacklabs_themis_Keypair_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.Keypair",
    paramTypes: ["long"]
} external;

function com_cossacklabs_themis_Keypair_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.Keypair",
    paramTypes: ["long", "int"]
} external;

function com_cossacklabs_themis_Keypair_newKeypair1(handle arg0, handle arg1) returns handle = @java:Constructor {
    'class: "com.cossacklabs.themis.Keypair",
    paramTypes: ["com.cossacklabs.themis.PrivateKey", "com.cossacklabs.themis.PublicKey"]
} external;

