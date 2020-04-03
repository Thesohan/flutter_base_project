// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// InjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  void common() {
    final Container container = Container();
    container.registerFactory<AuthenticationRepository, LoginRepositoryImpl>(
        (c) => LoginRepositoryImpl());
  }

  void development() {
    final Container container = Container();
    container.registerSingleton((c) => NetworkService.development());
  }

  void production() {
    final Container container = Container();
    container.registerSingleton((c) => NetworkService.production());
  }
}
