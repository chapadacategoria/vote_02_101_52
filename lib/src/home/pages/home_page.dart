part of '../home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Background.parallax(
        child: RawKeyboardListener(
          autofocus: true,
          focusNode: Env.controller.node,
          onKey: Env.controller.onKey,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: NavigationHeader(),
            drawer: NavigationDrawer.of(context),
            body: InteractiveScrollViewer(
              scrollToId: Env.controller.instance,
              scrollDirection: Axis.vertical,
              children: [
                ...Env.navigations.to(HomePage.scrollContent),
                ScrollContent(
                  id: 'footer',
                  child: const NavigationFooter(),
                )
              ],
            ),
            floatingActionButton: HomePage.floatingButton(),
          ),
        ),
      ),
    );
  }

  static Widget floatingButton() {
    return ValueListenableBuilder(
      valueListenable: Env.controller,
      builder: (_, value, child) {
        return TweenAnimationBuilder(
          tween: Tween(end: value == Env.navigations.last.id ? 0.0 : 1.0),
          duration: Constants.duration,
          builder: (_, value, child) {
            return Transform.translate(
              offset: Offset(0.0, value * kToolbarHeight * 2.0),
              child: child,
            );
          },
          child: child,
        );
      },
      child: Builder(
        builder: (context) {
          return Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              /*
              DButton(
                onTap: () => launchUrl(Uri.parse('https://github.com'
                    '/Nialixus'
                    '/flutter_landing_page')),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: kToolbarHeight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'View the source code in',
                        style: context.text.bodyMedium?.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      const DImage(
                        source: 'https://assets.stickpng.com'
                            '/images'
                            '/629b7adc7c5cd817694c3231.png',
                        size: Size(80.0, 30.0),
                      ),
                    ],
                  ),
                ),
              ),
              */
              const Spacer(),
              FloatingActionButton(
                shape: const CircleBorder(),
                onPressed: () => Env.controller.onTap(
                  context,
                  id: Env.navigations.first.id,
                ),
                child: Seo.link(
                  anchor: 'Go back to top',
                  href: '/?section=${Env.navigations.first.id}',
                  child: const Icon(
                    Icons.arrow_upward_rounded,
                    semanticLabel: 'Go back to top',
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  static ScrollContent scrollContent(
    int index,
    NavigationModel item,
  ) {
    return ScrollContent(
        id: item.id,
        child: [
          // HomeStarter Section: Introduction
          HomeStarter(
            id: item.id,
            title: "A Chapa da categoria Vote 52 Vote 101",
            subtitle:
                "Somos técnicos atuantes há décadas e com muita luta\nconseguimos a criação do CRT-07(PA/AP)\n garantindo autonomia para nossa região.\nVOTE 5️⃣2️⃣💪🏽VOTE 1️⃣0️⃣1️⃣💪🏽",
          ),

          // HomeFeatures Section: Key Features
          HomeFeatures(
            id: item.id,
            title: 'Os Candidatos',
            subtitle:
                'Conheça os candidatos que estão concorrendo a diretoria executiva CRT-07 e o conselheiro federal pelo Pará.',
            cards: const [
              CardModel(
                source: 'assets/image/ana-paula-fonseca.png',
                title: "Presidente: Ana Paula Fonseca",
                subtitle: 'Técnica em Telecomunicações pelo IFPA com mais de 25 anos de experiência nos setores público e privado. Como agente de fiscalização concursada, defende uma fiscalização orientadora em vez de punitiva.',
              ),
              CardModel(
                source: 'assets/image/jefferson_oliveira.png', // ← Foto do Jefferson
                title: 'Vice-Presidente: Jefferson Oliveira',
                subtitle: 'Técnico em Eletrônica e especialista em energia solar. Com experiência na Embratel e ETEMB, defende a qualificação e o registro profissional para valorização e segurança da categoria.',
              ),
              CardModel(
                source: 'assets/image/francisco_silva_santos.png', // ← Foto do Francisco
                title: 'Diretor Administrativo: Francisco Silva Santos',
                subtitle: 'Técnico em Edificações (IFPA/1975), participou de obras como Mangueirão e Marco Zero. Atua na defesa do reconhecimento dos técnicos industriais no Norte.',
              ),
              CardModel(
                source: 'assets/image/arivaldo_lieuthier.png', // ← Foto do Arivaldo
                title: 'Diretor Financeiro: Arivaldo Lieuthier',
                subtitle: 'Técnico em Telecomunicações desde 1978. Paraense, articulou a separação da Região Norte e lutou contra a privatização da Telebrás, defendendo o fortalecimento da categoria há décadas.',
              ),
              CardModel(
                source: 'assets/image/jose_maria_melo.png', // ← Foto do José Maria
                title: 'Diretor de Fiscalização e normas: José Maria Melo',
                subtitle: 'Técnico com 34 anos de experiência em eletrônica e telecomunicações (Amazônia/Chile). Agente do CRT-02, foca em fiscalização orientadora e valorização da categoria.',
              ),
              CardModel(
                source: 'assets/image/abelardo_lopes_de_sousa.png', // ← Foto do Abelardo
                title: 'Conselheiro Federal: Abelardo Lopes De Sousa',
                subtitle: 'Arquiteto do desmembramento da Região Norte e criação do CRT-07. Defende a valorização dos técnicos industriais e a autonomia do conselho para melhor atender a categoria.',
              ),
            ],
          ),

          // HomePricing Section: Pricing Plans
          HomePricing(
            id: item.id,
            title: 'Queremos te escutar',
            subtitle:
                'Sua proposta virou nosso compromisso, aponte o rumo e desenhe a solução.',
            plans: const [
              // HomePricingModel items representing pricing plans
              HomePricingModel(
                title: 'Digite sua proposta',
                price: 0,
                benefits:
                    "Contamos com a sua voz. Ela é o PRUMO da nossa gestão..\nVocê é o motor da nossa candidatura.\nJuntos, vamos escrever o próximo capítulo da nossa categoria..",
                type: HomePricingType.forever,
              ),
              HomePricingModel(
                title: 'Visite nosso instagram',
                price: 15,
                benefits:
                    "Conheça nossa equipe.\nVeja nossa história.\nSinta a nossa paixão pela categoria.",
                type: HomePricingType.month,
              ),
            ],
          ),

          // HomeFAQ Section: Frequently Asked Questions
          HomeFAQ(
            id: item.id,
            title: ' PROPOSTAS QUE JÁ ESTÃO NO PLANO. FEITAS POR QUEM VIVE A PROFISSÃO.',
            subtitle: 'Juntos, vamos escrever o próximo capítulo da nossa categoria.',
            cards: const [
              // CardModel items representing frequently asked questions
              CardModel(
                source: 'assets/image/icon_inactive_faq.svg',
                title: "Proposta 1: Redução de Taxas e Impostos",
                subtitle:
                    'Parceria com governo federal/estado/municípios para diminuir taxas ou impostos de empresas registradas no Conselho.',
              ),
              CardModel(
                source: 'assets/image/icon_inactive_features.svg',
                title: 'Proposta 2: Valorização Profissional',
                subtitle:
                    'Plataforma digital oficial do CRT para profissionais registrados, aonde esses poderão criar perfis e oferecer serviços, conectando diretamente o cliente e o técnico e combatendo profissionais irregulares/sem registro e assim valorizando o profissional regular.',
              ),
              CardModel(
                source: 'assets/image/icon_inactive_pricing.svg',
                title: 'Proposta 3: Agilidade e Rapidez.',
                subtitle:
                    'Mais agilidade e rapidez nas emissões dos TRTs.',
              ),
              CardModel(
                source: 'assets/image/icon_inactive_faq.svg',
                title: 'Proposta 4: Convênios e Benefícios',
                subtitle:
                    'Benefícios para os técnicos como: convênio, assistência médicas para fazer jus a anuidade..',
              ),   
            ],
          ),
        ][index]);
  }
}
