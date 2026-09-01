import 'rol.dart';

class Usuario {
  const Usuario({
    required this.id,
    required this.nombre,
    required this.rol,
  });

  final String id;
  final String nombre;
  final Rol rol;
}