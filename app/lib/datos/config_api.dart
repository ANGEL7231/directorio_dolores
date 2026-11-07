import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

String urlBaseApi() {
  // 1. Primero intentamos leer si se pasó una URL por la terminal (--dart-define)
  const apiUri = String.fromEnvironment('API_URL');
  if (apiUri.isNotEmpty) {
    return apiUri;
  }

  // 2. Si no se pasó nada, aplicamos los valores por defecto según la plataforma
  if (kIsWeb) return 'http://localhost:3000';
  if (Platform.isAndroid) {
    // Cambia esta IP por la IP local de tu PC que obtuviste con ipconfig
    return 'http://192.168.0.19:3000';
  }
  return 'http://localhost:3000';
}