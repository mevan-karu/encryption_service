import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import envryption_service.java.lang as javalang;

# Ballerina class mapping for the Java `com.cossacklabs.themis.PublicKey` class.
@java:Binding {'class: "com.cossacklabs.themis.PublicKey"}
public distinct class PublicKey {

    *java:JObject;
    *AsymmetricKey;

    # The `handle` field that stores the reference to the `com.cossacklabs.themis.PublicKey` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `com.cossacklabs.themis.PublicKey` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.cossacklabs.themis.PublicKey` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }
    # The function that maps to the `equals` method of `com.cossacklabs.themis.PublicKey`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return com_cossacklabs_themis_PublicKey_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `com.cossacklabs.themis.PublicKey`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = com_cossacklabs_themis_PublicKey_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `com.cossacklabs.themis.PublicKey`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_cossacklabs_themis_PublicKey_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `com.cossacklabs.themis.PublicKey`.
    public function notify() {
        com_cossacklabs_themis_PublicKey_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.cossacklabs.themis.PublicKey`.
    public function notifyAll() {
        com_cossacklabs_themis_PublicKey_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.PublicKey`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_PublicKey_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.PublicKey`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_PublicKey_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.PublicKey`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_PublicKey_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `com.cossacklabs.themis.PublicKey`.
#
# + arg0 - The `byte[]` value required to map with the Java constructor parameter.
# + return - The new `PublicKey` class generated.
public function newPublicKey1(byte[] arg0) returns PublicKey|error {
    handle externalObj = com_cossacklabs_themis_PublicKey_newPublicKey1(check jarrays:toHandle(arg0, "byte"));
    PublicKey newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `KEYTYPE_EC`.
#
# + return - The `int` value of the field.
public function PublicKey_getKEYTYPE_EC() returns int {
    return com_cossacklabs_themis_PublicKey_getKEYTYPE_EC();
}

# The function that retrieves the value of the public field `KEYTYPE_RSA`.
#
# + return - The `int` value of the field.
public function PublicKey_getKEYTYPE_RSA() returns int {
    return com_cossacklabs_themis_PublicKey_getKEYTYPE_RSA();
}

function com_cossacklabs_themis_PublicKey_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.cossacklabs.themis.PublicKey",
    paramTypes: ["java.lang.Object"]
} external;

function com_cossacklabs_themis_PublicKey_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.cossacklabs.themis.PublicKey",
    paramTypes: []
} external;

function com_cossacklabs_themis_PublicKey_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.cossacklabs.themis.PublicKey",
    paramTypes: []
} external;

function com_cossacklabs_themis_PublicKey_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.cossacklabs.themis.PublicKey",
    paramTypes: []
} external;

function com_cossacklabs_themis_PublicKey_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.cossacklabs.themis.PublicKey",
    paramTypes: []
} external;

function com_cossacklabs_themis_PublicKey_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.PublicKey",
    paramTypes: []
} external;

function com_cossacklabs_themis_PublicKey_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.PublicKey",
    paramTypes: ["long"]
} external;

function com_cossacklabs_themis_PublicKey_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.PublicKey",
    paramTypes: ["long", "int"]
} external;

function com_cossacklabs_themis_PublicKey_getKEYTYPE_EC() returns int = @java:FieldGet {
    name: "KEYTYPE_EC",
    'class: "com.cossacklabs.themis.PublicKey"
} external;

function com_cossacklabs_themis_PublicKey_getKEYTYPE_RSA() returns int = @java:FieldGet {
    name: "KEYTYPE_RSA",
    'class: "com.cossacklabs.themis.PublicKey"
} external;

function com_cossacklabs_themis_PublicKey_newPublicKey1(handle arg0) returns handle = @java:Constructor {
    'class: "com.cossacklabs.themis.PublicKey",
    paramTypes: ["[B"]
} external;

