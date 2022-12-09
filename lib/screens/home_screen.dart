

import 'package:flutter/material.dart';
import 'package:iseneca/models/models.dart';
import 'package:iseneca/screens/profesores_screen.dart';





class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key,}) : super(key: key);  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: const [Header(), Info()]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.access_time_filled, color: Colors.grey), label: 'Agenda' ),
          BottomNavigationBarItem(icon: Icon(Icons.chat, color: Colors.grey), label: 'Comuniciones'),
          BottomNavigationBarItem(icon: Icon(Icons.menu, color: Colors.grey), label: 'Menu'), 
        ],
        currentIndex:0,
        fixedColor: const Color(0xff005298),
        onTap: (int inIndex) {
          
        }
     ),
    );

  }
}

class Header extends StatelessWidget {
  const Header({super.key});
  

  @override
  Widget build(BuildContext context) {
    final tam = MediaQuery.of(context).size;
    return Center(
      child: Column(
          children:  [
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  children: [ Container(
                    margin: EdgeInsets.only(top: tam.height * 0.15),
                    width: double.infinity,
                    height: tam.height*0.47,
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, 'alumnos');
                                    },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                  border: Border(
                                    right: BorderSide( //                   <--- left side
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                    bottom: BorderSide( //                    <--- top side
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                    ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Image(
                                          image: AssetImage('assets/sombrero.png'),
                                          width: 60,
                                        ),
                                        SizedBox(height: 20,),
                                        Text('Alumnado del centro', textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600 ),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, 'profesores');
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        right: BorderSide( //                   <--- left side
                                          color: Colors.grey,
                                          width: 0.5,
                                        ),
                                        left: BorderSide( //                   <--- left side
                                          color: Colors.grey,
                                          width: 0.5,
                                        ),
                                        bottom: BorderSide( //                    <--- top side
                                          color: Colors.grey,
                                          width: 0.5,
                                      ),
                                    ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Image(
                                          image: AssetImage('assets/profesor.png'),
                                          width: 60,
                                        ),
                                        SizedBox(height: 20,),
                                        Text('Personal del centro', textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600 ),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        left: BorderSide( //                   <--- left side
                                          color: Colors.grey,
                                          width: 0.5,
                                        ),
                                        bottom: BorderSide( //                    <--- top side
                                          color: Colors.grey,
                                          width: 0.5,
                                         ),
                                        
                                    ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Image(
                                          image: AssetImage('assets/covid.png'),
                                          width: 50,
                                        ),
                                        SizedBox(height: 10,),
                                        Text('Infomacíon covid', textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600 ),)
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                          right: BorderSide( //                   <--- left side
                                            color: Colors.grey,
                                            width: 0.5,
                                          ),
                                          top: BorderSide( //                    <--- top side
                                            color: Colors.grey,
                                            width: 0.5,
                                        ),
                                      ),
                                      ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Image(
                                          image: AssetImage('assets/campana.png'),
                                          width: 50,
                                        ),
                                        SizedBox(height: 20,),
                                        Text('Tablon de anuncios', textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600 ),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                          right: BorderSide( //                   <--- left side
                                            color: Colors.grey,
                                            width: 0.5,
                                          ),
                                          left: BorderSide( //                   <--- left side
                                            color: Colors.grey,
                                            width: 0.5,
                                          ),
                                          top: BorderSide( //                    <--- top side
                                            color: Colors.grey,
                                            width: 0.5,
                                        ),
                                      ),
                                      ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Image(
                                          image: AssetImage('assets/calendario.png'),
                                          width: 60,
                                        ),
                                        SizedBox(height: 20,),
                                        Text('Calendario escolar', textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600 ),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                          left: BorderSide( //                   <--- left side
                                            color: Colors.grey,
                                            width: 0.5,
                                          ),
                                          top: BorderSide( //                    <--- top side
                                            color: Colors.grey,
                                            width: 0.5,
                                        ),
                                      ),
                                      ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    )],
                )
              ),
            )
          ],
        ),
    );
  }
}
class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    final User arg = ModalRoute.of(context)!.settings.arguments as User;
    final tam = MediaQuery.of(context).size;

    return Container(
      height: tam.height*0.25,
      width: double.infinity,
      margin: EdgeInsets.only(top: tam.height*0.15, left: tam.width*0.05, right: tam.width*0.05),
      decoration:  BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
        borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Container(
              margin: const EdgeInsets.all(20),
              child:  Text(arg.nombreCompleto, style: const TextStyle(fontSize: 20),
              )),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin:  const EdgeInsets.only(top: 20),
                  child: IconButton(
                    icon: const Icon(
                  Icons.people,
                  color: Colors.black87,
                  ),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, left: 20,),
              child: const Text("I.E.S. Llanes", style: TextStyle(fontSize: 17, color: Color(0xff005298))),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 9, left: 20,),
              child: const Text("Perfil Dirección", style: TextStyle(fontSize: 17, color: Color(0xff005298))),
            ),
          ],
        ),
        const SizedBox(height: 14),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 5, 138, 221),
                    side: const BorderSide(color: Colors.white)
                  ),
                  child:  SizedBox(
                    height: tam.height*0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.alarm),
                        Text('Avisos', style: TextStyle(fontSize: 10))
                      ],
                    )
                    ),
                  onPressed: () {},
                  ),
              ),
        
                Expanded(
                  child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 5, 138, 221),
                    side: const BorderSide(color: Colors.white)
                  ),
                  child: Expanded(
                    child: SizedBox(
                      
                      height: tam.height*0.06,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.folder),
                          Text('Bandeja de firmas', style: TextStyle(fontSize: 10),)
                        ],
                      )
                      ),
                  ),
                  onPressed: () {},
                  ),
                )
            ],
          ),
        ),
      ]),
    );
  }
}


