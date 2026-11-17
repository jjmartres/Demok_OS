/// Données des biographies de partis et des résumés candidats
/// en version Classique et en version Mode Rue (argot urbain Démok).
class PoliticalStreetData {
  // ─── BIOGRAPHIES DES PARTIS ─────────────────────────────────────────────
  static final Map<String, Map<String, String>> _partyBios = {
    'horizons': {
      'classique': "Parti de centre-droit fondé en 2021 par l'ancien Premier ministre Édouard Philippe. Membre de la majorité présidentielle, il défend le redressement des finances publiques, la décentralisation des compétences vers les maires et l'autorité républicaine.",
      'rue': "La team d'Édouard Philippe. Un bail de centre-droit posé mais ultra rigoureux : stop au gaspillage des thunes publiques, plein pouvoir aux maires sur le terrain et tolérance zéro sur l'ordre républicain.",
    },
    'renaissance': {
      'classique': "Parti présidentiel fondé par Emmanuel Macron. Positionné au centre et pro-européen, il met en avant le plein emploi, les réformes de compétitivité économique, l'innovation technologique et le dépassement des clivages traditionnels.",
      'rue': "Le QG historique de la macronie. Les mecs se disent ni de gauche ni de droite mais à fond sur le business, l'Europe et le taf pour tous. Leur délire : continuer les réformes sans trembler.",
    },
    'les republicains': {
      'classique': "Parti historique de la droite républicaine et gaulliste. Il prône la baisse massive des impôts et de la dépense publique, la valorisation du travail face à l'assistanat, la fermeté pénale et le contrôle strict des frontières.",
      'rue': "La droite classique à l'ancienne. Leur crédo : moins de taxes, moins d'aides sociales pour pousser au taf, frontières bien verrouillées et grosse fermeté sur la sécurité dans la street.",
    },
    'rassemblement national': {
      'classique': "Parti souverainiste et nationaliste présidé par Jordan Bardella et emmené par Marine Le Pen. Ses priorités sont la priorité nationale, l'arrêt de l'immigration, le rétablissement de la sécurité et la baisse des taxes sur l'énergie.",
      'rue': "La ligne nationaliste dure. Pour eux c'est priorité aux Français sur tout (allocs, taf, logements), gros coup d'arrêt sur l'immigration et justice ultra sévère sans sursis pour les délinquants.",
    },
    'la france insoumise': {
      'classique': "Mouvement de gauche radicale fondé par Jean-Luc Mélenchon. Portant le programme 'L'Avenir en commun', il milite pour la VIe République, la bifurcation écologique, le blocage des prix et la redistribution massive des richesses.",
      'rue': "La gauche de combat de Mélenchon. Leur combat : braquer les milliardaires avec des gros impôts, bloquer les prix des courses, passer à la 6e République et faire régner la justice sociale.",
    },
    'parti socialiste': {
      'classique': "Parti historique de la social-démocratie française. Il défend les services publics (santé, école), la justice fiscale, la transition écologique solidaire et un modèle européen protecteur des travailleurs.",
      'rue': "La gauche historique républicaine. Les mecs prônent le dialogue social, la défense des hôpitaux et de l'école publique, et une écologie qui tape pas trop fort sur le pouvoir d'achat des classes moyennes.",
    },
    'les ecologistes': {
      'classique': "Parti de l'écologie politique. Il place l'urgence climatique et la protection de la biodiversité au cœur de toutes les politiques publiques, avec un modèle écoféministe, solidaire et hostile à l'énergie nucléaire.",
      'rue': "La team écolo vénère. Pour eux la planète brûle donc y a pas de débat : fin du nucléaire, adieu les bagnoles thermiques, bouffe bio dans les cantines et arrêt net des gros projets polluants.",
    },
    'parti communiste francais': {
      'classique': "Parti historique des classes laborieuses, axé sur la souveraineté industrielle, la relance du nucléaire civil, l'augmentation générale des salaires et le rôle protecteur de l'État dans l'économie.",
      'rue': "Les camarades du parti. Leur devise : le bifteck, le nucléaire français pour pas banquer l'électricité, et des vraies hausses de salaires pour ceux qui charbonnent à l'usine ou sur les chantiers.",
    },
    'lutte ouvriere': {
      'classique': "Parti trotskiste et communiste révolutionnaire. Il défend l'interdiction des licenciements, la réquisition des grandes entreprises par les salariés et la primauté des luttes ouvrières sur le système capitaliste.",
      'rue': "L'extrême-gauche 100% prolos. Zéro compromis avec les patrons : interdiction de virer les salariés, contrôle ouvrier sur les usines et guerre ouverte contre le grand capital.",
    },
    'nouveau parti anticapitaliste': {
      'classique': "Mouvement anticapitaliste et révolutionnaire. Il prône l'auto-organisation populaire, le partage du temps de travail, la retraite à 60 ans et la solidarité internationale des opprimés.",
      'rue': "Les anticapitalistes purs et durs. Pour eux ça se passe dans la rue et en manif : hausse de tous les smics, retraite à 60 piges et blocage complet du système libéral.",
    },
    'modem': {
      'classique': "Mouvement centriste et démocrate fondé par François Bayrou. Partisan du compromis républicain, de la proportionnelle aux élections et d'une intégration européenne équilibrée.",
      'rue': "Le centre posé de François Bayrou. L'idée c'est de calmer le jeu entre la gauche et la droite, négocier des compromis calmes et faire tourner la démocratie sans drama.",
    },
    'reconquete': {
      'classique': "Parti politique national-conservateur fondé par Éric Zemmour. Axé sur la défense de l'identité et de la civilisation française, il revendique l'assimilation républicaine stricte et la remigration.",
      'rue': "La droite identitaire radicale. Leurs obsessions : la civilisation en danger, l'arrêt complet de l'immigration et l'assimilation à la française au garde-à-vous.",
    },
    'debout la france': {
      'classique': "Parti souverainiste et gaulliste présidé par Nicolas Dupont-Aignan. Il plaide pour une France indépendante des traités européens, le patriotisme économique et l'autorité républicaine.",
      'rue': "Le souverainisme gaulliste. Pas d'ordres venus de Bruxelles, retour aux frontières nationales et soutien à 100% aux entreprises et ouvriers français.",
    },
    'union populaire republicaine': {
      'classique': "Mouvement souverainiste fondé par François Asselineau. Sa priorité absolue est le Frexit unilatéral (sortie de l'UE, de l'Euro et de l'OTAN) par l'application de l'article 50.",
      'rue': "La team Frexit total. Pour eux c'est carré : on quitte l'UE direct, on largue l'euro, on sort de l'OTAN et la France reprend les commandes en solo sans demander la permission.",
    },
    'place publique': {
      'classique': "Mouvement social-démocrate et pro-européen cofondé par Raphaël Glucksmann. Il prône une Europe puissance, une fiscalité environnementale juste et le soutien résolu aux démocraties mondiales.",
      'rue': "L'équipe de Glucksmann. Fédéralisme européen vénère, défense sans pitié des démocraties face aux régimes autoritaires et taxe verte sur les ultra-riches.",
    },
    'nouvelle energie': {
      'classique': "Mouvement libéral et décentralisateur fondé par David Lisnard. Il milite pour la baisse drastique des impôts, la simplification administrative et la liberté d'entreprendre.",
      'rue': "La droite libérale turbo-efficace. Objectif : faire fondre la paperasse de l'État, baisser les impôts et laisser les entrepreneurs et les maires respirer.",
    },
    'l\'apres': {
      'classique': "Mouvement issu de la gauche alternative, prônant le rassemblement des forces populaires, l'écologie radicale et le féminisme intersectionnel.",
      'rue': "La gauche de terrain unie. Leur projet : rassembler les quartiers et les assos autour du féminisme, de la lutte contre les discriminations et de l'écologie populaire.",
    },
    'la convention': {
      'classique': "Mouvement social-démocrate républicain lancé par Bernard Cazeneuve, axé sur la laïcité, l'autorité de l'État et une gauche de gouvernement réformatrice.",
      'rue': "La gauche posée et sérieuse. Pas de coups d'éclat sur TikTok, mais de la rigueur de gestion, le respect des institutions et la laïcité républicaine sans concession.",
    },
    'generation ecologie': {
      'classique': "Parti écologiste présidé par Delphine Batho. Il prône la décroissance, le respect absolu des limites planétaires et la préservation de la biodiversité.",
      'rue': "L'écologie sans filtre. Fin de la surconsommation folle, sobriété partout et respect absolu de la nature sans greenwashing marketing.",
    },
    'parti animaliste': {
      'classique': "Parti thématique dédié à la condition animale. Il milite pour la reconnaissance des droits des animaux, la fin de l'élevage intensif, de la corrida et de la chasse à courre.",
      'rue': "Les défenseurs ultimes des animaux. Le mot d'ordre : fin des souffrances animales, fermeture des abattoirs industriels et respect total pour nos bêtes.",
    },
    'les patriotes': {
      'classique': "Mouvement souverainiste fondé par Florian Philippot, militant pour le Frexit et la défense intransigeante des libertés individuelles face aux contraintes d'État.",
      'rue': "La team anti-système et Frexit. Libérer la France des traités européens et protéger à fond les libertés citoyennes contre le contrôle numérique et sanitaire.",
    },
    'resistons': {
      'classique': "Mouvement citoyen et rural fondé par Jean Lassalle. Il défend la ruralité, l'artisanat, les services publics dans les territoires oubliés et le bon sens populaire.",
      'rue': "Le mouvement de la France des campagnes et des terroirs. Défense des paysans, des petits villages délaissés et bon sens de chez nous sans baratin parisien.",
    },
    'equinoxe': {
      'classique': "Parti politique écologiste et scientifique, prônant une transition énergétique réaliste associant relance du nucléaire et développement des énergies renouvelables.",
      'rue': "Les scientifiques écolos pragmatiques. Pas d'idéologie aveugle : ils mixent nucléaire et énergies vertes pour flinguer le carbone avec des vraies datas.",
    },
    'union democratique bretonne': {
      'classique': "Parti autonomiste breton de gauche et écologiste. Il revendique une autonomie régionale poussée, la protection du logement local et la promotion de la langue bretonne.",
      'rue': "Les Bretons déterminés. Pouvoir de décision en direct en Bretagne, blocage des résidences secondaires pour loger les locaux et fierté culturelle celtique.",
    },
    'gauche republicaine et socialiste': {
      'classique': "Mouvement de gauche républicaine et laïque, attaché à la souveraineté nationale, aux services publics et à la réindustrialisation productive de la France.",
      'rue': "La gauche patriote et ouvrière. Pour eux la nation est le bouclier suprême des travailleurs face à la mondialisation sauvage.",
    },
    'les ruches': {
      'classique': "Mouvement citoyen et radical porté par Juan Branco, proposant une refondation institutionnelle et la destitution des oligarchies économiques et médiatiques.",
      'rue': "Le mouvement citoyen radical de Juan Branco. 300 propositions explosives pour renverser l'oligarchie financière et redonner tout le pouvoir direct au peuple.",
    },
    'france libre': {
      'classique': "Mouvement citoyen antisystème soutenu par Francis Lalanne, réclamant la souveraineté populaire directe, le référendum d'initiative citoyenne (RIC) et la fin des privilèges politiques.",
      'rue': "La révolte citoyenne de Francis Lalanne. Le mot d'ordre : virer les politiciens de carrière et instaurer le référendum citoyen sur toutes les décisions clés.",
    },
    'solution democratique': {
      'classique': "Mouvement axé sur la démocratie directe et l'instauration du Référendum d'Initiative Citoyenne (RIC) constituant inspiré du modèle suisse.",
      'rue': "Le modèle suisse à la française. Les citoyens écrivent et votent les lois eux-mêmes par référendum, les élus ne sont que de simples exécutants.",
    },
    'nous sommes la france': {
      'classique': "Mouvement républicain et souverainiste porté par Natacha Polony, axé sur l'indépendance géopolitique, la réindustrialisation et la transmission de la culture française.",
      'rue': "La France fière de Natacha Polony. Refuser d'être le paillasson des grandes puissances, relocaliser nos usines et retrouver la fierté de notre culture républicaine.",
    },
    'trajectoire': {
      'classique': "Mouvement citoyen axé sur l'innovation démocratique, la transition numérique responsable et l'adaptation de l'État aux défis contemporains.",
      'rue': "La team modernité et numérique. Dépoussiérer l'État avec des outils transparents et préparer la France aux grands défis de demain.",
    },
  };

