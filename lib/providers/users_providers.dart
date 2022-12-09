import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:iseneca/models/convivencia.dart';
import 'package:iseneca/models/expulsados.dart';

import '../models/models.dart';
import 'package:http/http.dart' as http;

class UsersProvider extends ChangeNotifier {
  UsersProvider() {
    _getJsonDataUsers();
    _getJsonDataUsersBanned();
    _getJsonDataUsersCoexistence();
  }

  List<User> userList = [];
  List<Expulsados> expulsadoList = [];
  List<Convivencia> convivenciaList = [];

  Future<List<User>> _getJsonDataUsers() async {
    var url = Uri.parse(
        'https://script.google.com/macros/s/AKfycbwU8zonXNk2mLto9IKyGTKmCmLLpa3ECzrSYvaUfykPxpOaj0exCisQvVyCu3GQWFMIIg/exec?spreadsheetId=1snGY5PlrZfUpg6pjfitij6xYFsZ1pzNdHC9So_Ch2Ic&sheet=usuarios');

    final data = await http.get(url);
    dynamic jsonAppData = jsonDecode(data.body);

    for (dynamic data in jsonAppData) {
      User user = User(
        id: data['id'],
        usuario: data['usuario'],
        clave: data['clave'],
        nombreCompleto: data['nombre_completo'],
        telefono: data['telefono'],
        mail: data['mail'],
      );
      userList.add(user);
    }
    return userList;
  }

  Future<List<Expulsados>> _getJsonDataUsersBanned() async {
    var url = Uri.parse(
        'https://script.google.com/a/macros/g.educaand.es/s/AKfycbwU8zonXNk2mLto9IKyGTKmCmLLpa3ECzrSYvaUfykPxpOaj0exCisQvVyCu3GQWFMIIg/exec?spreadsheetId=1snGY5PlrZfUpg6pjfitij6xYFsZ1pzNdHC9So_Ch2Ic&sheet=expulsado');

    final data = await http.get(url);
    dynamic jsonAppData = jsonDecode(data.body);

    for (dynamic data in jsonAppData) {
      Expulsados user = Expulsados(
        alumno: data["Alumno"],
        curso: data["Curso"],
        fechaInicio: data["Fecha_Inicio"],
        fechaFin: data["Fecha_Fin"],
      );
      expulsadoList.add(user);
    }
    return expulsadoList;
  }

  Future<List<Convivencia>> _getJsonDataUsersCoexistence() async {
    var url = Uri.parse(
        'https://script.google.com/macros/s/AKfycbwU8zonXNk2mLto9IKyGTKmCmLLpa3ECzrSYvaUfykPxpOaj0exCisQvVyCu3GQWFMIIg/exec?spreadsheetId=1snGY5PlrZfUpg6pjfitij6xYFsZ1pzNdHC9So_Ch2Ic&sheet=convivencia');

    final data = await http.get(url);
    dynamic jsonAppData = jsonDecode(data.body);

    for (dynamic data in jsonAppData) {
      Convivencia user = Convivencia(
        alumno: data["Alumno"],
        curso: data["Curso"],
        fechaInicio: data["Fecha_Inicio"],
        fechaFin: data["Fecha_Fin"],
      );
      convivenciaList.add(user);
    }
    return convivenciaList;
  }
}
