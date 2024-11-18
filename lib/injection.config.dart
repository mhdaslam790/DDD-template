// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:cloud_functions/cloud_functions.dart' as _i809;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:flutter_template/application/auth/auth_bloc.dart' as _i673;
import 'package:flutter_template/application/settings/settings_bloc.dart'
    as _i1057;
import 'package:flutter_template/domain/auth/i_auth_facade.dart' as _i957;
import 'package:flutter_template/infrastructure/auth/auth_facade.dart' as _i124;
import 'package:flutter_template/infrastructure/core/network/firebase/firebase_injectable_modules.dart'
    as _i237;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.factory<_i1057.SettingsBloc>(() => _i1057.SettingsBloc());
    gh.lazySingleton<_i59.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i809.FirebaseFunctions>(
        () => firebaseInjectableModule.firebaseFunctions);
    gh.lazySingleton<_i957.IAuthFacade>(() => _i124.AuthFacade(
          gh<_i59.FirebaseAuth>(),
          gh<_i974.FirebaseFirestore>(),
        ));
    gh.factory<_i673.AuthBloc>(() => _i673.AuthBloc(gh<_i957.IAuthFacade>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i237.FirebaseInjectableModule {}
