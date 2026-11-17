import 'package:flutter/material.dart';
import '../models/law.dart';
import '../services/law_service.dart';
import '../theme/app_colors.dart';
import 'package:timeago/timeago.dart' as timeago;

class LawCard extends StatefulWidget {
  final Law law;
  final VoidCallback onTap;

  const LawCard({
    super.key,
    required this.law,
    required this.onTap,
  });

  @override
  State<LawCard> createState() => _LawCardState();
}

class _LawCardState extends State<LawCard> {
  bool _isLoadingFavorite = false;

  Future<void> _toggleFavorite() async {
    if (_isLoadingFavorite) return;
    
    // Optimistic UI update
    setState(() {
      widget.law.isFavorited = !widget.law.isFavorited;
      _isLoadingFavorite = true;
    });

    try {
      final newState = await LawService.toggleFavorite(widget.law.id);
      if (mounted) {
        setState(() {
          widget.law.isFavorited = newState;
          _isLoadingFavorite = false;
        });
      }
    } catch (e) {
      debugPrint("Failed to toggle favorite: $e");
      // Revert upon failure
      if (mounted) {
        setState(() {
          widget.law.isFavorited = !widget.law.isFavorited;
          _isLoadingFavorite = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Erreur lors de la mise en favori')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final law = widget.law;
    final onTap = widget.onTap;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.cardBorderSubtle, width: 1),
        boxShadow: AppColors.cardShadow,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          splashColor: AppColors.primaryBlue.withValues(alpha: 0.05),
          highlightColor: AppColors.primaryBlue.withValues(alpha: 0.03),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header with badges & actions
                Row(
                  children: [
                    if (law.source.toLowerCase().contains('ue') || law.source.toLowerCase().contains('europ')) ...[
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFF6FF),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFBFDBFE), width: 1),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '🇪🇺 UE',
                              style: TextStyle(
                                fontSize: 11.5,
                                color: Color(0xFF1D4ED8),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                    Builder(builder: (context) {
                      String badgeText = law.statusLabel;
                      Color bgCol = const Color(0xFFFFFBEB);
                      Color textCol = const Color(0xFFB45309);
                      Color borderCol = const Color(0xFFFDE68A);
                      IconData statusIcon = Icons.hourglass_top_rounded;

                      if (law.isPromulgated || law.lawStatus == LawStatus.validated) {
                        bgCol = const Color(0xFFECFDF5);
                        textCol = const Color(0xFF047857);
                        borderCol = const Color(0xFFA7F3D0);
                        statusIcon = Icons.check_circle_rounded;
                      } else if (law.lawStatus == LawStatus.votedAn) {
                        bgCol = const Color(0xFFF0FDF4);
                        textCol = const Color(0xFF15803D);
                        borderCol = const Color(0xFFBBF7D0);
                        statusIcon = Icons.how_to_vote_rounded;
                      } else if (law.lawStatus == LawStatus.rejected) {
                        bgCol = const Color(0xFFFEF2F2);
                        textCol = const Color(0xFFB91C1C);
                        borderCol = const Color(0xFFFECACA);
                        statusIcon = Icons.cancel_rounded;
                      }

                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                        decoration: BoxDecoration(
                          color: bgCol,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: borderCol, width: 1),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(statusIcon, size: 12, color: textCol),
                            const SizedBox(width: 5),
                            Text(
                              badgeText,
                              style: TextStyle(
                                fontSize: 11.5,
                                color: textCol,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.1,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                    const Spacer(),
                    if (law.userVote != null)
                      Builder(builder: (context) {
                        Color bgCol;
                        Color textCol;
                        IconData icon;

                        if (law.userVote == 'FOR') {
                          bgCol = AppColors.votePour.withValues(alpha: 0.12);
                          textCol = AppColors.votePour;
                          icon = Icons.thumb_up_rounded;
                        } else if (law.userVote == 'AGAINST') {
                          bgCol = AppColors.voteContre.withValues(alpha: 0.12);
                          textCol = AppColors.voteContre;
                          icon = Icons.thumb_down_rounded;
                        } else {
                          bgCol = AppColors.voteAbstention.withValues(alpha: 0.12);
                          textCol = AppColors.voteAbstention;
                          icon = Icons.remove_circle_outline_rounded;
                        }

                        return Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.only(right: 6),
                          decoration: BoxDecoration(
                            color: bgCol,
                            shape: BoxShape.circle,
                            border: Border.all(color: textCol.withValues(alpha: 0.25)),
                          ),
                          child: Icon(icon, size: 14, color: textCol),
                        );
                      }),
                    // Favorite Star Button
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: _toggleFavorite,
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 200),
                            child: Icon(
                              law.isFavorited ? Icons.star_rounded : Icons.star_outline_rounded,
                              key: ValueKey(law.isFavorited),
                              color: law.isFavorited ? const Color(0xFFF59E0B) : const Color(0xFF94A3B8),
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                
                // Title
                Text(
                  law.formattedTitle,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    height: 1.32,
                    letterSpacing: -0.2,
                    color: AppColors.textPrimary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                
                // Pitch (simplified for now)
                Text(
                  law.titleOfficial,
                  style: const TextStyle(
                    fontSize: 13.5,
                    height: 1.45,
                    color: AppColors.textSecondary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                
                // Date and statistics row
                const SizedBox(height: 14),
                Row(
                  children: [
                    Builder(
                      builder: (context) {
                        final isResolved = law.lawStatus == LawStatus.votedAn ||
                            law.lawStatus == LawStatus.validated ||
                            law.lawStatus == LawStatus.rejected;
                        DateTime? displayDate = isResolved
                            ? (law.voteDate ?? law.agendaDate ?? law.dateDepot)
                            : (law.agendaDate ?? law.voteDate ?? law.dateDepot);
                        final bool isDepotFallback = displayDate != null &&
                            displayDate == law.dateDepot &&
                            law.agendaDate == null &&
                            law.voteDate == null;
                        if (displayDate == null) return const SizedBox.shrink();

                        String label;
                        IconData icon;

                        DateTime now = DateTime.now();
                        DateTime today = DateTime(now.year, now.month, now.day);
                        DateTime dateOnly = DateTime(displayDate.year, displayDate.month, displayDate.day);

                        if (isDepotFallback) {
                            label = 'Déposée';
                            icon = Icons.inbox_outlined;
                        } else if (dateOnly.isBefore(today)) {
                            if (law.lawStatus == LawStatus.pending) {
                                label = 'Discussion';
                                icon = Icons.hourglass_empty_rounded;
                            } else {
                                label = 'Votée';
                                icon = Icons.how_to_vote_rounded;
                            }
                        } else {
                            label = 'Vote';
                            icon = Icons.event_rounded;
                        }

                        String relativeDate;
                        if (!dateOnly.isBefore(today)) {
                          final diff = dateOnly.difference(today).inDays;
                          if (diff == 0) {
                            relativeDate = "aujourd'hui";
                          } else if (diff == 1) {
                            relativeDate = "demain";
                          } else {
                            relativeDate = "dans $diff jours";
                          }
                        } else {
                          relativeDate = timeago.format(displayDate, locale: 'fr', allowFromNow: true);
                        }

                        return Row(
                          children: [
                            Icon(icon, size: 14, color: AppColors.textSecondary),
                            const SizedBox(width: 5),
                            Text(
                              '$label $relativeDate',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        );
                      }
                    ),
                    
                    if (law.statistics != null && law.statistics!.totalVotes > 0) ...[
                      const SizedBox(width: 14),
                      Container(
                        width: 3,
                        height: 3,
                        decoration: const BoxDecoration(
                          color: AppColors.cardBorder,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 14),
                      const Icon(Icons.people_outline_rounded, size: 14, color: AppColors.textSecondary),
                      const SizedBox(width: 5),
                      Text(
                        '${law.statistics!.totalVotes} votes',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
