import 'package:dio/dio.dart';
import '../models/usuario_model.dart';

/// Habla directo con la API. No conoce Rol, Usuario del domain,
/// ni nada de lógica de negocio — solo hace requests y parsea JSON.
class AuthRemoteDataSource {
  AuthRemoteDataSource(this._dio);

  final Dio _dio;

  Future<List<UsuarioModel>> obtenerUsuarios() async {
    final response = await _dio.get('/usuarios');
    final lista = response.data as List;
    return lista
        .map((json) => UsuarioModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  Future<bool> verificarPin(String usuarioId, String pin) async {
    final response = await _dio.post(
      '/auth/verificar-pin',
      data: {'usuarioId': usuarioId, 'pin': pin},
    );
    return response.data['valido'] as bool;
  }
}