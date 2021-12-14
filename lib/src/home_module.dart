import 'package:external_dependencies/external_dependencies.dart';

import 'home/home_page.dart';
import 'login/login_page.dart';
import 'register/register_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const HomePage()),
        ChildRoute('/login', child: (_, args) => const LoginPage()),
        ChildRoute('/register', child: (_, args) => const RegisterPage()),
      ];
}
