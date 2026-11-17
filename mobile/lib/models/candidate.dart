import '../config/env.dart';

class Candidate {
  final String id;
  final String name;
  final String party;
  final String? photoUrl;
  final String? partyLogoUrl;
  final String? description;
  final String? programUrl;

  Candidate({
    required this.id,
    required this.name,
    required this.party,
    this.photoUrl,
    this.partyLogoUrl,
    this.description,
    this.programUrl,
  });

  factory Candidate.fromJson(Map<String, dynamic> json) {
    return Candidate(
      id: json['id'],
      name: json['name'],
      party: json['party'],
      photoUrl: json['photoUrl'],
      partyLogoUrl: json['partyLogoUrl'],
      description: json['description'],
      programUrl: json['programUrl'],
    );
  }

  bool get isNetworkLogo => partyLogoUrl != null && (partyLogoUrl!.startsWith('http') || partyLogoUrl!.startsWith('/api'));

  String? get logoPath {
    if (isNetworkLogo) {
      if (partyLogoUrl!.startsWith('/api')) {
        final base = Env.apiUrl.replaceAll(RegExp(r'/api$'), '');
        return base + partyLogoUrl!;
      }
      return partyLogoUrl;
    }

    final normalized = party
        .toLowerCase()
        .replaceAll('é', 'e')
        .replaceAll('è', 'e')
        .replaceAll('ê', 'e')
        .replaceAll('ë', 'e')
        .replaceAll('à', 'a')
        .trim();

    final Map<String, String> partyLogos = {
      "l'apres / divers gauche": 'assets/images/logos_partis/l_apres.svg',
      "l'apres": 'assets/images/logos_partis/l_apres.svg',
      "parti socialiste": 'assets/images/logos_partis/Parti_Socialiste_logo.png',
      "nouvelle energie / lr": 'assets/images/logos_partis/nouvelle_energie.svg',
      "nouvelle energie": 'assets/images/logos_partis/nouvelle_energie.svg',
      "debout !": 'assets/images/logos_partis/debout.png',
      "horizons": 'assets/images/logos_partis/horizons.svg',
      "les ecologistes": 'assets/images/logos_partis/les_ecologistes.svg',
      "les republicains": 'assets/images/logos_partis/les_republicains.svg',
      "rassemblement national": 'assets/images/logos_partis/Rassemblement_National_logo.svg',
      "la france insoumise": 'assets/images/logos_partis/La_France_Insoumise_logo.png',
      "parti communiste francais": 'assets/images/logos_partis/parti_communiste_francais.png',
      "la france humaniste": 'assets/images/logos_partis/la_france_humaniste.png',
      "lutte ouvriere": 'assets/images/logos_partis/Lutte_Ouvriere_logo.svg',
      "place publique": 'assets/images/logos_partis/Place_Publique_logo.png',
      "renaissance": 'assets/images/logos_partis/Renaissance_logo.svg',
      "debout la france": 'assets/images/logos_partis/Debout_la_France_logo.png',
      "reconquete !": 'assets/images/logos_partis/Reconquete_logo.svg',
      "reconquete": 'assets/images/logos_partis/Reconquete_logo.svg',
      "nouveau parti anticapitaliste": 'assets/images/logos_partis/Nouveau_Parti_Anticapitaliste_logo.png',
      "revolution permanente": 'assets/images/logos_partis/Revolution_Permanente_logo.svg',
      "union populaire republicaine": 'assets/images/logos_partis/Union_Populaire_Republicaine_logo.jpg',
    };

    return partyLogos[normalized];
  }

  bool get isSvgLogo => logoPath?.endsWith('.svg') ?? false;

  String? get fullPhotoUrl {
    if (photoUrl == null) return null;
    if (photoUrl!.startsWith('http')) return photoUrl;
    if (photoUrl!.startsWith('/api')) {
      final base = Env.apiUrl.replaceAll(RegExp(r'/api$'), '');
      return base + photoUrl!;
    }
    return photoUrl;
  }
}
