import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import envryption_service.java.lang as javalang;

# Ballerina class mapping for the Java `com.cossacklabs.themis.SecureMessage` class.
@java:Binding {'class: "com.cossacklabs.themis.SecureMessage"}
public distinct class SecureMessage {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `com.cossacklabs.themis.SecureMessage` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `com.cossacklabs.themis.SecureMessage` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.cossacklabs.themis.SecureMessage` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }
    # The function that maps to the `equals` method of `com.cossacklabs.themis.SecureMessage`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return com_cossacklabs_themis_SecureMessage_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `com.cossacklabs.themis.SecureMessage`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = com_cossacklabs_themis_SecureMessage_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `com.cossacklabs.themis.SecureMessage`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_cossacklabs_themis_SecureMessage_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `com.cossacklabs.themis.SecureMessage`.
    public function notify() {
        com_cossacklabs_themis_SecureMessage_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.cossacklabs.themis.SecureMessage`.
    public function notifyAll() {
        com_cossacklabs_themis_SecureMessage_notifyAll(self.jObj);
    }

    # The function that maps to the `sign` method of `com.cossacklabs.themis.SecureMessage`.
    #
    # + arg0 - The `byte[]` value required to map with the Java method parameter.
    # + return - The `byte[]` or the `SecureMessageWrapException` value returning from the Java mapping.
    public function sign(byte[] arg0) returns byte[]|SecureMessageWrapException|error {
        handle|error externalObj = com_cossacklabs_themis_SecureMessage_sign(self.jObj, check jarrays:toHandle(arg0, "byte"));
        if (externalObj is error) {
            SecureMessageWrapException e = error SecureMessageWrapException(SECUREMESSAGEWRAPEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return <byte[]>check jarrays:fromHandle(externalObj, "byte");
        }
    }

    # The function that maps to the `unwrap` method of `com.cossacklabs.themis.SecureMessage`.
    #
    # + arg0 - The `byte[]` value required to map with the Java method parameter.
    # + return - The `byte[]` or the `SecureMessageWrapException` value returning from the Java mapping.
    public function unwrap(byte[] arg0) returns byte[]|SecureMessageWrapException|error {
        handle|error externalObj = com_cossacklabs_themis_SecureMessage_unwrap(self.jObj, check jarrays:toHandle(arg0, "byte"));
        if (externalObj is error) {
            SecureMessageWrapException e = error SecureMessageWrapException(SECUREMESSAGEWRAPEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return <byte[]>check jarrays:fromHandle(externalObj, "byte");
        }
    }

    # The function that maps to the `unwrap` method of `com.cossacklabs.themis.SecureMessage`.
    #
    # + arg0 - The `byte[]` value required to map with the Java method parameter.
    # + arg1 - The `PublicKey` value required to map with the Java method parameter.
    # + return - The `byte[]` or the `SecureMessageWrapException` value returning from the Java mapping.
    public function unwrap2(byte[] arg0, PublicKey arg1) returns byte[]|SecureMessageWrapException|error {
        handle|error externalObj = com_cossacklabs_themis_SecureMessage_unwrap2(self.jObj, check jarrays:toHandle(arg0, "byte"), arg1.jObj);
        if (externalObj is error) {
            SecureMessageWrapException e = error SecureMessageWrapException(SECUREMESSAGEWRAPEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return <byte[]>check jarrays:fromHandle(externalObj, "byte");
        }
    }

    # The function that maps to the `verify` method of `com.cossacklabs.themis.SecureMessage`.
    #
    # + arg0 - The `byte[]` value required to map with the Java method parameter.
    # + return - The `byte[]` or the `SecureMessageWrapException` value returning from the Java mapping.
    public function verify(byte[] arg0) returns byte[]|SecureMessageWrapException|error {
        handle|error externalObj = com_cossacklabs_themis_SecureMessage_verify(self.jObj, check jarrays:toHandle(arg0, "byte"));
        if (externalObj is error) {
            SecureMessageWrapException e = error SecureMessageWrapException(SECUREMESSAGEWRAPEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return <byte[]>check jarrays:fromHandle(externalObj, "byte");
        }
    }

    # The function that maps to the `verify` method of `com.cossacklabs.themis.SecureMessage`.
    #
    # + arg0 - The `byte[]` value required to map with the Java method parameter.
    # + arg1 - The `PublicKey` value required to map with the Java method parameter.
    # + return - The `byte[]` or the `SecureMessageWrapException` value returning from the Java mapping.
    public function verify2(byte[] arg0, PublicKey arg1) returns byte[]|SecureMessageWrapException|error {
        handle|error externalObj = com_cossacklabs_themis_SecureMessage_verify2(self.jObj, check jarrays:toHandle(arg0, "byte"), arg1.jObj);
        if (externalObj is error) {
            SecureMessageWrapException e = error SecureMessageWrapException(SECUREMESSAGEWRAPEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return <byte[]>check jarrays:fromHandle(externalObj, "byte");
        }
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.SecureMessage`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_SecureMessage_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.SecureMessage`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_SecureMessage_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.cossacklabs.themis.SecureMessage`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = com_cossacklabs_themis_SecureMessage_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wrap` method of `com.cossacklabs.themis.SecureMessage`.
    #
    # + arg0 - The `byte[]` value required to map with the Java method parameter.
    # + return - The `byte[]` or the `SecureMessageWrapException` value returning from the Java mapping.
    public function wrap(byte[] arg0) returns byte[]|SecureMessageWrapException|error {
        handle|error externalObj = com_cossacklabs_themis_SecureMessage_wrap(self.jObj, check jarrays:toHandle(arg0, "byte"));
        if (externalObj is error) {
            SecureMessageWrapException e = error SecureMessageWrapException(SECUREMESSAGEWRAPEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return <byte[]>check jarrays:fromHandle(externalObj, "byte");
        }
    }

    # The function that maps to the `wrap` method of `com.cossacklabs.themis.SecureMessage`.
    #
    # + arg0 - The `byte[]` value required to map with the Java method parameter.
    # + arg1 - The `PublicKey` value required to map with the Java method parameter.
    # + return - The `byte[]` or the `SecureMessageWrapException` value returning from the Java mapping.
    public function wrap2(byte[] arg0, PublicKey arg1) returns byte[]|SecureMessageWrapException|error {
        handle|error externalObj = com_cossacklabs_themis_SecureMessage_wrap2(self.jObj, check jarrays:toHandle(arg0, "byte"), arg1.jObj);
        if (externalObj is error) {
            SecureMessageWrapException e = error SecureMessageWrapException(SECUREMESSAGEWRAPEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            return <byte[]>check jarrays:fromHandle(externalObj, "byte");
        }
    }

}

# The constructor function to generate an object of `com.cossacklabs.themis.SecureMessage`.
#
# + arg0 - The `PrivateKey` value required to map with the Java constructor parameter.
# + return - The new `SecureMessage` class generated.
public function newSecureMessage1(PrivateKey arg0) returns SecureMessage {
    handle externalObj = com_cossacklabs_themis_SecureMessage_newSecureMessage1(arg0.jObj);
    SecureMessage newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `com.cossacklabs.themis.SecureMessage`.
#
# + arg0 - The `PrivateKey` value required to map with the Java constructor parameter.
# + arg1 - The `PublicKey` value required to map with the Java constructor parameter.
# + return - The new `SecureMessage` class generated.
public function newSecureMessage2(PrivateKey arg0, PublicKey arg1) returns SecureMessage {
    handle externalObj = com_cossacklabs_themis_SecureMessage_newSecureMessage2(arg0.jObj, arg1.jObj);
    SecureMessage newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `com.cossacklabs.themis.SecureMessage`.
#
# + arg0 - The `PublicKey` value required to map with the Java constructor parameter.
# + return - The new `SecureMessage` class generated.
public function newSecureMessage3(PublicKey arg0) returns SecureMessage {
    handle externalObj = com_cossacklabs_themis_SecureMessage_newSecureMessage3(arg0.jObj);
    SecureMessage newObj = new (externalObj);
    return newObj;
}

function com_cossacklabs_themis_SecureMessage_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: ["java.lang.Object"]
} external;

function com_cossacklabs_themis_SecureMessage_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: []
} external;

function com_cossacklabs_themis_SecureMessage_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: []
} external;

function com_cossacklabs_themis_SecureMessage_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: []
} external;

function com_cossacklabs_themis_SecureMessage_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: []
} external;

function com_cossacklabs_themis_SecureMessage_sign(handle receiver, handle arg0) returns handle|error = @java:Method {
    name: "sign",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: ["[B"]
} external;

function com_cossacklabs_themis_SecureMessage_unwrap(handle receiver, handle arg0) returns handle|error = @java:Method {
    name: "unwrap",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: ["[B"]
} external;

function com_cossacklabs_themis_SecureMessage_unwrap2(handle receiver, handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "unwrap",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: ["[B", "com.cossacklabs.themis.PublicKey"]
} external;

function com_cossacklabs_themis_SecureMessage_verify(handle receiver, handle arg0) returns handle|error = @java:Method {
    name: "verify",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: ["[B"]
} external;

function com_cossacklabs_themis_SecureMessage_verify2(handle receiver, handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "verify",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: ["[B", "com.cossacklabs.themis.PublicKey"]
} external;

function com_cossacklabs_themis_SecureMessage_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: []
} external;

function com_cossacklabs_themis_SecureMessage_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: ["long"]
} external;

function com_cossacklabs_themis_SecureMessage_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: ["long", "int"]
} external;

function com_cossacklabs_themis_SecureMessage_wrap(handle receiver, handle arg0) returns handle|error = @java:Method {
    name: "wrap",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: ["[B"]
} external;

function com_cossacklabs_themis_SecureMessage_wrap2(handle receiver, handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "wrap",
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: ["[B", "com.cossacklabs.themis.PublicKey"]
} external;

function com_cossacklabs_themis_SecureMessage_newSecureMessage1(handle arg0) returns handle = @java:Constructor {
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: ["com.cossacklabs.themis.PrivateKey"]
} external;

function com_cossacklabs_themis_SecureMessage_newSecureMessage2(handle arg0, handle arg1) returns handle = @java:Constructor {
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: ["com.cossacklabs.themis.PrivateKey", "com.cossacklabs.themis.PublicKey"]
} external;

function com_cossacklabs_themis_SecureMessage_newSecureMessage3(handle arg0) returns handle = @java:Constructor {
    'class: "com.cossacklabs.themis.SecureMessage",
    paramTypes: ["com.cossacklabs.themis.PublicKey"]
} external;

