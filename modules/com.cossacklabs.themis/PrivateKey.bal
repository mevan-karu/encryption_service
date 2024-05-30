import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import envryption_service.java.lang as javalang;

# Ballerina class mapping for the Java `com.cossacklabs.themis.PrivateKey` class.
@java:Binding {'class: "com.cossacklabs.themis.PrivateKey"}
public distinct class PrivateKey {

    *java:JObject;
    *AsymmetricKey;

    # The `handle` field that stores the reference to the `com.cossacklabs.themis.PrivateKey` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `com.cossacklabs.themis.PrivateKey` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.cossacklabs.themis.PrivateKey` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }
    # The function that maps to the `equals` method of `com.cossacklabs.themis.PrivateKey`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return com_cossacklabs_themis_PrivateKey_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `com.cossacklabs.themis.PrivateKey`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = com_cossacklabs_themis_PrivateKey_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `com.cossacklabs.themis.PrivateKey`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_cossacklabs_themis_PrivateKey_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `com.cossacklabs.themis.PrivateKey`.
    public function notify() {
        com_cossacklabs_themis_PrivateKey_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.cossacklabs.themis.PrivateKey`.
    public function notifyAll() {
        com_cossacklabs_themis_PrivateKey_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.PrivateKey`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_PrivateKey_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.PrivateKey`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_PrivateKey_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.PrivateKey`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_PrivateKey_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `com.cossacklabs.themis.PrivateKey`.
#
# + arg0 - The `byte[]` value required to map with the Java constructor parameter.
# + return - The new `PrivateKey` class generated.
public function newPrivateKey1(byte[] arg0) returns PrivateKey|error {
    handle externalObj = com_cossacklabs_themis_PrivateKey_newPrivateKey1(check jarrays:toHandle(arg0, "byte"));
    PrivateKey newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `KEYTYPE_EC`.
#
# + return - The `int` value of the field.
public function PrivateKey_getKEYTYPE_EC() returns int {
    return com_cossacklabs_themis_PrivateKey_getKEYTYPE_EC();
}

# The function that retrieves the value of the public field `KEYTYPE_RSA`.
#
# + return - The `int` value of the field.
public function PrivateKey_getKEYTYPE_RSA() returns int {
    return com_cossacklabs_themis_PrivateKey_getKEYTYPE_RSA();
}

function com_cossacklabs_themis_PrivateKey_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.cossacklabs.themis.PrivateKey",
    paramTypes: ["java.lang.Object"]
} external;

function com_cossacklabs_themis_PrivateKey_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.cossacklabs.themis.PrivateKey",
    paramTypes: []
} external;

function com_cossacklabs_themis_PrivateKey_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.cossacklabs.themis.PrivateKey",
    paramTypes: []
} external;

function com_cossacklabs_themis_PrivateKey_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.cossacklabs.themis.PrivateKey",
    paramTypes: []
} external;

function com_cossacklabs_themis_PrivateKey_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.cossacklabs.themis.PrivateKey",
    paramTypes: []
} external;

function com_cossacklabs_themis_PrivateKey_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.PrivateKey",
    paramTypes: []
} external;

function com_cossacklabs_themis_PrivateKey_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.PrivateKey",
    paramTypes: ["long"]
} external;

function com_cossacklabs_themis_PrivateKey_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.PrivateKey",
    paramTypes: ["long", "int"]
} external;

function com_cossacklabs_themis_PrivateKey_getKEYTYPE_EC() returns int = @java:FieldGet {
    name: "KEYTYPE_EC",
    'class: "com.cossacklabs.themis.PrivateKey"
} external;

function com_cossacklabs_themis_PrivateKey_getKEYTYPE_RSA() returns int = @java:FieldGet {
    name: "KEYTYPE_RSA",
    'class: "com.cossacklabs.themis.PrivateKey"
} external;

function com_cossacklabs_themis_PrivateKey_newPrivateKey1(handle arg0) returns handle = @java:Constructor {
    'class: "com.cossacklabs.themis.PrivateKey",
    paramTypes: ["[B"]
} external;

