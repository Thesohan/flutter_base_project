
import 'package:base_project/util/app_config.dart';
import 'package:base_project/data/network/network_service.dart';
import 'package:base_project/data/repository/loginRepository/authentication_repository.dart';
import 'package:base_project/data/repository/loginRepository/authentication_repository_impl.dart';
import 'package:kiwi/kiwi.dart';

part 'injector.g.dart';

abstract class Injector {
  @Register.factory(AuthenticationRepository,from:LoginRepositoryImpl)
  void common();

  @Register.singleton(NetworkService, constructorName: 'development')
  void development();

  @Register.singleton(NetworkService, constructorName: 'production')
  void production();

  static void setup() {
    final injector = _$Injector();
    injector.common();
    if (AppConfig.appFlavor == AppFlavor.development) {
      injector.development();
    } else {
      injector.production();
    }
  }
}
