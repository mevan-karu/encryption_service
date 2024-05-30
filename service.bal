import ballerina/http;
import envryption_service.com.cossacklabs.themis;
import ballerina/log;
import ballerina/mime;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource to encrypt a given data.
    # + req - Encryption request.
    # + return - Encrypted data.
    resource function post encrypt(EncryptionRequest req) returns EncryptionResponse|error {
        do {
            string encryptedData = check encryptData(req.encodedData);
            return { encodedData: encryptedData };    
        } on fail var e {
            log:printError("Error occurred while encrypting data", 'error = e);
            return e;
        }
    }

    # A resource to decrypt a given data.
    # + req - Decyrption request.
    # + return - Decrypted data.
    resource function post decrypt(DecryptionRequest req) returns DecryptionResponse|error {
        do {
            string decryptedData = check decryptData(req.encodedData);
            return { encodedData: decryptedData };    
        } on fail var e {
            log:printError("Error occurred while decrypting data", 'error = e);
            return e;
        }
    }
}


function encryptData(string encodedData) returns string|error {
    if encodedData.length() > 0 {
        themis:PrivateKey privateKey = check themis:newPrivateKey1(<byte[]>check mime:base64Decode(client_cert.toBytes()));
        themis:PublicKey publicKey = check themis:newPublicKey1(<byte[]>check mime:base64Decode(server_private_key.toBytes()));
        themis:SecureMessage secureMessage = themis:newSecureMessage2(privateKey, publicKey);
        byte[] encryptedData = check secureMessage.wrap(encodedData.toBytes());
        return check string:fromBytes(<byte[]>check mime:base64Encode(encryptedData));
    }
    return "";
}

function decryptData(string encodedData) returns string|error {
    if encodedData.length() > 0 {
        themis:PrivateKey privateKey = check themis:newPrivateKey1(<byte[]>check mime:base64Decode(server_private_key.toBytes()));
        themis:PublicKey publicKey = check themis:newPublicKey1(<byte[]>check mime:base64Decode(client_cert.toBytes()));
        themis:SecureMessage secureMessage = themis:newSecureMessage2(privateKey, publicKey);
        byte[] decryptedData = check secureMessage.unwrap(<byte[]>check mime:base64Decode(encodedData.toBytes()));
        return check string:fromBytes(decryptedData);
    }
    return "";
}