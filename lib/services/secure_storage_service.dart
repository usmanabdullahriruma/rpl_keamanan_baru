import 'package:flutter_secure_storage/flutter_secure_storage.dart';

[FlutterSecureStorage]

class SecureStorageService {
  
  final FlutterSecureStorage _secureStorage;

  SecureStorageService({FlutterSecureStorage? secureStorage})
      : _secureStorage = secureStorage ?? const FlutterSecureStorage();

 
  static const String _keyToken = 'auth_token';
  static const String _keyUsername = 'auth_username';

 
  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: _keyToken, value: token);
  }

  
  Future<String?> getToken() async {
    return await _secureStorage.read(key: _keyToken);
  }

 
  Future<void> saveUsername(String username) async {
    await _secureStorage.write(key: _keyUsername, value: username);
  }

  Future<String?> getUsername() async {
    return await _secureStorage.read(key: _keyUsername);
  }

 
  Future<void> deleteToken() async {
    await _secureStorage.delete(key: _keyToken);
  }

  Future<void> clearAll() async {
    await _secureStorage.deleteAll();
  }
}