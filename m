Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5722F7D20
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 14:51:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547A089FCE;
	Fri, 15 Jan 2021 13:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E2B4089FCE;
 Fri, 15 Jan 2021 13:51:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC754A47E8;
 Fri, 15 Jan 2021 13:51:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 15 Jan 2021 13:51:18 -0000
Message-ID: <161071867887.28527.2388484830000622450@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1610622609.git.jani.nikula@intel.com>
In-Reply-To: <cover.1610622609.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_rebased_refactor_of_intel=5Fdisplay_=28rev2=29?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: rebased refactor of intel_display (rev2)
URL   : https://patchwork.freedesktop.org/series/85867/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0142c754f498 drm/i915: refactor some crtc code out of intel display. (v2)
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

-:332: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#332: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:296:
+	BUG_ON(pipe >= ARRAY_SIZE(dev_priv->pipe_to_crtc_mapping) ||

-:333: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "dev_priv->pipe_to_crtc_mapping[pipe]"
#333: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:297:
+	       dev_priv->pipe_to_crtc_mapping[pipe] != NULL);

-:339: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#339: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:303:
+		BUG_ON(i9xx_plane >= ARRAY_SIZE(dev_priv->plane_to_crtc_mapping) ||

-:340: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "dev_priv->plane_to_crtc_mapping[i9xx_plane]"
#340: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:304:
+		       dev_priv->plane_to_crtc_mapping[i9xx_plane] != NULL);

-:346: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#346: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:310:
+		drm_crtc_create_scaling_filter_property(&crtc->base,
+						BIT(DRM_SCALING_FILTER_DEFAULT) |

total: 0 errors, 3 warnings, 3 checks, 714 lines checked
4f1099b73aa4 drm/i915: refactor pll code out into intel_dpll.c
-:1577: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#1577: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1847:
+	return dev_priv->vbt.lvds_use_ssc
+		&& !(dev_priv->quirks & QUIRK_LVDS_SSC_DISABLE);

-:1587: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1587: 
new file mode 100644

-:1613: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1613: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:22:
+};
+static const struct intel_limit intel_limits_i8xx_dac = {

-:1678: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1678: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:87:
+
+

-:2250: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#2250: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:659:
+				for (clock.m1 = limit->m1.min; clock.m1 <= limit->m1.max; clock.m1++) {

-:2321: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#2321: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:730:
+			if (m2 > INT_MAX/clock.m1)
 			                ^

-:2418: CHECK:BRACES: braces {} should be used on all arms of this statement
#2418: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:827:
+	if (IS_PINEVIEW(dev_priv))
[...]
+	else {
[...]

-:2420: CHECK:BRACES: Unbalanced braces around else statement
#2420: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:829:
+	else {

-:2538: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2538: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:947:
+
+

total: 0 errors, 2 warnings, 7 checks, 2919 lines checked
fdbe353d5856 drm/i915: split fdi code out from intel_display.c
-:778: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#778: 
new file mode 100644

-:874: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#874: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:92:
+		BUG();

-:879: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#879: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:97:
+int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
+				  struct intel_crtc_state *pipe_config)

-:911: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#911: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:129:
+	if (ret == -EINVAL && pipe_config->pipe_bpp > 6*3) {
 	                                               ^

-:912: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#912: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:130:
+		pipe_config->pipe_bpp -= 2*3;
 		                          ^

-:961: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#961: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:179:
+	udelay(1000);

-:966: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#966: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:184:
+			       intel_de_read(dev_priv, reg) | FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);

-:983: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#983: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:201:
+	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
+	   for train result */

-:983: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#983: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:201:
+	   for train result */

-:990: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#990: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:208:
+	udelay(150);

-:1008: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1008: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:226:
+	udelay(150);

-:1044: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1044: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:262:
+	udelay(150);

-:1063: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1063: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:281:
+
+}

-:1083: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#1083: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:301:
+	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
+	   for train result */

-:1083: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#1083: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:301:
+	   for train result */

-:1091: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1091: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:309:
+	udelay(150);

-:1120: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1120: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:338:
+	udelay(150);

-:1130: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1130: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:348:
+		udelay(500);

-:1143: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1143: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:361:
+			udelay(50);

-:1175: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1175: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:393:
+	udelay(150);

-:1185: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1185: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:403:
+		udelay(500);

-:1198: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1198: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:416:
+			udelay(50);

-:1220: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#1220: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:438:
+	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
+	   for train result */

-:1220: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#1220: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:438:
+	   for train result */

-:1228: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1228: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:446:
+	udelay(150);

-:1256: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#1256: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:474:
+		temp |= snb_b_fdi_train_param[j/2];
 		                               ^

-:1352: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1352: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:570:
+	udelay(200);

-:1359: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1359: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:577:
+	udelay(200);

-:1368: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1368: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:586:
+		udelay(100);

-:1391: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1391: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:609:
+	udelay(100);

-:1399: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1399: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:617:
+	udelay(100);

-:1422: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1422: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:640:
+	udelay(100);

-:1451: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1451: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:669:
+	udelay(100);

total: 0 errors, 9 warnings, 24 checks, 1446 lines checked
6f246741f3a7 drm/i915: refactor ddi translations into a separate file
-:1526: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1526: 
new file mode 100644

-:1794: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1794: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:264:
+
+

-:2252: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2252: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:722:
+		return bdw_ddi_translations_edp;
+	} else {

-:2269: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2269: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:739:
+		return skl_u_ddi_translations_dp;
+	} else {

-:2290: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2290: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:760:
+		return kbl_u_ddi_translations_dp;
+	} else {

-:2314: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2314: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:784:
+			return skl_u_ddi_translations_edp;
+		} else {

-:2337: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2337: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:807:
+		return skl_y_ddi_translations_hdmi;
+	} else {

-:2492: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2492: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:962:
+		return cnl_ddi_translations_hdmi_1_05V;
+	} else {

-:2514: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2514: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:984:
+		return cnl_ddi_translations_dp_1_05V;
+	} else {

-:2537: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2537: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1007:
+			return cnl_ddi_translations_edp_1_05V;
+		} else {

-:2631: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2631: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1101:
+		return icl_mg_phy_ddi_translations_hbr2_hbr3;
+	} else {

-:2723: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2723: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1193:
+			return jsl_combo_phy_ddi_translations_edp_hbr2;
+		} else {

-:2765: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2765: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1235:
+			return tgl_uy_combo_phy_ddi_translations_dp_hbr2;
+		} else {

-:2827: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2827: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1297:
+		return tgl_dkl_phy_dp_ddi_trans_hbr2;
+	} else {

-:2993: ERROR:TRAILING_WHITESPACE: trailing whitespace
#2993: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h:99:
+^I^I  $

total: 1 errors, 13 warnings, 1 checks, 2944 lines checked
eeac5b1660dd drm/i915: migrate hsw fdi code to new file.
-:293: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#293: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:583:
+		       FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2) | FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);

