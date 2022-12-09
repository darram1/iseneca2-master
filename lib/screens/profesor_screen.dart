import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/user.dart';


class ProfesorScreen extends StatelessWidget {
  const ProfesorScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final User arg = ModalRoute.of(context)!.settings.arguments as User;
    final tam = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal del centro'),
      ),
      body:  Center(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: tam.height*0.25,
                      color: const Color(0xff005298),
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 50),
                        child: Image(
                          image: AssetImage('assets/iseneca.png'),
                          width: 200,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(arg.nombreCompleto, style: const TextStyle(fontSize: 35, color: Colors.blue, fontWeight: FontWeight.w900),),
                          GestureDetector(
                            onTap: () {
                              launch('tel://${arg.telefono}');
                            },
                            child: Text(arg.telefono, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500))
                            ),
                          GestureDetector(
                            onTap: () {
                              launch('mailto:${arg.mail}');
                            },
                            child: Text(arg.mail, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                          )
                        ]
                        ),
                    )
                  ],
                )
    
    )
    );
  }
}