  // ─── RÉSUMÉS CANDIDATS EN MODE RUE ──────────────────────────────────────
  static final Map<String, String> _candidateStreetSummaries = {
    'edouard philippe': "L'ancien boss de Matignon sous Macron. Le mec roule pour son parti Horizons. Son plan : serrer la vis sur les dépenses de l'État, mettre de l'ordre au carré et lâcher du lest aux maires dans les ter-ter.",
    'marine le pen': "La patronne du RN. Son crédo indéboulonnable : priorité nationale sur les allocs et les apparts, fermer le robinet de l'immigration et justice intraitable pour ceux qui foutent le zbeul.",
    'jean-luc melenchon': "Le daron des Insoumis. Toujours aussi chaud : SMIC à 1600 balles net, retraite à 60 ans, blocage des prix des courses et dissolution de la 5e République pour faire place au peuple.",
    'gabriel attal': "L'ancien plus jeune Premier ministre de l'histoire. Pur produit de la macronie : travail pour tous, école exigeante avec uniforme, et continuité des réformes économiques.",
    'laurent wauquiez': "Le cador de la droite républicaine en Auvergne-Rhône-Alpes. Une droite dure assumée : guerre à l'assistanat, baisse massive des impôts et autorité à l'ancienne à l'école.",
    'bruno retailleau': "Le ministre de l'Intérieur qui rigole pas. Ligne sécuritaire et régalienne intégrale : expulsions des clandestins, fermeté totale contre les délinquants et rigueur budgétaire.",
    'francois ruffin': "Le porte-voix des smicards et des ouvriers. Sa mission : relocaliser le boulot en France, plafonner les salaires indécents des grands patrons et faire payer les profiteurs de crise.",
    'fabien roussel': "Le boss du PCF. Son délire : du pouvoir d'achat cash dans la poche, du nucléaire français pour pas banquer l'électricité et barbecue républicain pour tout le monde.",
    'marine tondelier': "La cheffe des Verts avec sa veste légendaire. Priorité zéro compromis sur la planète : justice sociale, fin du gâchis des ressources et fiscalité lourde sur les pollueurs.",
    'david lisnard': "Le maire de Cannes et boss des maires de France. Sa came : dégager la bureaucratie qui étouffe le pays, baisser les impôts et laisser les maires gérer le terrain.",
    'karim bouamrane': "Le maire de Saint-Ouen qui a fait le buzz pendant les JO. Une gauche républicaine décomplexée qui allie sécurité dans les quartiers, éducation d'excellence et business.",
    'olivier faure': "Le premier secrétaire du PS. L'artisan de l'union des gauches : défendre les services publics, revaloriser le travail et mener la transition écologique sans écraser les plus modestes.",
    'eric zemmour': "L'essayiste passé chef de Reconquête. Sa fixation : stopper le grand déclin, renvoyer les clandestins et rétablir l'assimilation à la française sans état d'âme.",
    'francois asselineau': "Le boss de l'UPR et du Frexit. Il a qu'une seule obsession depuis 15 ans : claquer la porte de l'UE et de l'OTAN pour que la France redevienne totalement libre.",
    'teddy riner': "Le monstre sacré du judo français, quintuple champion olympique. Zéro parti, ni de gauche ni de droite : il veut apporter sa gagne, la discipline olympique et l'énergie du sport au pays.",
    'francis lalanne': "Le chanteur qui se lance dans l'arène. Révolte citoyenne totale : virer le système des partis, faire voter les lois par le peuple et redonner la liberté aux Français.",
    'juan branco': "L'avocat insurgé des Ruches. Un programme ultra radical : mettre à terre l'oligarchie financière, confisquer les richesses indécentes et réinventer le pouvoir par le bas.",
    'natacha polony': "La journaliste et essayiste souverainiste. Sa vision : réveiller la nation, relocaliser la prod en France et défendre l'école républicaine face au nivellement par le bas.",
    'nicolas dupont-aignan': "Le député de l'Essonne fidèle à son poste. Un gaullisme populaire : patriotisme économique, contrôle des frontières et refus des diktats de la Commission européenne.",
    'dominique de villepin': "L'ancien Premier ministre du discours de l'ONU contre la guerre en Irak. Diplomatie indépendante, stature gaulliste et refus absolu de suivre les blocs américains ou russes.",
    'nathalie arthaud': "La voix inébranlable de Lutte Ouvrière. Son message : les urnes ça règle rien, les travailleurs doivent bloquer l'économie pour empêcher les licenciements et renverser les actionnaires.",
    'florian philippot': "Le président des Patriotes. Toujours en première ligne contre Bruxelles, les pass sanitaires et l'eurocratie : Frexit direct et souveraineté populaire intégrale.",
    'delphine batho': "L'apôtre de la décroissance intégrale. Pas de bla-bla écolo-libéral : couper la surproduction, protéger les nappes d'eau et respecter la Terre mère.",
    'clementine autain': "Figure de la gauche féministe et populaire. Elle milite pour fédérer les quartiers et la gauche de rupture autour d'un grand projet écosocialiste et solidaire.",
    'francois bayrou': "Le sage de Pau et pilier du centre. Toujours là pour négocier, arrondir les angles, pousser la proportionnelle et défendre la rigueur financière des comptes publics.",
    'raphael glucksmann': "L'eurodéputé qui a réveillé la social-démocratie. Fédéralisme européen décomplexé, fermeté totale contre Poutine et fiscalité écolo sur les grandes fortunes.",
    'segolene royal': "La candidate historique de 2007. Une approche participative et sans complexe : sécurité citoyenne, écologie pragmatique et ordre républicain juste.",
    'xavier bertrand': "Le président des Hauts-de-France. Une droite sociale enracinée dans le Nord : sécurité de proximité, valorisation de la valeur travail et rassemblement populaire.",
    'bernard cazeneuve': "L'ancien ministre de l'Intérieur des attentats et ex-Premier ministre. L'incarnation du sérieux républicain, du sang-froid de l'État et de la laïcité.",
    'philippe poutou': "L'ouvrier de Ford qui claque des punchlines mémorables aux débats. Candidat anticapitaliste pour porter la rage des usines et des ateliers sans costume-cravate.",
    'jean lassalle': "Le berger aspois et député mythique. Avec son accent rocailleux et son franc-parler, il défend les oubliés de la ruralité et le terroir contre les technocrates.",
    'antoine mikolajczak': "Candidat du parti Équinoxe. Un ingénieur qui veut dépolitiser le débat énergétique pour combiner nucléaire et renouvelables de façon scientifique et carrée.",
    'clara egger': "Professeure de sciences politiques portant le RIC constituant. Son but : rendre aux citoyens le pouvoir d'écrire et de révoquer eux-mêmes la Constitution.",
    'emmanuel maurel': "Eurodéputé de la gauche républicaine. Il défend une gauche industrielle et patriotique qui refuse les traités de libre-échange mondialisés.",
    'lydie massard': "Militante bretonne de l'UDB. Son combat : décentraliser le pouvoir loin de Paris, préserver la langue bretonne et loger les locaux en priorité.",
    'sylvain durif': "Candidat hors-système sans étiquette devenu viral sur internet. Il prône un projet citoyen cosmique et décalé en dehors des appareils politiques.",
    'olivier becht': "Ancien ministre du Commerce extérieur, il porte un 'Projet France' pragmatique et centré sur l'indépendance économique et le soutien à nos entreprises.",
    'philippe brun': "Le jeune député socialiste de l'Eure. Figure montante d'une gauche productive, il s'est fait connaître en défendant pied à pied les usines menacées de son territoire.",
    'jerome guedj': "Député socialiste spécialiste du grand âge et des comptes sociaux. Républicain intraitable, il allie justice sociale et laïcité intransigeante.",
    'mira markovic': "Représentante du Parti animaliste. Son programme est limpide : inscrire la protection animale dans le marbre de la loi et fermer les élevages концентраtionnaires.",
  };

