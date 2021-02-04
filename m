Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0C9310049
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 23:45:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03F1C6EE89;
	Thu,  4 Feb 2021 22:45:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E1386EE87;
 Thu,  4 Feb 2021 22:45:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F10AAAA91;
 Thu,  4 Feb 2021 22:45:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 04 Feb 2021 22:45:35 -0000
Message-ID: <161247873510.4503.15301064550786287246@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1612467466.git.jani.nikula@intel.com>
In-Reply-To: <cover.1612467466.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_refactor_intel=5Fdisplay=2Ec_+_a_bit_more?=
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

Series: drm/i915: refactor intel_display.c + a bit more
URL   : https://patchwork.freedesktop.org/series/86723/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
124144996ca6 drm/i915: refactor ddi translations into a separate file (v2)
-:1525: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1525: 
new file mode 100644

-:1793: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1793: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:264:
+
+

-:2279: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2279: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:750:
+		return bdw_ddi_translations_edp;
+	} else {

-:2296: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2296: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:767:
+		return skl_u_ddi_translations_dp;
+	} else {

-:2317: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2317: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:788:
+		return kbl_u_ddi_translations_dp;
+	} else {

-:2341: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2341: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:812:
+			return skl_u_ddi_translations_edp;
+		} else {

-:2364: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2364: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:835:
+		return skl_y_ddi_translations_hdmi;
+	} else {

-:2519: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2519: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:990:
+		return cnl_ddi_translations_hdmi_1_05V;
+	} else {

-:2541: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2541: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1012:
+		return cnl_ddi_translations_dp_1_05V;
+	} else {

-:2564: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2564: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1035:
+			return cnl_ddi_translations_edp_1_05V;
+		} else {

-:2658: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2658: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1129:
+		return icl_mg_phy_ddi_translations_hbr2_hbr3;
+	} else {

-:2750: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2750: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1221:
+			return jsl_combo_phy_ddi_translations_edp_hbr2;
+		} else {

-:2795: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2795: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1266:
+			return tgl_uy_combo_phy_ddi_translations_dp_hbr2;
+		} else {

-:2803: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2803: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1274:
+			return rkl_combo_phy_ddi_translations_dp_hbr;
+		} else {

-:2862: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2862: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1333:
+		return tgl_dkl_phy_dp_ddi_trans_hbr2;
+	} else {

total: 0 errors, 14 warnings, 1 checks, 2980 lines checked
dac5399f8947 drm/i915: migrate hsw fdi code to new file.
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
73371d0509a6 drm/i915: migrate skl planes code new file (v5)
-:2762: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2762: 
new file mode 100644

-:3237: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3237: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:471:
+
+

-:3808: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3808: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1042:
+				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane[1].x);

-:4115: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4115: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1349:
+
+

-:4503: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#4503: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1737:
+		return skl_planar_formats;
+	} else {

-:4516: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#4516: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1750:
+		return glk_planar_formats;
+	} else {

-:4532: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#4532: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1766:
+		return icl_sdr_y_plane_formats;
+	} else {

-:4875: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#4875: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:2109:
+		drm_plane_create_scaling_filter_property(&plane->base,
+						BIT(DRM_SCALING_FILTER_DEFAULT) |

total: 0 errors, 5 warnings, 3 checks, 4957 lines checked
d60dcb2389b8 drm/i915: move pipe update code into crtc. (v2)
-:251: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#251: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:545:
+	 * while ... */

total: 0 errors, 1 warnings, 0 checks, 514 lines checked
ed9e74d3ed1e drm/i915: split fb scalable checks into g4x and skl versions
10dd41f58e61 drm/i915: move is_ccs_modifier to an inline
95df1ee5c668 drm/i915: migrate pll enable/disable code to intel_dpll.[ch]
-:640: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#640: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1399:
+	udelay(150);

-:658: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#658: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1417:
+		udelay(150); /* wait for warmup */

-:699: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#699: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1458:
+	udelay(150);

-:724: CHECK:LINE_SPACING: Please don't use multiple blank lines
#724: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1483:
+
+

-:808: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#808: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1567:
+		       pipe_config->dpll_hw_state.dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));

-:861: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#861: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1620:
+		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
+				 0x009f0003);

-:864: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#864: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1623:
+		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
+				 0x00d0000f);

-:870: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#870: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1629:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df40000);

-:873: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#873: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1632:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df70000);

-:878: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#878: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1637:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df70000);

-:881: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#881: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1640:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df40000);

-:929: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#929: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1688:
+	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW13(port),
+			5 << DPIO_CHV_S1_DIV_SHIFT |

-:939: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#939: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1698:
+	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW1(port),
+			DPIO_CHV_M1_DIV_BY_2 |

-:994: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#994: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1753:
+	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port),
+			vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port)) |

-:1098: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1098: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1857:
+
+

total: 0 errors, 1 warnings, 14 checks, 1110 lines checked
44f33f127d85 drm/i915: migrate i9xx plane get config
c29fac301e62 drm/i915: refactor skylake scaler code into new file.
-:641: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#641: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1131 lines checked
b222155f3f4e drm/i915: move ddi pll state get to dpll mgr
-:268: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#268: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:4685:
+	clk_sel = intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy)) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);

-:369: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#369: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:4786:
+static void bxt_get_ddi_pll(struct drm_i915_private *dev_priv,
+				enum port port,

total: 0 errors, 1 warnings, 1 checks, 463 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
