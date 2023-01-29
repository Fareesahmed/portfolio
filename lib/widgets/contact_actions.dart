import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:layout/layout.dart';
import 'package:portfolio/utils/portfolio_urls.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactActions extends StatelessWidget {
  const ContactActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          tooltip: 'Email',
          icon: const Icon(Icons.email_rounded),
          onPressed: () => launchUrlString(PortfolioUrls.email),
        ),
        IconButton(
          tooltip: 'LinkedIn',
          icon: const FaIcon(FontAwesomeIcons.linkedin),
          onPressed: () => launchUrlString(PortfolioUrls.linkedIn),
        ),
        IconButton(
          tooltip: 'GitHub',
          icon: const FaIcon(FontAwesomeIcons.github),
          onPressed: () => launchUrlString(PortfolioUrls.gitHub),
        ),
      ].separate(8),
    );
  }
}
