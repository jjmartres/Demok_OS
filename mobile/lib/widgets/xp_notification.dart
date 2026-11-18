import 'dart:math' as math;
import 'package:flutter/material.dart';

/// Notification moderne et stylée de gain d'XP.
/// Affiche une capsule flottante en haut de l'écran avec une animation rebond (spring),
/// un badge doré lumineux, une micro-explosion d'étincelles et un design dynamique.
class XpNotification extends StatefulWidget {
  final int amount;
  final String reason;
  final VoidCallback onComplete;

  const XpNotification({
    super.key,
    required this.amount,
    required this.reason,
    required this.onComplete,
  });

  @override
  State<XpNotification> createState() => _XpNotificationState();
}

class _XpNotificationState extends State<XpNotification>
    with TickerProviderStateMixin {
  late AnimationController _mainController;
  late AnimationController _sparkleController;

  // Animations principales de la capsule
  late Animation<double> _scaleAnimation;
  late Animation<double> _slideAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    // Contrôleur principal (entrée dynamique + attente + sortie fluide)
    _mainController = AnimationController(
      duration: const Duration(milliseconds: 2300),
      vsync: this,
    );

    // Contrôleur pour la micro-explosion d'étincelles à l'apparition
    _sparkleController = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );

    // Séquence d'échelle : rebond dynamique à l'entrée, stable, puis léger retrait à la sortie
    _scaleAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.35, end: 1.06)
            .chain(CurveTween(curve: Curves.easeOutBack)),
        weight: 20,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.06, end: 1.0)
            .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 10,
      ),
      TweenSequenceItem(
        tween: ConstantTween<double>(1.0),
        weight: 55,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.0, end: 0.85)
            .chain(CurveTween(curve: Curves.easeInOutCubic)),
        weight: 15,
      ),
    ]).animate(_mainController);

    // Translation verticale : glisse du haut vers sa position puis remonte discrètement à la sortie
    _slideAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: -30.0, end: 0.0)
            .chain(CurveTween(curve: Curves.easeOutQuart)),
        weight: 25,
      ),
      TweenSequenceItem(
        tween: ConstantTween<double>(0.0),
        weight: 60,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.0, end: -20.0)
            .chain(CurveTween(curve: Curves.easeInOutCubic)),
        weight: 15,
      ),
    ]).animate(_mainController);

    // Opacité : apparition rapide, maintien, disparition douce
    _opacityAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.0, end: 1.0)
            .chain(CurveTween(curve: Curves.easeIn)),
        weight: 12,
      ),
      TweenSequenceItem(
        tween: ConstantTween<double>(1.0),
        weight: 73,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.0, end: 0.0)
            .chain(CurveTween(curve: Curves.easeOutCubic)),
        weight: 15,
      ),
    ]).animate(_mainController);

    // Démarrage des animations
    _mainController.forward().then((_) {
      if (mounted) {
        widget.onComplete();
      }
    });

    _sparkleController.forward();
  }

  @override
  void dispose() {
    _mainController.dispose();
    _sparkleController.dispose();
    super.dispose();
  }

  void _dismissImmediately() {
    if (_mainController.isAnimating) {
      _mainController.stop();
      widget.onComplete();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 14),
          child: Center(
            child: AnimatedBuilder(
              animation: Listenable.merge([_mainController, _sparkleController]),
              builder: (context, _) {
                final scale = _scaleAnimation.value;
                final slideY = _slideAnimation.value;
                final opacity = _opacityAnimation.value.clamp(0.0, 1.0);
                final sparkleProgress = _sparkleController.value;

                return Opacity(
                  opacity: opacity,
                  child: Transform.translate(
                    offset: Offset(0, slideY),
                    child: Transform.scale(
                      scale: scale,
                      child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          // Particules / étincelles qui jaillissent autour du badge à l'apparition
                          if (sparkleProgress < 1.0) ..._buildSparkles(sparkleProgress),

                          // Capsule centrale moderne
                          GestureDetector(
                            onTap: _dismissImmediately,
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 20),
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Color(0xFF0F172A), Color(0xFF1E293B)],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: const Color(0xFFF59E0B).withValues(alpha: 0.65),
                                  width: 1.5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFFF59E0B).withValues(alpha: 0.35),
                                    blurRadius: 20,
                                    spreadRadius: 1,
                                    offset: const Offset(0, 6),
                                  ),
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.3),
                                    blurRadius: 12,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  // Médaillon d'icône d'éclair avec dégradé doré
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: const LinearGradient(
                                        colors: [Color(0xFFF59E0B), Color(0xFFFBBF24)],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0xFFF59E0B).withValues(alpha: 0.5),
                                          blurRadius: 8,
                                          spreadRadius: 1,
                                        ),
                                      ],
                                    ),
                                    child: const Icon(
                                      Icons.bolt_rounded,
                                      color: Colors.white,
                                      size: 19,
                                    ),
                                  ),
                                  const SizedBox(width: 10),

                                  // Montant XP doré vibrant
                                  Text(
                                    '+${widget.amount} XP',
                                    style: const TextStyle(
                                      color: Color(0xFFFBBF24),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      letterSpacing: 0.4,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),

                                  // Séparateur discret
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white.withValues(alpha: 0.35),
                                      ),
                                    ),
                                  ),

                                  // Libellé de la récompense (ex: "A voté")
                                  Text(
                                    widget.reason.isNotEmpty ? widget.reason : 'Vote citoyen',
                                    style: const TextStyle(
                                      color: Color(0xFFF8FAFC),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13.5,
                                      letterSpacing: 0.1,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  const SizedBox(width: 8),

                                  // Petite étincelle décorative
                                  const Icon(
                                    Icons.auto_awesome_rounded,
                                    color: Color(0xFFFBBF24),
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Génère 6 petites étincelles rayonnant vers l'extérieur lors du pop
  List<Widget> _buildSparkles(double progress) {
    // Les étincelles démarrent proches du centre et s'éloignent en s'estompant
    final sparkleOpacity = (1.0 - progress).clamp(0.0, 1.0);
    final distance = 25.0 + (progress * 35.0);

    const angles = [
      -math.pi / 4,
      -3 * math.pi / 4,
      math.pi / 4,
      3 * math.pi / 4,
      -math.pi / 2,
      math.pi / 2,
    ];

    const icons = [
      Icons.star_rounded,
      Icons.auto_awesome_rounded,
      Icons.star_rounded,
      Icons.auto_awesome_rounded,
      Icons.star_rounded,
      Icons.auto_awesome_rounded,
    ];

    const sizes = [14.0, 12.0, 13.0, 11.0, 12.0, 14.0];

    return List.generate(angles.length, (index) {
      final angle = angles[index];
      final dx = math.cos(angle) * distance;
      final dy = math.sin(angle) * (distance * 0.7);

      return Transform.translate(
        offset: Offset(dx, dy),
        child: Opacity(
          opacity: sparkleOpacity,
          child: Icon(
            icons[index],
            color: index.isEven ? const Color(0xFFFBBF24) : const Color(0xFFF59E0B),
            size: sizes[index],
          ),
        ),
      );
    });
  }
}