  // ─── HELPERS ────────────────────────────────────────────────────────────
  static String normalize(String input) {
    return input
        .toLowerCase()
        .replaceAll('é', 'e')
        .replaceAll('è', 'e')
        .replaceAll('ê', 'e')
        .replaceAll('ë', 'e')
        .replaceAll('à', 'a')
        .replaceAll('ô', 'o')
        .replaceAll('î', 'i')
        .replaceAll('ï', 'i')
        .replaceAll('ç', 'c')
        .replaceAll("'", " ")
        .replaceAll('-', ' ')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();
  }

  /// Retourne le résumé Mode Rue d'un candidat
  static String getCandidateStreetSummary(String candidateName, {String? defaultDescription}) {
    final norm = normalize(candidateName);
    
    for (final entry in _candidateStreetSummaries.entries) {
      if (norm.contains(normalize(entry.key)) || normalize(entry.key).contains(norm)) {
        return entry.value;
      }
    }

    if (defaultDescription != null && defaultDescription.isNotEmpty) {
      return "En deux mots sur ce profil : $defaultDescription";
    }

    return "Candidat(e) engagé(e) pour 2027. Son bail : défendre son projet et porter sa vision politique devant les Français.";
  }

  /// Retourne la biographie d'un parti (Classique ou Mode Rue)
  static String? getPartyBio(String partyName, {bool streetMode = false}) {
    final norm = normalize(partyName);

    for (final entry in _partyBios.entries) {
      final keyNorm = normalize(entry.key);
      if (norm.contains(keyNorm) || keyNorm.contains(norm)) {
        return streetMode ? entry.value['rue'] : entry.value['classique'];
      }
    }

    // Fallback pour indépendants / sans étiquette
    if (norm.contains('sans etiquette') || norm.contains('independant') || norm.contains('divers')) {
      if (streetMode) {
        return "Candidature en solo sans parti officiel ! Pas d'étiquette imposée, pas d'appareil politique : un engagement direct qui roule pour la société civile.";
      } else {
        return "Candidature citoyenne indépendante, en dehors des appareils partisans traditionnels, axée sur la liberté de proposition.";
      }
    }

    return null;
  }
}
