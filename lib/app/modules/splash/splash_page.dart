import 'package:flutter/material.dart';
import 'package:flutter_gofast/app/app_controller.dart';
import 'package:flutter_gofast/app/core/enuns/app_enums.dart';
import 'package:flutter_gofast/app/core/interfaces/auth_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Theme Dark'),
              onPressed: () {
                Modular.get<AppController>().setThemeData(ThemeMode.dark);
              },
            ),
            RaisedButton(
              child: Text('Theme Light'),
              onPressed: () {
                Modular.get<AppController>().setThemeData(ThemeMode.light);
              },
            ),
            RaisedButton(
              child: Text('Login Google'),
              onPressed: () async {
                await Modular.get<IAuthRepository>()
                    .doLoginGoogle()
                    .then((result) {
                  if (result.status == ResponseStatus.Success) {
                    print(result.message);
                  } else {
                    print(result.message);
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
