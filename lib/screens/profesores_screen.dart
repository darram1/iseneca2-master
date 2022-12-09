import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/users_providers.dart';

class ProfesoresScreen extends StatelessWidget {
  const ProfesoresScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    final profesoresProvider = Provider.of<UsersProvider>(context, listen: true);
    final profesores = profesoresProvider.userList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal del centro'),
      ),
      body: ListView.separated(
          itemCount: profesores.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(profesores[index].nombreCompleto),
            trailing: const Icon(Icons.arrow_right, color: Colors.indigo),
            onTap: () {
              Navigator.pushNamed(context, 'profesor', arguments: profesores[index]);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        )

    );
  }
}