-:301: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#301: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:591:
+	udelay(220);

-:313: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#313: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:603:
+	 * testing each value twice. */

-:325: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#325: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:615:
+		 * port reversal bit */

-:327: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#327: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:617:
+			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_BUF_TRANS_SELECT(i / 2));

-:330: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#330: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:620:
+		udelay(600);

-:341: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#341: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:631:
+		udelay(30);

total: 0 errors, 4 warnings, 3 checks, 376 lines checked
39f3ea9c90b3 drm/i915: migrate skl planes code new file (v3)
-:1294: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1294: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1878:
+
+}

-:2748: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2748: 
new file mode 100644

-:3221: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3221: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:469:
+
+

-:3282: WARNING:TYPO_SPELLING: 'Limted' may be misspelled - perhaps 'Limited'?
#3282: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:530:
+		 * BT.601 Limted range YCbCr -> full range RGB
 		          ^^^^^^

-:3728: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3728: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:976:
+
+

-:3831: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3831: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1079:
+				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane[1].x);

-:4133: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4133: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1381:
+
+

-:4516: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#4516: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1764:
+		return skl_planar_formats;
+	} else {

-:4529: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#4529: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1777:
+		return glk_planar_formats;
+	} else {

-:4545: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#4545: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1793:
+		return icl_sdr_y_plane_formats;
+	} else {

-:4859: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#4859: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:2107:
+		drm_plane_create_scaling_filter_property(&plane->base,
+						BIT(DRM_SCALING_FILTER_DEFAULT) |

total: 0 errors, 6 warnings, 5 checks, 4945 lines checked
e83bd5fb9898 drm/i915: move pipe update code into crtc.
-:236: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#236: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:533:
+	 * while ... */

total: 0 errors, 1 warnings, 0 checks, 483 lines checked
d9f0fdb2f780 drm/i915: split fb scalable checks into g4x and skl versions
d9c9a600e163 drm/i915: move is_ccs_modifier to an inline
6f933fa8c210 drm/i915: migrate pll enable/disable code to intel_dpll.[ch]
-:641: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#641: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1399:
+	udelay(150);

-:659: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#659: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1417:
+		udelay(150); /* wait for warmup */

-:700: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#700: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1458:
+	udelay(150);

-:725: CHECK:LINE_SPACING: Please don't use multiple blank lines
#725: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1483:
+
+

-:809: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#809: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1567:
+		       pipe_config->dpll_hw_state.dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));

-:862: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#862: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1620:
+		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
+				 0x009f0003);

-:865: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#865: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1623:
+		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
+				 0x00d0000f);

-:871: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#871: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1629:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df40000);

-:874: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#874: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1632:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df70000);

-:879: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#879: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1637:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df70000);

-:882: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#882: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1640:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df40000);

-:930: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#930: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1688:
+	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW13(port),
+			5 << DPIO_CHV_S1_DIV_SHIFT |

-:940: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#940: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1698:
+	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW1(port),
+			DPIO_CHV_M1_DIV_BY_2 |

-:995: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#995: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1753:
+	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port),
+			vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port)) |

-:1099: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1099: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1857:
+
+

-:1160: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Dave Airlie <airlied@redhat.com>'

total: 1 errors, 1 warnings, 14 checks, 1110 lines checked
08d07ca5c399 drm/i915: migrate i9xx plane get config
-:299: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Dave Airlie <airlied@redhat.com>'

total: 1 errors, 0 warnings, 0 checks, 267 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
