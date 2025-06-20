import 'package:furniture_ecommerce/core/network/hive_service.dart';
import 'package:furniture_ecommerce/features/auth/data/data_source/local_datasource/user_local_data_source.dart';
import 'package:furniture_ecommerce/features/auth/data/repository/local_repository/user_local_repository.dart';
import 'package:furniture_ecommerce/features/auth/domain/use_case/user_login_usecase.dart';
import 'package:furniture_ecommerce/features/auth/domain/use_case/user_register_usecase.dart';
import 'package:furniture_ecommerce/features/auth/presentation/view_model/login_view_model/login_view_model.dart';
import 'package:furniture_ecommerce/features/auth/presentation/view_model/register_view_model/register_view_model.dart';
import 'package:furniture_ecommerce/features/splash/presentation/view_model/splash_view_model.dart';
import 'package:get_it/get_it.dart';


final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  await _initHiveService();
  await _initAuthModule();
  await _initSplashModule();
}

Future<void> _initHiveService() async {
  serviceLocator.registerLazySingleton(() => HiveService());
}

Future<void> _initAuthModule() async {
  serviceLocator.registerFactory(
    () => UserLocalDataSource(hiveService: serviceLocator<HiveService>()),
  );

  serviceLocator.registerFactory(
    () => UserLocalRepository(
      userLocalDataSource: serviceLocator<UserLocalDataSource>(),
    ),
  );

  serviceLocator.registerFactory(
    () => UserLoginUsecase(
      userRepository: serviceLocator<UserLocalRepository>(),
    ),
  );

  serviceLocator.registerFactory(
    () => UserRegisterUsecase(
      userRepository: serviceLocator<UserLocalRepository>(),
    ),
  );

  serviceLocator.registerFactory(
    () => RegisterViewModel(
      serviceLocator<UserRegisterUsecase>(),
    ),
  );
  
  serviceLocator.registerFactory(
    () => LoginViewModel(serviceLocator<UserLoginUsecase>()),
  );
}

Future<void> _initSplashModule() async {
  serviceLocator.registerFactory(() => SplashViewModel());
}
