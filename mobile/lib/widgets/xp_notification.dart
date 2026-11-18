import 'package:flutter/material.dart';

/// Notification moderne et fluide de gain d'XP.
/// Fait glisser une capsule élégante depuis le haut de l'écran vers le bas,
/// la maintient un instant pour une lecture confortable,
/// puis la fait continuer sa descente douce en fondu (fade-out).
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
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  // Translation verticale : glissade continue et fluide du haut vers le bas
  late Animation<double> _slideAnimation;
  // Fondu : entrée progressive, maintien, disparition douce
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    );

    // Mouvement continu vers le bas :
    // 1. Arrivée (0 - 28%) : glisse depuis le hors-champ (-60px) jusqu'à sa position (16px) avec décélération douce
    // 2. Flottaison (28 - 72%) : micro-dérive douce vers le bas (16px -> 26px) pour une sensation vivante et fluide
    // 3. Sortie (72 - 100%) : continue de descendre (26px -> 48px) tout en s'effaçant
    _slideAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: -60.0, end: 16.0)
            .chain(CurveTween(curve: Curves.easeOutCubic)),
        weight: 28,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 16.0, end: 26.0)
            .chain(CurveTween(curve: Curves.linear)),
        weight: 44,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 26.0, end: 48.0)
            .chain(CurveTween(curve: Curves.easeInCubic)),
        weight: 28,
      ),
    ]).animate(_controller);

    // Opacité :
    // 1. Apparition progressive (0 - 24%) : 0.0 -> 1.0
    // 2. Maintien parfait (24 - 72%) : 1.0
    // 3. Fondu de sortie (72 - 100%) : 1.0 -> 0.0
    _opacityAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.0, end: 1.0)
            .chain(CurveTween(curve: Curves.easeOut)),
        weight: 24,
      ),
      TweenSequenceItem(
        tween: ConstantTween<double>(1.0),
        weight: 48,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.0, end: 0.0)
            .chain(CurveTween(curve: Curves.easeIn)),
        weight: 28,
      ),
    ]).animate(_controller);

    _controller.forward().then((_) {
      if (mounted) {
        widget.onComplete();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _dismissImmediately() {
    if (_controller.isAnimating) {
      _controller.stop();
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
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final slideY = _slideAnimation.value;
            final opacity = _opacityAnimation.value.clamp(0.0, 1.0);

            return Transform.translate(
              offset: Offset(0, slideY),
              child: Opacity(
                opacity: opacity,
                child: Center(
                  child: GestureDetector(
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
                            blurRadius: 18,
                            spreadRadius: 1,
                            offset: const Offset(0, 6),
                          ),
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.25),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Médaillon d'éclair avec dégradé doré
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

                          // Montant XP doré
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

                          // Libellé de la récompense
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

                          // Étoile discrète
                          const Icon(
                            Icons.auto_awesome_rounded,
                            color: Color(0xFFFBBF24),
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
