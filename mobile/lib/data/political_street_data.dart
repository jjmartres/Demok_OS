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

  // ─── RÉSUMÉS CANDIDATS EN MODE CLASSIQUE ────────────────────────────────
  static final Map<String, String> _candidateClassiqueSummaries = {
    'edouard philippe': "Ancien Premier ministre, il prône une droite de gouvernement modérée. Ses priorités se concentrent sur le redressement des finances publiques, la fermeté régalienne et la décentralisation des pouvoirs vers les territoires.",
    'marine le pen': "Figure historique du Rassemblement National, elle défend la priorité nationale dans l'attribution des aides et logements sociaux, le contrôle strict des frontières et le rétablissement de l'autorité régalienne.",
    'jean-luc melenchon': "Leader de La France Insoumise, il propose le passage à la 6ème République, la retraite à 60 ans, le blocage des prix des biens de première nécessité et la planification écologique.",
    'gabriel attal': "Ancien Premier ministre issu de la majorité présidentielle, il met l'accent sur la revalorisation du travail, l'autorité républicaine à l'école et la continuité des réformes économiques.",
    'laurent wauquiez': "Président de région et figure de la droite républicaine, il prône la baisse des dépenses publiques et des impôts, la valorisation du travail face à l'assistanat et la fermeté pénale.",
    'bruno retailleau': "Ministre de l'Intérieur et figure d'une droite d'ordre, il place au premier plan la maîtrise des flux migratoires, la sévérité judiciaire et la défense intransigeante de la laïcité.",
    'francois ruffin': "Député engagé auprès des classes populaires et des salariés, il milite pour la réindustrialisation, le plafonnement des hauts salaires et la taxation des superprofits.",
    'fabien roussel': "Secrétaire national du Parti Communiste Français, il défend le pouvoir d'achat des travailleurs, la relance du nucléaire français et la réappropriation publique des secteurs stratégiques.",
    'marine tondelier': "Secrétaire nationale des Écologistes, elle place l'urgence climatique et la justice sociale au cœur de son projet, prônant la sortie des énergies fossiles et une fiscalité écologique.",
    'david lisnard': "Maire de Cannes et président de l'Association des Maires de France, il défend une droite libérale axée sur la débureaucratisation, la réduction de la dépense publique et l'autonomie des maires.",
    'karim bouamrane': "Maire de Saint-Ouen, il incarne une gauche républicaine et pragmatique, combinant développement économique, sécurité de proximité et excellence éducative dans les quartiers populaires.",
    'olivier faure': "Premier secrétaire du Parti Socialiste, il plaide pour l'union des gauches autour de la défense des services publics, de la hausse des salaires et d'une transition écologique solidaire.",
    'eric zemmour': "Président de Reconquête !, il axe sa candidature sur la défense de l'identité et de la civilisation françaises, l'arrêt complet de l'immigration et l'assimilation républicaine.",
    'francois asselineau': "Président fondateur de l'UPR, il défend le Frexit unilatéral, à savoir la sortie de l'Union européenne, de l'euro et de l'OTAN pour rétablir la souveraineté nationale de la France.",
    'teddy riner': "Quintuple champion olympique de judo et figure sportive nationale majeure. Hors des appareils partisans, il met en avant les valeurs de dépassement de soi, de cohésion nationale par le sport et d'excellence pour la jeunesse.",
    'francis lalanne': "Auteur-compositeur et figure contestataire portant le mouvement citoyen France Libre. Il plaide pour une rupture avec le système des partis traditionnels, la primauté du Référendum d'Initiative Citoyenne et la restauration des libertés publiques.",
    'juan branco': "Avocat, auteur et fondateur du mouvement citoyen Les Ruches. Il propose une refonte radicale des institutions de la République, la destitution des oligarchies financières et médiatiques et une démocratie participative populaire.",
    'natacha polony': "Journaliste et essayiste souverainiste, fondatrice du mouvement Nous Sommes la France. Elle défend l'indépendance géopolitique de la nation, la réindustrialisation productive et la transmission exigeante des savoirs à l'école républicaine.",
    'nicolas dupont-aignan': "Président de Debout la France et député de l'Essonne, il défend un gaullisme souverainiste, le patriotisme économique et le contrôle des frontières nationales.",
    'dominique de villepin': "Ancien Premier ministre et diplomate, il incarne une voix gaulliste indépendante sur la scène internationale, attachée au non-alignement stratégique et au respect du droit international.",
    'nathalie arthaud': "Porte-parole de Lutte Ouvrière, elle milite pour le renversement du capitalisme, l'expropriation des grands groupes et l'interdiction des licenciements pour garantir l'emploi pour tous.",
    'florian philippot': "Président des Patriotes, il milite pour la sortie de l'Union européenne (Frexit), la restauration de la souveraineté nationale et la défense des libertés fondamentales.",
    'delphine batho': "Ancienne ministre de l'Écologie et députée, elle est la théoricienne de la décroissance, prônant la réduction de la surproduction et la protection absolue des ressources naturelles.",
    'clementine autain': "Députée engagée de la gauche écosocialiste et féministe, elle milite pour un rassemblement populaire unitaire autour de la rupture écologique, de l'égalité réelle et du partage des richesses.",
    'francois bayrou': "Président du MoDem et figure historique du centre, il milite pour une vie politique apaisée, l'introduction de la proportionnelle, l'équilibre budgétaire et la valorisation de l'école.",
    'raphael glucksmann': "Député européen et cofondateur de Place Publique, il prône une social-démocratie pro-européenne ferme face aux régimes autoritaires, alliée à une transition écologique financée par les grandes fortunes.",
    'segolene royal': "Ancienne ministre et candidate présidentielle historique, elle défend une démocratie participative associant écologie pragmatique, ordre républicain juste et écoute citoyenne.",
    'xavier bertrand': "Président de la région Hauts-de-France, il porte la vision d'une droite sociale et territoriale, mettant l'accent sur la valeur travail, la sécurité du quotidien et les services de proximité.",
    'bernard cazeneuve': "Ancien Premier ministre et ministre de l'Intérieur, il incarne une gauche républicaine de gouvernement attachée à l'autorité de l'État, à la laïcité et au sérieux budgétaire.",
    'philippe poutou': "Ouvrier de l'industrie automobile et porte-parole du NPA, il porte la voix des luttes syndicales, la défense de l'emploi ouvrier et la rupture avec le système capitaliste.",
    'jean lassalle': "Ancien député et fondateur de Résistons !, il défend l'authenticité de la France rurale, la proximité avec les citoyens et la sauvegarde des terroirs et des communes.",
    'antoine mikolajczak': "Ingénieur et candidat investi par le parti écologiste et scientifique Équinoxe. Il défend une transition énergétique méthodique et rationnelle associant relance du nucléaire et essor maîtrisé des énergies renouvelables.",
    'clara egger': "Enseignante-chercheuse en sciences politiques et porte-parole du mouvement Solution Démocratique. Elle axe son engagement sur la démocratie directe et l'instauration du Référendum d'Initiative Citoyenne (RIC) constituant inspiré du modèle suisse.",
    'emmanuel maurel': "Député européen et représentant de la Gauche Républicaine et Socialiste (GRS). Il milite pour une gauche républicaine, souverainiste et laïque, axée sur la réindustrialisation productive et la défense des services publics.",
    'lydie massard': "Élue régionale et militante de l'Union Démocratique Bretonne (UDB). Elle milite pour une large décentralisation, la reconnaissance des identités régionales, la protection du foncier pour les résidents locaux et la défense de la langue bretonne.",
    'sylvain durif': "Personnalité devenue virale sur internet sous le pseudonyme du « Grand Monarque », il a annoncé sa candidature citoyenne hors-système à l'élection présidentielle, portant un message axé sur la paix universelle, la bienveillance et le rejet des partis politiques traditionnels.",
    'olivier becht': "Ancien ministre délégué au Commerce extérieur et député. Il porte le « Projet France », une démarche pragmatique et libérale centrée sur la compétitivité industrielle, l'exportation et la simplification administrative pour les entreprises.",
    'philippe brun': "Député socialiste de l'Eure et figure d'une gauche attachée au travail et à la production. Il se mobilise pour la réindustrialisation, la défense des salaires ouvriers et la sauvegarde du tissu économique dans les territoires ruraux.",
    'jerome guedj': "Député et figure socialiste spécialiste des affaires sociales, il défend le système de santé public, la prise en charge de la dépendance et une laïcité républicaine sans concession.",
    'mira markovic': "Candidate investie par le Parti Animaliste. Elle défend l'inscription de la protection et de la sensibilité animale dans la Constitution, la fin de l'élevage intensif et une transition progressive vers une alimentation végétale.",
    'anasse kazib': "Militant syndical et figure de Révolution Permanente, il défend un programme marxiste révolutionnaire, la socialisation des moyens de production et l'auto-organisation des travailleurs.",
    'benoit mathieu': "Candidat citoyen indépendant, il place au cœur de son engagement la démocratie directe, l'instauration du Référendum d'Initiative Citoyenne (RIC) et la participation citoyenne aux décisions nationales.",
    'carole delga': "Présidente de région représentant la gauche territoriale de gouvernement, elle mise sur la réindustrialisation, les services publics de proximité et une écologie concrète et concertée.",
    'elisabeth borne': "Ancienne Première ministre, elle incarne la rigueur réformatrice, le plein emploi, l'émancipation par le travail et la planification écologique globale.",
    'fabien verdier': "Maire de Châteaudun et élu local engagé pour la justice territoriale. Il défend le rééquilibrage des investissements publics en faveur des villes moyennes et des territoires périurbains face aux grandes métropoles.",
    'gilles platret': "Maire de Chalon-sur-Saône et figure de la droite républicaine locale. Il défend une ligne ferme sur la laïcité, le rétablissement de l'autorité de l'État et le soutien aux collectivités territoriales.",
    'gerald darmanin': "Ancien ministre de l'Intérieur, il incarne une ligne régalienne populaire, axée sur la fermeté sécuritaire, la maîtrise migratoire et la valorisation du travail des classes moyennes.",
    'manolo mlekuz': "Porte-parole du mouvement citoyen Trajectoire. Il axe son projet sur l'innovation démocratique, une refonte constitutionnelle participative et l'adaptation des institutions aux transitions numérique et écologique.",
    'sarah knafo': "Députée européenne et cadre de Reconquête !, elle porte une ligne identitaire et libérale, prônant la défense de la civilisation européenne, la dérégulation économique et l'arrêt de l'immigration.",
    'sebastien lecornu': "Ministre des Armées issu de la droite, il met en avant le réarmement stratégique de la France, la cohésion nationale et l'ancrage régalien dans les territoires.",
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
    'mira markovic': "Représentante du Parti animaliste. Son programme est limpide : inscrire la protection animale dans le marbre de la loi et fermer les élevages concentrationnaires.",
    'anasse kazib': "Militant syndical cheminot et révolutionnaire. Son projet : les travailleurs doivent reprendre le contrôle des usines et des richesses, zéro négociation avec les patrons.",
    'benoit mathieu': "Candidat citoyen qui prône la démocratie directe : redonner les clés du pouvoir aux Français grâce au référendum citoyen sans intermédiaires.",
    'carole delga': "Présidente de la région Occitanie. Une gauche de terrain qui défend les trains du quotidien, le travail dans les territoires et une écologie du bon sens sans dogmatisme.",
    'elisabeth borne': "L'ancienne Première ministre du 49.3. Profil technique et réformateur : plein emploi, gestion carrée des dossiers et transition écologique planifiée par l'État.",
    'fabien verdier': "Maire de Châteaudun. Son obsession : arrêter de tout donner aux grandes métropoles et remettre du budget dans les villes moyennes et la province oubliée.",
    'gilles platret': "Maire de Chalon-sur-Saône. Une droite républicaine à l'ancienne : laïcité intransigeante, autorité stricte dans les rues et défense de nos traditions.",
    'gerald darmanin': "L'ancien premier flic de France. Ligne sécuritaire populaire : fermeté totale contre la délinquance, contrôle strict de l'immigration et valorisation des classes moyennes qui bossent.",
    'manolo mlekuz': "Le candidat du mouvement Trajectoire. Il veut réécrire les règles du jeu républicain : nouvelle Constitution citoyenne et dépoussiérage intégral de la politique.",
    'sarah knafo': "Le bras droit de Reconquête devenue eurodéputée. Ligne identitaire et libérale : fin de l'immigration, fierté française et baisse radicale des taxes sur les entreprises.",
    'sebastien lecornu': "Le ministre des Armées. Profil régalien discret mais solide : réarmer militairement la France, tenir les frontières et renforcer la discipline républicaine.",
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

  // ─── CANDIDATES FEMININES ──────────────────────────────────────────────
  static final Set<String> _femaleFullNames = {
    'marine le pen',
    'marine tondelier',
    'natacha polony',
    'nathalie arthaud',
    'delphine batho',
    'clementine autain',
    'segolene royal',
    'clara egger',
    'lydie massard',
    'mira markovic',
    'valerie pecresse',
    'sandrine rousseau',
    'sarah knafo',
    'marion marechal',
    'carole delga',
    'yael braun pivet',
    'rachida dati',
    'mathilde panot',
    'rima hassan',
    'anne hidalgo',
    'christiane taubira',
    'lucie castets',
    'helene geoffroy',
    'aurore berge',
    'prisca thevenot',
    'agnes pannier runacher',
    'amelie de montchalin',
    'elisabeth borne',
  };

  static final Set<String> _femaleFirstNames = {
    'marine', 'natacha', 'nathalie', 'delphine', 'clementine', 'segolene', 'clara',
    'lydie', 'mira', 'valerie', 'sandrine', 'sarah', 'marion', 'carole', 'yael',
    'rachida', 'mathilde', 'rima', 'anne', 'christiane', 'lucie', 'helene',
    'aurore', 'prisca', 'agnes', 'amelie', 'elisabeth', 'florence', 'charlotte',
    'celine', 'julie', 'juliette', 'sophie', 'marie', 'martine', 'isabelle',
    'catherine', 'laurence', 'lea', 'chloe', 'emma', 'manon', 'eva', 'elodie',
    'virginie', 'stephanie', 'corinne', 'sylvie', 'monique', 'nicole', 'francoise',
  };

  /// Détermine si un candidat est une femme
  static bool isFemaleCandidate(String candidateName) {
    final norm = normalize(candidateName);
    for (final female in _femaleFullNames) {
      if (norm.contains(female) || female.contains(norm)) {
        return true;
      }
    }
    final parts = norm.split(' ');
    if (parts.isNotEmpty && _femaleFirstNames.contains(parts.first)) {
      return true;
    }
    return false;
  }

  /// Retourne le titre de la section profil selon le mode et le genre :
  /// "C'est qui le pélo ?" (homme) ou "C'est qui la gadji ?" (femme) en Mode Rue
  static String getCandidateProfileTitle(String candidateName, {required bool streetMode}) {
    if (!streetMode) {
      return 'Synthèse du candidat';
    }
    return isFemaleCandidate(candidateName)
        ? "C'est qui la gadji ?"
        : "C'est qui le pélo ?";
  }

  /// Retourne le titre de la section des promesses/mesures phares
  static String getKeyMeasuresTitle({required bool streetMode}) {
    return streetMode ? 'Le baratin pour être élu :' : 'Mesures phares du programme';
  }

  /// Retourne les mesures phares d'un candidat selon le mode (Classique ou Rue)
  static List<String> getCandidateKeyMeasures(String candidateName, {required bool streetMode}) {
    final norm = normalize(candidateName);
    for (final entry in _candidateKeyMeasures.entries) {
      if (norm.contains(normalize(entry.key)) || normalize(entry.key).contains(norm)) {
        return streetMode ? entry.value['rue']! : entry.value['classique']!;
      }
    }
    if (streetMode) {
      return [
        "Faire des promesses alléchantes pour capter l'attention des électeurs",
        "Assurer que tout va changer dès le premier jour du mandat",
        "Jurer la main sur le cœur que le programme sera financé sans hausse d'impôts",
      ];
    } else {
      return [
        "Modernisation de l'action publique et simplification administrative",
        "Défense du pouvoir d'achat et valorisation du travail",
        "Transition écologique équilibrée et souveraineté nationale",
      ];
    }
  }

  // ─── MESURES PHARES DES CANDIDATS (CLASSIQUE & MODE RUE) ─────────────────
  static final Map<String, Map<String, List<String>>> _candidateKeyMeasures = {
    'edouard philippe': {
      'classique': [
        "Report de l'âge légal de départ à la retraite à 67 ans pour rééquilibrer les comptes",
        "Réduction drastique des dépenses publiques et suppression d'échelons administratifs",
        "Grande loi de décentralisation pour donner une vraie liberté d'action aux maires",
      ],
      'rue': [
        "Te faire bosser jusqu'à 67 piges pour 'sauver la caisse' (bon courage pour tes lombaires)",
        "Couper dans les budgets publics et virer des couches de paperasse",
        "Lâcher les rênes aux maires pour qu'ils gèrent sans que Paris vienne faire la morale",
      ],
    },
    'marine le pen': {
      'classique': [
        "Instauration de la priorité nationale pour l'attribution des logements sociaux et des aides",
        "Baisse de la TVA de 20% à 5,5% sur les énergies (carburants, fioul, gaz, électricité)",
        "Expulsion systématique des délinquants et criminels de nationalité étrangère",
      ],
      'rue': [
        "Priorité absolue aux Français pour les HLM et les allocs",
        "TVA réduite à 5,5% sur le plein d'essence et le chauffage pour que tu banques moins",
        "Avion direct pour tous les étrangers qui foutent le bazar ou dealent dans la tess",
      ],
    },
    'jean-luc melenchon': {
      'classique': [
        "Revalorisation immédiate du SMIC net à 1 600 € et blocage des prix des biens de première nécessité",
        "Rétablissement de la retraite à 60 ans avec 40 annuités de cotisation",
        "Convocation d'une assemblée constituante pour fonder la 6e République citoyenne",
      ],
      'rue': [
        "Le SMIC direct à 1600 balles net et les prix des courses bloqués par décret",
        "La quille à 60 piges pour tout le monde avec 40 annuités, rideau le taff",
        "Dégager la 5e République à la poubelle et laisser le peuple écrire les nouvelles règles",
      ],
    },
    'gabriel attal': {
      'classique': [
        "Généralisation de la tenue unique à l'école et renforcement de l'autorité des professeurs",
        "Conditionnement du RSA à 15 heures d'activité ou formation par semaine",
        "Allègement des cotisations sur les salaires moyens pour débloquer les promotions",
      ],
      'rue': [
        "Uniforme obligatoire pour tous les minots à l'école et respect absolu des profs",
        "15 heures de taff obligatoire par semaine sinon ton RSA saute",
        "Moins de taxes sur les salaires intermédiaires pour arrêter de smicardiser le pays",
      ],
    },
    'laurent wauquiez': {
      'classique': [
        "Plafonnement global de l'ensemble des aides sociales nettement sous le SMIC",
        "Baisse massive des impôts sur les successions et donations familiales",
        "Peines planchers automatiques et fermes contre les récidivistes et narcotrafiquants",
      ],
      'rue': [
        "Plafonner les allocs pour que personne touche plus en restant posé qu'en allant bosser",
        "Virer les taxes sur les héritages pour garder l'argent dans la famille",
        "Prison ferme directe pour les récidivistes et les dealers, zéro négociation",
      ],
    },
    'bruno retailleau': {
      'classique': [
        "Rétablissement du délit de séjour irrégulier et suppression de l'Aide Médicale d'État (AME)",
        "Exécution systématique de courtes peines de prison dès la première agression",
        "Restauration stricte de l'autorité régalienne et de la laïcité républicaine",
      ],
      'rue': [
        "Supprimer l'AME gratuite pour les sans-papiers et expulser sans attendre",
        "La taule immédiate dès le premier faux pas, tolérance zéro pour les délinquants",
        "Remettre les flics et l'autorité au centre du jeu sans bégayer",
      ],
    },
    'francois ruffin': {
      'classique': [
        "Plafonnement strict des écarts de rémunération de 1 à 20 dans les entreprises",
        "Taxe exceptionnelle sur les superprofits et dividendes des multinationales",
        "Conditionnement écologique et social de toutes les aides publiques aux entreprises",
      ],
      'rue': [
        "Bloquer les salaires indécents des grands patrons à 20 fois le salaire le plus bas",
        "Faire cracher les multinationales qui ont gavé leurs actionnaires pendant les crises",
        "Obliger les boîtes à produire en France sous peine de leur couper les subventions",
      ],
    },
    'fabien roussel': {
      'classique': [
        "Relance massive du programme nucléaire civil avec 14 nouveaux réacteurs EPR",
        "Baisse des factures d'énergie via la sortie du marché européen de l'électricité",
        "Plan Marshall pour les services publics dans la ruralité et les banlieues",
      ],
      'rue': [
        "Du nucléaire français à fond la caisse pour plus jamais dépendre du gaz des autres",
        "Quitter le marché européen pour que la facture d'électricité redevienne abordable",
        "Réouvrir des postes, des gares et des centres de santé là où l'État a déserté",
      ],
    },
    'marine tondelier': {
      'classique': [
        "Interdiction des projets écocides, mégabassines et autoroutes inutiles",
        "ISF climatique et taxation lourde des patrimoines des plus grands pollueurs",
        "Rénovation thermique intégrale des passoires énergétiques financée par l'État",
      ],
      'rue': [
        "Interdire direct les mégabassines et les gros chantiers d'autoroute qui détruisent la nature",
        "Taper lourdement dans le portefeuille des ultra-riches qui polluent en jet privé",
        "Isolation gratuite des apparts mal chauffés pour que tu te gèles plus en hiver",
      ],
    },
    'david lisnard': {
      'classique': [
        "Plan d'économies de 60 milliards d'euros pour réduire la dette publique",
        "Suppression des doublons administratifs et des agences étatiques inutiles",
        "Autonomie fiscale et liberté de gestion renforcée pour les communes",
      ],
      'rue': [
        "Couper 60 milliards dans les dépenses de l'État pour arrêter de vivre à crédit",
        "Dégager la paperasse inutile et les agences publiques qui servent à rien",
        "Laisser les maires décider sur leur territoire sans que les ministères leur dictent tout",
      ],
    },
    'karim bouamrane': {
      'classique': [
        "Sécurité du quotidien renforcée avec présence policière accrue dans les quartiers",
        "Pacte républicain pour l'excellence scolaire et le mentorat des jeunes en banlieue",
        "Attractivité économique combinant justice sociale et soutien aux entreprises",
      ],
      'rue': [
        "Sécurité sans trembler dans les quartiers et flics visibles sur le terrain",
        "Mettre le paquet sur les écoles des banlieues pour que les jeunes visent les sommets",
        "Attirer le business et l'emploi dans les ter-ter sans renier la solidarité",
      ],
    },
    'olivier faure': {
      'classique': [
        "Augmentation coordonnée des salaires et conditionnement des aides aux entreprises",
        "Reconstruction de l'hôpital public avec revalorisation substantielle des soignants",
        "Rétablissement d'un impôt de solidarité sur la fortune (ISF) national et européen",
      ],
      'rue': [
        "Forcer les patrons à augmenter les salaires s'ils veulent toucher des aides de l'État",
        "Sauver l'hôpital public en payant décemment les infirmières et soignants",
        "Remettre l'ISF pour faire participer les grosses fortunes à l'effort collectif",
      ],
    },
    'eric zemmour': {
      'classique': [
        "Arrêt total de l'immigration et suppression du droit du sol et du regroupement familial",
        "Démantèlement des zones de non-droit et expulsion des criminels étrangers",
        "Suppression intégrale des droits de succession jusqu'à 200 000 euros par enfant",
      ],
      'rue': [
        "Zéro visa, zéro clandestin et fin du droit du sol direct",
        "Nettoyage intégral des cités et expulsion immédiate de tous les délinquants sans papiers",
        "Zéro taxe d'héritage jusqu'à 200 000 balles pour transmettre aux enfants",
      ],
    },
    'francois asselineau': {
      'classique': [
        "Activation immédiate de l'article 50 du TUE pour la sortie de l'Union européenne (Frexit)",
        "Sortie du commandement intégré de l'OTAN pour recouvrer l'indépendance militaire",
        "Rétablissement de la Banque de France et d'une monnaie nationale souveraine",
      ],
      'rue': [
        "Claquer la porte de l'UE (Frexit) sans demander la permission à Bruxelles",
        "Dégager de l'OTAN pour éviter d'être entraîné dans les guerres des Américains",
        "Reprendre le contrôle de notre monnaie et de notre banque centrale",
      ],
    },
    'teddy riner': {
      'classique': [
        "Généralisation d'une heure de sport quotidienne obligatoire dans tous les cycles scolaires",
        "Plan national de prévention santé et lutte contre la sédentarité chez les jeunes",
        "Rassemblement citoyen transpartisan au-delà des querelles politiciennes",
      ],
      'rue': [
        "Une heure de sport par jour pour tous les gosses, interdiction de rester avachi",
        "La santé par le mouvement pour éviter de saturer les hôpitaux",
        "Envoyer valser les embrouilles gauche-droite et jouer collectif comme aux JO",
      ],
    },
    'francis lalanne': {
      'classique': [
        "Instauration du Référendum d'Initiative Citoyenne (RIC) constituant en toutes matières",
        "Révocation possible de tous les élus en cours de mandat par vote populaire",
        "Refus des traités supranationaux et souveraineté absolue du peuple français",
      ],
      'rue': [
        "Le RIC pour que le peuple vote lui-même toutes les lois importantes",
        "Pouvoir virer un président ou un député en plein mandat s'il trahit ses promesses",
        "Envoyer balader les technocrates mondiaux et redonner tout le pouvoir direct aux gens",
      ],
    },
    'juan branco': {
      'classique': [
        "Destitution des élites économiques et saisie des capitaux oligarchiques",
        "Abolition des privilèges parlementaires et rémunération des élus au SMIC",
        "Réécriture citoyenne complète de la constitution par tirage au sort",
      ],
      'rue': [
        "Confisquer les pactoles des milliardaires qui contrôlent les médias et l'État",
        "Payer les députés et ministres au SMIC pour qu'ils sachent enfin ce que c'est que galérer",
        "Tirer les représentants du peuple au sort et renverser l'oligarchie",
      ],
    },
    'natacha polony': {
      'classique': [
        "Grand plan de réindustrialisation souveraine sous contrôle stratégique de l'État",
        "Refondation de l'école républicaine avec retour à la transmission des savoirs fondamentaux",
        "Diplomatie d'équilibre rejetant l'alignement atlantiste ou sino-russe",
      ],
      'rue': [
        "Rouvrir nos usines et fabriquer nos bails en France au lieu de tout importer d'Asie",
        "Arrêter de brader le niveau scolaire : dictée, calcul et exigence pour tous les élèves",
        "Faire respecter la voix de la France dans le monde sans faire le caniche des USA",
      ],
    },
    'nicolas dupont-aignan': {
      'classique': [
        "Rétablissement des frontières nationales et sortie des accords de Schengen",
        "Baisse de 50 milliards des impôts sur les classes moyennes et PME",
        "Priorité d'attribution de la commande publique aux entreprises françaises",
      ],
      'rue': [
        "Fermer les frontières et contrôler tout le monde à l'entrée comme au bon vieux temps",
        "Alléger les taxes sur les smicards et les petits artisans qui triment",
        "Obliger les mairies et l'État à acheter français plutôt que chinois",
      ],
    },
    'dominique de villepin': {
      'classique': [
        "Retour à une diplomatie gaulliste indépendante, passerelle entre le Nord et le Sud",
        "Pacte républicain pour l'égalité des chances et la cohésion nationale",
        "Plan de réarmement de l'autorité publique et soutien aux corps intermédiaires",
      ],
      'rue': [
        "Faire entendre la voix indépendante de la France dans le monde sans suivre aveuglément les blocs",
        "Remettre de la justice sociale et calmer les tensions entre les communautés",
        "Restaurer le prestige de l'État et l'autorité républicaine sans brutalité",
      ],
    },
    'nathalie arthaud': {
      'classique': [
        "Interdiction totale des licenciements collectifs pour les entreprises bénéficiaires",
        "Indexation automatique des salaires et pensions sur l'inflation réelle",
        "Ouverture des livres de comptes des entreprises sous contrôle des travailleurs",
      ],
      'rue': [
        "Interdire direct aux patrons de licencier dès qu'ils font du bénéfice",
        "Augmenter les salaires automatiquement dès que les prix augmentent au supermarché",
        "Mettre le nez des ouvriers dans les comptes secrets des boîtes pour voir où part la thune",
      ],
    },
    'florian philippot': {
      'classique': [
        "Sortie unilatérale de l'Union européenne et de la monnaie unique (Frexit)",
        "Interdiction définitive de toute mesure d'exception sanitaire ou de pass numérique",
        "Sortie de la France des accords de l'OMS et de l'OTAN",
      ],
      'rue': [
        "Frexit direct et retour au franc pour ne plus recevoir d'ordres de Bruxelles",
        "Interdire à tout jamais les pass sanitaires, confinements et contrôles numériques",
        "Quitter l'OMS et l'OTAN pour retrouver une souveraineté totale",
      ],
    },
    'delphine batho': {
      'classique': [
        "Adoption d'un plan de décroissance concertée pour préserver les ressources vitales",
        "Moratoire immédiat sur l'artificialisation des sols et sanctuarisation de l'eau potable",
        "Interdiction de la publicité pour les produits climaticides et surconsommateurs",
      ],
      'rue': [
        "Planifier la décroissance : produire moins de trucs inutiles pour sauver ce qu'il reste de la planète",
        "Arrêter de bétonner les terres agricoles et protéger l'eau potable comme de l'or",
        "Interdire la pub qui te pousse à acheter des bails polluants dont t'as pas besoin",
      ],
    },
    'clementine autain': {
      'classique': [
        "Planification écologique d'urgence et droit au logement garanti et opposable",
        "Grand ministère des Droits des femmes doté d'un budget d'un milliard d'euros",
        "Gratuité des transports en commun du quotidien et des cantines scolaires",
      ],
      'rue': [
        "Droit au logement pour tous et réquisition des apparts vides des spéculateurs",
        "Un milliard direct pour protéger les femmes contre les violences et l'injustice",
        "Transports et cantines scolaires 100% gratuits pour soulager les familles",
      ],
    },
    'francois bayrou': {
      'classique': [
        "Instauration de la représentation proportionnelle aux élections législatives",
        "Règle d'or budgétaire constitutionnelle pour stopper l'emballement de la dette",
        "Pacte pour la jeunesse avec investissement prioritaire dans l'enseignement supérieur",
      ],
      'rue': [
        "Mettre la proportionnelle pour que tous les partis aient des députés à l'Assemblée",
        "Bloquer la dette publique dans la Constitution pour arrêter de creuser le trou",
        "Mettre les moyens sur la fac et la formation des jeunes pour leur assurer un vrai avenir",
      ],
    },
    'raphael glucksmann': {
      'classique': [
        "Renforcement de l'Europe de la défense et soutien inconditionnel aux démocraties menacées",
        "Taxation européenne des superprofits et des patrimoines des ultra-riches",
        "Protectionnisme écologique aux frontières de l'Europe face au dumping chinois",
      ],
      'rue': [
        "Créer une vraie armée européenne pour tenir tête aux dictateurs sans trembler",
        "Taxer les multinationales et les milliardaires à l'échelle de toute l'Europe",
        "Taxer lourdement les produits chinois qui ne respectent pas l'environnement",
      ],
    },
    'segolene royal': {
      'classique': [
        "Démocratie participative locale avec jurys citoyens tirés au sort",
        "Ordre républicain juste avec encadrement militaire des jeunes délinquants",
        "Mix énergétique équilibré conciliant relance du renouvelable et maîtrise du nucléaire",
      ],
      'rue': [
        "Faire voter les citoyens directement via des jurys de quartier pour les décisions locales",
        "Encadrement militaire strict pour recadrer les jeunes qui partent en vrille",
        "Du solaire et de l'éolien partout sans cramer tout le budget dans l'électricité",
      ],
    },
    'xavier bertrand': {
      'classique': [
        "Prime au travail avec écart minimal garanti de 500 € entre revenus d'activité et allocations",
        "Défiscalisation intégrale de toutes les heures supplémentaires",
        "Rétablissement de la double peine et peines automatiques pour les agresseurs de policiers",
      ],
      'rue': [
        "500 balles d'écart minimum garanti entre celui qui bosse et celui qui touche les aides",
        "Zéro impôt sur les heures sup : tout ce que tu fais en plus va net dans ta poche",
        "Peine maximale automatique pour quiconque touche à un flic ou un pompier",
      ],
    },
    'bernard cazeneuve': {
      'classique': [
        "Réarmement budgétaire et matériel de la police, de la gendarmerie et de la justice",
        "Pacte laïque intransigeant et lutte résolue contre tous les séparatismes",
        "Stabilité institutionnelle et dialogue social réhabilité avec les syndicats",
      ],
      'rue': [
        "Mettre des moyens massifs pour la police et la justice pour rétablir l'ordre républicain",
        "Laïcité ferme et zéro compromis avec les dérives religieuses ou séparatistes",
        "Gouverner avec sérieux et écouter les syndicats au lieu de passer en force",
      ],
    },
    'philippe poutou': {
      'classique': [
        "Semaine de travail de 32 heures sur 4 jours sans perte de salaire",
        "Interdiction des licenciements et réquisition des entreprises par les salariés",
        "Expropriation sans indemnité des banques privées et du secteur pharmaceutique",
      ],
      'rue': [
        "Semaine de 32h sur 4 jours payée 35h, le week-end commence le jeudi soir",
        "Interdire aux patrons de fermer les usines et laisser les salariés reprendre la boîte",
        "Nationaliser direct les banques et les gros labos pharmaceutiques sans leur donner un centime",
      ],
    },
    'jean lassalle': {
      'classique': [
        "Grand plan de sauvetage de la ruralité, de l'artisanat et de l'agriculture paysanne",
        "Moratoire sur la fermeture des maternités, hôpitaux de proximité et écoles rurales",
        "Restauration du lien humain et démocratie directe avec Référendum d'Initiative Citoyenne",
      ],
      'rue': [
        "Sauver nos campagnes et nos paysans qui crèvent la faim sous le poids des normes",
        "Interdiction formelle de fermer la moindre école, maternité ou poste dans les villages",
        "Le RIC pour que le peuple décide directement sans écouter les technocrates parisiens",
      ],
    },
    'antoine mikolajczak': {
      'classique': [
        "Planification scientifique de la transition énergétique combinant nucléaire et renouvelables",
        "Conditionnement de la fiscalité à l'empreinte carbone réelle des produits",
        "Gouvernance démocratique basée sur les données scientifiques et l'intérêt des générations futures",
      ],
      'rue': [
        "Combiner nucléaire et énergies vertes de façon rationnelle sans faire de politique politicienne",
        "Taxer les produits selon leur vraie pollution pour encourager la sobriété",
        "Écouter les scientifiques et les ingénieurs plutôt que les promesses électorales bidons",
      ],
    },
    'clara egger': {
      'classique': [
        "Instauration du RIC constituant et législatif à l'initiative de 100 000 citoyens",
        "Pouvoir d'abrogation citoyenne des traités internationaux non soumis à référendum",
        "Remplacement du régime présidentiel par une démocratie directe inspirée de la Suisse",
      ],
      'rue': [
        "Le RIC direct : 100 000 signatures et le peuple vote directement la loi par référendum",
        "Pouvoir annuler les mauvaises lois et les traités que les politiciens ont signés en douce",
        "Fini le président tout-puissant, place au modèle suisse où les citoyens ont le dernier mot",
      ],
    },
    'emmanuel maurel': {
      'classique': [
        "Reconstruction de la souveraineté industrielle française et fin des traités de libre-échange",
        "Nationalisation stratégique des secteurs clés : énergie, rail, autoroutes",
        "République sociale garantissant le pouvoir d'achat face à la mondialisation dérégulée",
      ],
      'rue': [
        "Dégager les traités de libre-échange qui tuent nos usines et nos emplois",
        "Renationaliser l'énergie, les trains et les autoroutes pour faire baisser les tarifs",
        "Une gauche patriote et populaire qui défend les travailleurs français sans faiblir",
      ],
    },
    'lydie massard': {
      'classique': [
        "Statut d'autonomie pour la Bretagne avec transfert de compétences législatives et fiscales",
        "Mise en place d'un statut de résident pour réguler la crise du logement sur le littoral",
        "Reconnaissance et enseignement obligatoire des langues régionales",
      ],
      'rue': [
        "L'autonomie pour la Bretagne : gérer nos lois et nos impôts directement chez nous",
        "Priorité logement aux locaux pour empêcher les résidences secondaires de tout rafler",
        "Défendre la langue et la culture bretonne dans toutes les écoles",
      ],
    },
    'sylvain durif': {
      'classique': [
        "Instauration d'une gouvernance harmonieuse et universelle axée sur la paix",
        "Dépassement des clivages partisans traditionnels pour une démocratie de la bienveillance",
        "Priorité à la préservation de la Terre et à l'élévation des consciences citoyennes",
      ],
      'rue': [
        "Envoyer valser tous les partis politiques traditionnels et instaurer la paix universelle",
        "Un projet cosmique citoyen sans les magouilles des politiciens de carrière",
        "Reconnecter les citoyens avec la nature et le bon sens populaire",
      ],
    },
    'olivier becht': {
      'classique': [
        "Plan Marshall pour l'exportation et la compétitivité internationale des entreprises françaises",
        "Allègement massif des charges patronales et des normes pesant sur l'industrie",
        "Gouvernance pragmatique et transpartisane axée sur l'efficacité économique",
      ],
      'rue': [
        "Aider nos boîtes à vendre leurs produits partout dans le monde pour ramener du cash",
        "Supprimer le trop-plein de normes et de taxes qui plombent nos usines",
        "Gérer le pays avec du bon sens économique plutôt qu'avec des idéologies",
      ],
    },
    'philippe brun': {
      'classique': [
        "Bouclier tarifaire d'urgence sur l'énergie pour les industries et les ménages",
        "Conditionnement strict des aides publiques au maintien de l'emploi en France",
        "Plan de réarmement des services publics dans les territoires périurbains et ruraux",
      ],
      'rue': [
        "Bloquer les prix de l'électricité pour que les usines ne ferment pas et sauvent leurs ouvriers",
        "Reprendre chaque centime d'aide publique aux boîtes qui délocalisent",
        "Remettre des services publics partout où les gens se sentent abandonnés",
      ],
    },
    'jerome guedj': {
      'classique': [
        "Loi d'urgence Grand Âge et création d'un service public de l'autonomie et des EHPAD",
        "Refondation du financement de la Sécurité sociale et remboursement à 100% des soins essentiels",
        "Pacte républicain intransigeant sur la laïcité et l'universalisme",
      ],
      'rue': [
        "Créer un vrai service public pour nos aînés pour en finir avec les scandales des EHPAD privés",
        "Rembourser les soins de santé à 100% pour que personne ne renonce à se soigner",
        "Laïcité ferme et égalité républicaine pour tout le monde sans passe-droit",
      ],
    },
    'mira markovic': {
      'classique': [
        "Inscription de la protection animale et de la sensibilité du vivant dans la Constitution",
        "Interdiction définitive de l'élevage intensif en cage et des abattages sans étourdissement",
        "Transition vers une alimentation végétale encouragée par la commande publique",
      ],
      'rue': [
        "Mettre la protection animale dans la Constitution pour punir sévèrement les maltraitances",
        "Fermer définitivement les élevages intensifs en cage et les abattoirs de la honte",
        "Développer les repas végétaux dans les cantines scolaires pour respecter les animaux",
      ],
    },
    'anasse kazib': {
      'classique': [
        "Augmentation générale des salaires nets à 2 000 € minimum et échelle mobile des salaires",
        "Expropriation sous contrôle ouvrier des secteurs stratégiques (énergie, transports, banques)",
        "Interdiction absolue des licenciements et partage intégral du temps de travail",
      ],
      'rue': [
        "Le salaire net direct à 2000 balles pour tout le monde sans discuter",
        "Nationaliser les banques et l'énergie et donner les clés aux travailleurs",
        "Interdiction formelle de virer des employés : zéro licenciement",
      ],
    },
    'benoit mathieu': {
      'classique': [
        "Instauration du Référendum d'Initiative Citoyenne (RIC) sous toutes ses formes",
        "Prise en compte du vote blanc avec obligation de revoter en cas de majorité",
        "Mandat impératif et révocabilité des élus par les citoyens",
      ],
      'rue': [
        "Le RIC direct pour que les citoyens décident eux-mêmes des lois",
        "Comptabiliser le vote blanc et annuler l'élection si le blanc l'emporte",
        "Pouvoir virer un élu en cours de mandat s'il ne respecte pas sa parole",
      ],
    },
    'carole delga': {
      'classique': [
        "Plan de réindustrialisation verte et de soutien massif aux PME dans les régions",
        "Gratuité et renforcement des trains du quotidien et transports publics régionaux",
        "Défense d'une République décentralisée garantissant l'accès aux soins partout",
      ],
      'rue': [
        "Remettre des usines et du boulot dans nos régions sans baratin parisien",
        "Des trains régionaux fiables et pas chers pour aller bosser sans galérer",
        "Remplir les déserts médicaux pour qu'on arrête d'attendre 6 mois chez le toubib",
      ],
    },
    'elisabeth borne': {
      'classique': [
        "Poursuite des réformes structurelles pour atteindre le plein emploi durable",
        "Planification écologique coordonnée État-entreprises-citoyens",
        "Revalorisation des carrières dans l'éducation et la petite enfance",
      ],
      'rue': [
        "Atteindre le plein emploi en poussant tout le monde vers la formation et le taff",
        "Planifier la transition écologique au millimètre avec les entreprises",
        "Remettre des sous sur les salaires des profs et les crèches",
      ],
    },
    'fabien verdier': {
      'classique': [
        "Pacte national pour les villes moyennes et rééquilibrage métropole-province",
        "Moratoire sur la fermeture des classes, gares et hôpitaux de proximité",
        "Garantie d'accès aux services publics essentiels à moins de 15 minutes",
      ],
      'rue': [
        "Arrêter de gaver Paris et les grandes villes au détriment des villes moyennes",
        "Interdiction de fermer les hôpitaux de proximité, les gares et les écoles",
        "Tous les services publics à moins de 15 minutes de chez toi",
      ],
    },
    'gilles platret': {
      'classique': [
        "Rétablissement d'une laïcité stricte dans tout l'espace public et les institutions",
        "Déploiement massif des polices municipales armées et peines courtes immédiates",
        "Reconnaissance et protection active des traditions et du patrimoine français",
      ],
      'rue': [
        "Laïcité sans aucune concession : zéro dérive religieuse dans l'espace public",
        "Policiers municipaux armés et sanction immédiate pour les incivilités",
        "Défendre nos clochers, nos traditions et notre patrimoine local",
      ],
    },
    'gerald darmanin': {
      'classique': [
        "Renforcement continu des forces de l'ordre et des moyens de la police nationale",
        "Expulsion systématique des étrangers délinquants et fermeté pénale absolue",
        "Valorisation du travail et allègement des cotisations sur les classes moyennes",
      ],
      'rue': [
        "Plus de bleus sur le terrain pour nettoyer les points de deal dans la tess",
        "Expulser direct les délinquants étrangers sans perdre de temps en paperasse",
        "Baisse de charges pour les classes moyennes qui se lèvent tôt et galèrent",
      ],
    },
    'manolo mlekuz': {
      'classique': [
        "Convocation d'une Constituante citoyenne tirée au sort pour une 6e République moderne",
        "Transformation numérique des institutions pour une transparence totale des décisions",
        "Transition écologique territoriale pilotée démocratiquement par les habitants",
      ],
      'rue': [
        "Tirer au sort des citoyens pour écrire la nouvelle Constitution de la République",
        "Transparence totale en ligne sur où part chaque euro des impôts des Français",
        "Donner le pouvoir aux habitants des quartiers et villages sur l'écologie locale",
      ],
    },
    'sarah knafo': {
      'classique': [
        "Arrêt immédiat de l'immigration et suppression de l'ensemble des aides aux clandestins",
        "Suppression des impôts de production et baisse radicale de la fiscalité des entreprises",
        "Défense inconditionnelle de la civilisation, du patrimoine et des valeurs françaises",
      ],
      'rue': [
        "Fermeture immédiate des frontières et tolérance zéro pour les clandestins",
        "Virer un max de taxes pour redonner de l'air aux entrepreneurs et commerçants",
        "Défendre l'identité et la culture française sans aucun complexe",
      ],
    },
    'sebastien lecornu': {
      'classique': [
        "Hausse continue du budget de la Défense et modernisation des armées françaises",
        "Renforcement de l'industrie militaire souveraine et de la dissuasion nucléaire",
        "Service national universel effectif pour consolider la cohésion républicaine",
      ],
      'rue': [
        "Blindage du budget militaire pour que l'armée française reste respectée dans le monde",
        "Fabriquer nos armes et nos munitions en France sans dépendre des autres pays",
        "Remettre la discipline et le sens du drapeau au cœur de la jeunesse",
      ],
    },
  };

  /// Retourne le résumé Classique d'un candidat
  static String getCandidateClassiqueSummary(String candidateName, {String? defaultDescription}) {
    final norm = normalize(candidateName);

    for (final entry in _candidateClassiqueSummaries.entries) {
      if (norm.contains(normalize(entry.key)) || normalize(entry.key).contains(norm)) {
        return entry.value;
      }
    }

    if (defaultDescription != null && defaultDescription.trim().isNotEmpty) {
      final desc = defaultDescription.trim();
      if (!desc.startsWith('Fiche de constat') && !desc.startsWith('Synthèse neutre')) {
        return desc;
      }
    }

    return "Candidat(e) engagé(e) pour l'élection présidentielle de 2027, portant des propositions pour l'avenir de la France.";
  }

  /// Retourne le résumé Mode Rue d'un candidat
  static String getCandidateStreetSummary(String candidateName, {String? defaultDescription}) {
    final norm = normalize(candidateName);

    for (final entry in _candidateStreetSummaries.entries) {
      if (norm.contains(normalize(entry.key)) || normalize(entry.key).contains(norm)) {
        return entry.value;
      }
    }

    if (defaultDescription != null && defaultDescription.trim().isNotEmpty) {
      final desc = defaultDescription.trim();
      if (!desc.startsWith('Fiche de constat') && !desc.startsWith('Synthèse neutre')) {
        return "En deux mots sur ce profil : $desc";
      }
    }

    return "Candidat(e) engagé(e) pour 2027. Son bail : défendre son projet et porter sa vision politique devant les Français.";
  }

  /// Retourne le résumé d'un candidat selon le mode sélectionné
  static String getCandidateSummary(
    String candidateName, {
    required bool streetMode,
    String? defaultDescription,
  }) {
    return streetMode
        ? getCandidateStreetSummary(candidateName, defaultDescription: defaultDescription)
        : getCandidateClassiqueSummary(candidateName, defaultDescription: defaultDescription);
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
