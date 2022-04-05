import 'package:blazebrain_one/api_practice/services/api_service.dart';
import 'package:blazebrain_one/api_practice/services/connect_service.dart';
import 'package:blazebrain_one/api_practice/services/super_here_service.dart';
import 'package:blazebrain_one/api_practice/ui/view/home_view.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: HomeView, initial: true),
  ],
  dependencies: [
    Singleton(classType: SnackbarService),
    Singleton(classType: ConnectivityService),
    LazySingleton(classType: ApiService),
    LazySingleton(classType: SuperheroService),
  ],
  logger: StackedLogger(),
)
class AppSetup {}