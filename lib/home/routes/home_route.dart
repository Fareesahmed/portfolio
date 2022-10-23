import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/home/pages/home_page.dart';
import 'package:portfolio/widgets/start_scaffold.dart';

class HomeRoute extends GoRoute {
  static const homePath = '/';

  HomeRoute()
      : super(
          path: homePath,
          pageBuilder: (context, state) => const MaterialPage(
            key: StartScaffold.pageKey,
            child: StartScaffold(
              selectedTab: StartTabs.home,
              body: HomePage(),
            ),
          ),
        );
}
