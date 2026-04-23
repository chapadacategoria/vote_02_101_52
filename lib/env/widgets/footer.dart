part of '../env.dart';

class NavigationFooter extends StatelessWidget {
  const NavigationFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.theme.copyWith(
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: context.color.surface.withOpacity(0.15),
        ),
      ),
      child: Container(
        color: context.color.onSurface,
        padding: const EdgeInsets.all(Constants.spacing),
        constraints: BoxConstraints(minWidth: context.width),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.spaceAround,
          children: [
            // Navigation Logo
            NavigationHeader.logo(),

            // Menu list
            Padding(
              padding: const EdgeInsets.all(Constants.spacing),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  // Term of Service Button
                  Semantics(
                    label: 'Eleições CFT/CRT 2026',
                    link: true,
                    child: Seo.link(
                      anchor: 'Eleições CFT/CRT 2026',
                      href: 'https://eleicoes.sinceti.tec.br/',
                      child: DButton.text(
                        onTap: () => launchUrl(Uri.parse('https://eleicoes.sinceti.tec.br/')),
                        text: 'Eleições CFT/CRT 2026',
                        style: context.text.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.color.primary,
                        ),
                        color: Colors.transparent,
                      ),
                    ),
                  ),

                  // Privacy Pplicy Button
                  Semantics(
                    label: 'Sponsor Us',
                    link: true,
                    child: Seo.link(
                      anchor: 'Privacy Policy',
                      href: 'https://www.buymeacoffee.com/nialixus',
                      child: DButton.text(
                        onTap: () => launchUrl(
                            Uri.parse('https://servicos.sinceti.net.br/index.php')),
                        text: 'Sinceti',
                        style: context.text.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.color.primary,
                        ),
                        color: Colors.transparent,
                      ),
                    ),
                  ),

                  // Contact Us Button
                  Semantics(
                    label: 'Author Email',
                    link: true,
                    child: Seo.link(
                      anchor: 'Contact Us',
                      href: 'mailto://nialixus@gmail.com',
                      child: DButton.text(
                        onTap: () =>
                            launchUrl(Uri.parse('https://wa.me/message/UAV4LRNVKQBBM1')),
                        text: 'Whatsapp',
                        style: context.text.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.color.primary,
                        ),
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Copyright text
            Semantics(
              label: 'Copyright 2023 Louis Wiwawan',
              child: Seo.link(
                anchor: '© 2026 Chapa 52 e 101 - Todos os direitos reservados',
                href: 'https://github.com/Nialixus/'
                    'flutter_landing_page/blob/main/LICENSE',
                child: DButton.text(
                  mainAxisSize: MainAxisSize.min,
                  text: "© 2026 Chapa 52 e 101 - Todos os direitos reservados",
                  style: context.text.bodyMedium?.copyWith(
                    color: context.color.surface.withOpacity(0.25),
                    fontWeight: FontWeight.w400,
                    fontSize: 11.0,
                  ),
                  textAlign: TextAlign.center,
                  color: Colors.transparent,
                  onTap: () => launchUrl(
                    Uri.parse(
                      'https://github.com/Nialixus/'
                      'flutter_landing_page/blob/main/LICENSE',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
