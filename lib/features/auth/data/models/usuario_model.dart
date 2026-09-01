import '../../domain/entities/rol.dart';
import '../../domain/entities/usuario.dart';

/// Versión de Usuario que sabe convertirse desde/hacia JSON.
/// El resto de la app nunca ve JSON directamente — solo esta capa.
class UsuarioModel extends Usuario {
  const UsuarioModel({
    required super.id,
    required super.nombre,
    required super.rol,
  });

  factory UsuarioModel.fromJson(Map<String, dynamic> json) {
    return UsuarioModel(
      id: json['id'] as String,
      nombre: json['nombre'] as String,
      rol: _rolDesdeString(json['rol'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombre': nombre,
      'rol': rol.name,
    };
  }

  static Rol _rolDesdeString(String valor) {
    return Rol.values.firstWhere(
          (r) => r.name == valor,
      orElse: () => throw ArgumentError('Rol desconocido: $valor'),
    );
  }
}