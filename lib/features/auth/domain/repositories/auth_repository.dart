import '../entities/usuario.dart';

abstract class AuthRepository {
  /// Devuelve la lista de usuarios disponibles para la pantalla de selección.
  Future<List<Usuario>> obtenerUsuarios();

  /// Verifica el PIN de un usuario. Devuelve true si es correcto.
  Future<bool> verificarPin(String usuarioId, String pin);
}