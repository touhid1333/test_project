import 'package:flutter/material.dart';
import 'package:mvvm_templet/screens/not_found/not_found.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:mvvm_templet/screens/home/home_view.dart';
import 'package:mvvm_templet/dependencies/dependencies.dart' as di;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  di.initDev();

  final keyApplicationId = dotenv.env['PARSE_APPLICATION_ID'] ?? '';
  final keyClientKey = dotenv.env['PARSE_CLIENT_KEY'] ?? '';
  final keyParseServerUrl = dotenv.env['PARSE_SERVER_URL'] ?? '';
  final liveQueryUrl = dotenv.env['PARSE_LIVE_QUERY_URL'] ?? '';

  if (keyApplicationId.isNotEmpty &&
      keyClientKey.isNotEmpty &&
      keyParseServerUrl.isNotEmpty) {
    await Parse().initialize(
      keyApplicationId,
      keyParseServerUrl,
      clientKey: keyClientKey,
      debug: false,
      autoSendSessionId: true,
      liveQueryUrl: liveQueryUrl.isNotEmpty ? liveQueryUrl : keyParseServerUrl,
    );
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Graphik',
        colorScheme: const ColorScheme.dark(
          primary: Colors.red,
          onPrimary: Colors.white,
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            // Home route
            if (routeSettings.name == HomeView.routeName) {
              return const HomeView();
            } else {
              return const NotFound();
            }
          },
        );
      },
    );
  }
}
