import 'package:flutter/material.dart';

import 'package:cadastro_de_usuarios/components/user_tile.dart';
import 'package:cadastro_de_usuarios/models/user.dart';
import 'package:cadastro_de_usuarios/provider/users.dart';
import 'package:cadastro_de_usuarios/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Anotações'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.USER_FORM,
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
