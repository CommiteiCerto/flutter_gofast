import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_controller.dart';
import 'app_widget.dart';
import 'core/interfaces/auth_repository.dart';
import 'core/interfaces/shared_repository_interface.dart';
import 'core/repositories/auth_repository.dart';
import 'core/repositories/shared_repository.dart';
import 'modules/home/home_module.dart';
import 'modules/splash/splash_page.dart';

class AppModule extends MainModule {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  List<Bind> get binds => [
        Bind<ISharedRepositoryInterface>(
          (i) => SharedRepository(),
        ),
        Bind<IAuthRepository>(
          (i) => AuthRepository(firebaseAuth),
        ),
        Bind(
          (i) => AppController(),
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          '/',
          child: (_, args) => SplashPage(),
          transition: TransitionType.noTransition,
        ),
        ModularRouter(
          '/home',
          module: HomeModule(),
        ),
      ];
}
