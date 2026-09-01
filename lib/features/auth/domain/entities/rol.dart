/// Roles del sistema. Los límites de descuento y colores viven aquí,
/// no repartidos como números mágicos en cada pantalla.
enum Rol {
  vendedor(limiteDescuento: 0.0, nombre: 'Vendedor'),
  supervisor(limiteDescuento: 15.0, nombre: 'Supervisor'),
  direccion(limiteDescuento: 100.0, nombre: 'Dirección');

  const Rol({required this.limiteDescuento, required this.nombre});

  final double limiteDescuento;
  final String nombre;

  bool puedeAplicarDescuento(double porcentaje) => porcentaje <= limiteDescuento;
}