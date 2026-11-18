import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/law.dart';
import '../services/api_client.dart';
import '../theme/app_colors.dart';

class LawDeepDiveDialog extends StatefulWidget {
  final Law law;
  final bool initialStreetMode;

  const LawDeepDiveDialog({
    super.key,
    required this.law,
    this.initialStreetMode = false,
  });

  @override
  State<LawDeepDiveDialog> createState() => _LawDeepDiveDialogState();
}

class _LawDeepDiveDialogState extends State<LawDeepDiveDialog> {
  late bool _isStreetMode;
  bool _isLoading = true;
  String? _errorMessage;
  LawDeepDive? _classiqueDeepDive;
  LawDeepDive? _streetDeepDive;

  @override
  void initState() {
    super.initState();
    _isStreetMode = widget.initialStreetMode;
    _loadDeepDive();
  }

  Future<void> _loadDeepDive() async {
    // 1. Check if already present on law object
    if (widget.law.summary?.deepDive != null && widget.law.summaryStreet?.deepDive != null) {
      setState(() {
        _classiqueDeepDive = widget.law.summary!.deepDive;
        _streetDeepDive = widget.law.summaryStreet!.deepDive;
        _isLoading = false;
      });
      return;
    }

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final response = await ApiClient.get('/votes/laws/${widget.law.id}/deep-dive');

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (mounted) {
          setState(() {
            if (data['classique'] != null) {
              _classiqueDeepDive = LawDeepDive.fromJson(data['classique']);
            }
            if (data['rue'] != null) {
              _streetDeepDive = LawDeepDive.fromJson(data['rue']);
            }
            _isLoading = false;
          });
        }
      } else {
        if (mounted) {
          setState(() {
            _errorMessage = 'Impossible de charger le décryptage (${response.statusCode})';
            _isLoading = false;
          });
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _errorMessage = 'Erreur lors du chargement : $e';
          _isLoading = false;
        });
      }
    }
  }

  LawDeepDive? get _activeDeepDive => _isStreetMode ? _streetDeepDive : _classiqueDeepDive;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isSmallScreen = mediaQuery.size.width < 500;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(
        horizontal: isSmallScreen ? 12 : 24,
        vertical: 24,
      ),
      child: Center(
        child: Container(
          width: 620,
          constraints: BoxConstraints(
            maxHeight: mediaQuery.size.height * 0.88,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: const [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 30,
                offset: Offset(0, 10),
              ),
            ],
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header avec titre et croix de fermeture
              _buildHeader(),

              // Barre de switch Classique / Mode Rue
              _buildModeToggle(),

              const Divider(height: 1, thickness: 1, color: Color(0xFFF1F5F9)),

              // Contenu principal
              Flexible(
                child: _buildBody(),
              ),

              // Footer
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    final titleText = _isStreetMode
        ? '🔥 Le décryptage complet du bail'
        : '🔍 Décryptage approfondi';

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 16, 12, 12),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: _isStreetMode
                  ? const Color(0xFFFFFBEB)
                  : const Color(0xFFEFF6FF),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: _isStreetMode
                    ? const Color(0xFFFDE68A)
                    : const Color(0xFFBFDBFE),
              ),
            ),
            child: Icon(
              _isStreetMode ? Icons.local_fire_department_rounded : Icons.auto_awesome,
              color: _isStreetMode ? const Color(0xFFD97706) : AppColors.primaryBlue,
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  titleText,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: _isStreetMode ? const Color(0xFF92400E) : AppColors.darkBlue,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  widget.law.formattedTitleFor(streetMode: _isStreetMode),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close_rounded, size: 22, color: AppColors.textSecondary),
            tooltip: 'Fermer',
            splashRadius: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildModeToggle() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      color: const Color(0xFFFAFAFA),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.cardBorderSubtle),
              boxShadow: AppColors.softShadow,
            ),
            padding: const EdgeInsets.all(3),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTogglePill(
                  title: '🏛️ Classique',
                  isActive: !_isStreetMode,
                  activeColor: AppColors.primaryBlue,
                  onTap: () => setState(() => _isStreetMode = false),
                ),
                _buildTogglePill(
                  title: '🔥 Mode Rue',
                  isActive: _isStreetMode,
                  activeColor: const Color(0xFFEA580C),
                  onTap: () => setState(() => _isStreetMode = true),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTogglePill({
    required String title,
    required bool isActive,
    required Color activeColor,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          color: isActive ? activeColor : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: isActive ? FontWeight.w700 : FontWeight.w500,
            color: isActive ? Colors.white : AppColors.textSecondary,
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 42,
                height: 42,
                child: CircularProgressIndicator(
                  strokeWidth: 3.2,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryBlue),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                _isStreetMode
                    ? 'Démok décortique le bail pour toi...'
                    : 'Analyse approfondie du texte par l\'IA...',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBlue,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Impact pratique, chiffres clés vérifiés et clivages politiques',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (_errorMessage != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline_rounded, color: Colors.orange, size: 40),
              const SizedBox(height: 12),
              Text(
                _errorMessage!,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: _loadDeepDive,
                icon: const Icon(Icons.refresh_rounded, size: 16),
                label: const Text('Réessayer'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryBlue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      );
    }

    final deepDive = _activeDeepDive;
    if (deepDive == null) {
      return const Center(
        child: Text(
          'Aucune information disponible',
          style: TextStyle(color: AppColors.textSecondary),
        ),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 1. Impact Quotidien
          _buildSectionCard(
            icon: Icons.flash_on_rounded,
            iconColor: const Color(0xFF16A34A),
            bgColor: const Color(0xFFF0FDF4),
            borderColor: const Color(0xFFBBF7D0),
            title: _isStreetMode
                ? '🎯 Dans la vraie vie, ça change quoi pour toi ?'
                : '🎯 Concrètement, qu\'est-ce qui change au quotidien ?',
            content: Text(
              deepDive.dailyImpact,
              style: const TextStyle(
                fontSize: 14,
                height: 1.5,
                color: Color(0xFF14532D),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // 2. Chiffres & Dates Clés
          _buildSectionCard(
            icon: Icons.pin_drop_rounded,
            iconColor: const Color(0xFFD97706),
            bgColor: const Color(0xFFFFFBEB),
            borderColor: const Color(0xFFFDE68A),
            title: _isStreetMode
                ? '📊 Les chiffres chauds du texte'
                : '📊 Chiffres & dates clés du texte',
            content: deepDive.keyFigures.isEmpty
                ? const Text(
                    'Aucun chiffre ou date clé explicité dans le texte.',
                    style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                      color: Color(0xFF78350F),
                    ),
                  )
                : Column(
                    children: deepDive.keyFigures.map((fig) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 2),
                              child: Icon(
                                Icons.check_circle_rounded,
                                size: 16,
                                color: Color(0xFFD97706),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                fig,
                                style: const TextStyle(
                                  fontSize: 13,
                                  height: 1.45,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF78350F),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
          ),

          const SizedBox(height: 16),

          // 3. Coulisses & Clivages Politiques
          _buildSectionCard(
            icon: Icons.balance_rounded,
            iconColor: const Color(0xFF4F46E5),
            bgColor: const Color(0xFFEEF2FF),
            borderColor: const Color(0xFFC7D2FE),
            title: _isStreetMode
                ? '⚖️ Qui valide le bail et qui a le seum ?'
                : '⚖️ Les coulisses & clivages politiques',
            content: Text(
              deepDive.politicalDebate,
              style: const TextStyle(
                fontSize: 14,
                height: 1.5,
                color: Color(0xFF1E1B4B),
              ),
            ),
          ),

          const SizedBox(height: 12),

          // Mention légale IA
          const Center(
            child: Text(
              'Généré par Mistral AI sur la base du texte législatif officiel • Démok',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 11,
                color: AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionCard({
    required IconData icon,
    required Color iconColor,
    required Color bgColor,
    required Color borderColor,
    required String title,
    required Widget content,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: borderColor, width: 1.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: _isStreetMode ? const Color(0xFF92400E) : AppColors.darkBlue,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          content,
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFF1F5F9), width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            style: TextButton.styleFrom(
              foregroundColor: AppColors.primaryBlue,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: const Text('Fermer', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
