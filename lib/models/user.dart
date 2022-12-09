import 'dart:convert';

class User {
  String id;
  String usuario;
  String clave;
  String nombreCompleto;
  String telefono;
  String mail;

  User({required this.id, required this.usuario, required this.clave, required this.nombreCompleto, required this.telefono, required this.mail});


  factory User.fromJson(String str) => User.fromMaps(json.decode(str));
  
  factory User.fromMaps(Map<String, dynamic> json) => User(
    id: json['id'], 
    usuario: json['usuario'], 
    clave: json['clave'],
    nombreCompleto: json['nombre_completo'],
    telefono: json['telefono'],
    mail: json['mail'],
  );
}
