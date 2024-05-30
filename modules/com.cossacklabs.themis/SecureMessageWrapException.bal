// Ballerina error type for `com.cossacklabs.themis.SecureMessageWrapException`.

public const SECUREMESSAGEWRAPEXCEPTION = "SecureMessageWrapException";

type SecureMessageWrapExceptionData record {
    string message;
};

public type SecureMessageWrapException distinct error<SecureMessageWrapExceptionData>;

