import 'package:flutter/material.dart';

/// Paleta de colores de la app, migrada del tema oscuro de PintuPanel.
/// Ningún widget debe escribir un Color(0x...) directo — siempre usar estas constantes.
class AppColors {
  AppColors._();

  // Base
  static const Color background = Color(0xFF0E1014);
  static const Color panel = Color(0xFF15181F);
  static const Color panel2 = Color(0xFF1B1F29);
  static const Color line = Color(0xFF262B38);
  static const Color text = Color(0xFFE9EBF1);
  static const Color textMuted = Color(0xFF98A0B3);

  // Semánticos
  static const Color primary = Color(0xFF6C5CE7);
  static const Color primaryLight = Color(0xFF8E7BFF);
  static const Color accent = Color(0xFF00C2A8);
  static const Color success = Color(0xFF2ECC8F);
  static const Color warning = Color(0xFFF5B942);
  static const Color error = Color(0xFFFF6B6B);
  static const Color gold = Color(0xFFE8B64C);

  // Colores por rol
  static const Color roleVendedor = Color(0xFF3B82F6);
  static const Color roleSupervisor = warning;
  static const Color roleDireccion = primaryLight;
}