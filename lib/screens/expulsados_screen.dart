import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/users_providers.dart';

class ExpulsadosScreen extends StatelessWidget {
  const ExpulsadosScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UsersProvider>(context, listen: true);
    final user = userProvider.expulsadoList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Alumno Expulsados'),
      ),
      body: ListView.separated(
          itemCount: user.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(user[index].alumno),
            trailing: const Icon(Icons.people, color: Colors.indigo),
            
          ),
          separatorBuilder: (_, __) => const Divider(),
        )

    );
  }
}



