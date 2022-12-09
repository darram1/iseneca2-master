import 'package:flutter/material.dart';
import 'package:iseneca/themes/app_theme.dart';
import 'package:iseneca/widgets/custom_input_field_password.dart';
import 'package:provider/provider.dart';

import '../providers/users_providers.dart';
import '../router/app_routes.dart';
import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usersProvider = Provider.of<UsersProvider>(context, listen: true);

    final GlobalKey<FormState> myFormkey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'david',
      'password': '1234',
    };

    return Scaffold(
      body: Stack(children: [
        const Background(),
        Login(
          myFormkey: myFormkey,
          formValues: formValues,
          usersProvider: usersProvider,
        )
      ]),
    );
  }
}

class Login extends StatelessWidget {
  const Login({
    Key? key,
    required this.myFormkey,
    required this.formValues,
    required this.usersProvider,
  }) : super(key: key);

  final Map<String, String> formValues;
  final GlobalKey<FormState> myFormkey;
  final UsersProvider usersProvider;

  void checkUsers(BuildContext context) {
    bool alert = true;
    final usuarios = usersProvider.userList;
    for (var user in usuarios) {
      if (user.usuario == formValues['username']?.toLowerCase().trim() &&
          user.clave == formValues['password']?.trim()) {
        Navigator.pushNamed(context, AppRoutes.menuOption[0].route,
            arguments: user);
            alert = false;
      }
    }
    if(alert){
      displayDialog(context);
    }
  }

  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Usuario o Contraseña Erronea'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Center(child: 
                Image(
                  image: AssetImage('assets/error.png'),
                  width: 150,
                  ),
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Aceptar', style: TextStyle(fontSize: 18),))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    String version = '11.3.0';
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Form(
            key: myFormkey,
            child: Column(children: [
              const SizedBox(
                height: 100,
              ),
              const Image(
                image: AssetImage('assets/iseneca.png'),
                width: double.infinity,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomInputField(
                formProperty: 'username',
                formValues: formValues,
                labelText: 'Nombre',
                hintText: "Nombre del usuario",
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputFieldPassword(
                formProperty: 'password',
                formValues: formValues,
                labelText: 'Contraseña',
                hintText: 'Contraseña del usuario',
                obscureText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: const SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      'Entrar',
                      style: TextStyle(color: AppTheme.primary, fontSize: 16),
                    ))),
                onPressed: () {
                  checkUsers(context);
                },
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.white, width: 1.0))),
                  child: const Text('No recuerdo mi contraseña',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ))),
              const SizedBox(
                height: 110,
              ),
              const Image(
                image: AssetImage('assets/juntaDeAndalucia.png'),
                width: double.infinity,
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text('v$version', 
                textAlign: TextAlign.end, 
                style: const TextStyle(
                  color: Colors.white, 
                  fontSize: 17,
                  fontWeight: FontWeight.w700
                  ),))
            ]),
          ),
        ),
      ),
      
    );
  }
}



class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 8],
          colors: [Color(0xff005298), Color(0xff01315a)],
        ),
      ),
    );
  }
}
