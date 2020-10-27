import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_gofast/app/app_controller.dart';
import 'package:flutter_gofast/app/app_widget.dart';
import 'package:flutter_gofast/app/core/interfaces/auth_repository.dart';
import 'package:flutter_gofast/app/core/interfaces/shared_repository_interface.dart';
import 'package:flutter_gofast/app/core/repositories/auth_repository.dart';
import 'package:flutter_gofast/app/core/repositories/shared_repository.dart';
import 'package:flutter_gofast/app/modules/home/home_module.dart';
import 'package:flutter_gofast/app/modules/splash/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  List<Bind> get binds => [
        Bind<ISharedeRepositoryInterface>(
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
