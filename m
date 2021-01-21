Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B04A2FE136
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 05:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F5CA6E503;
	Thu, 21 Jan 2021 04:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 83EE16E4D0;
 Thu, 21 Jan 2021 04:57:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7DFF9A0019;
 Thu, 21 Jan 2021 04:57:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Date: Thu, 21 Jan 2021 04:57:59 -0000
Message-ID: <161120507948.14016.5327516027267451861@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210121042532.9057-1-airlied@gmail.com>
In-Reply-To: <20210121042532.9057-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/8=5D_drm/i915=3A_refactor_ddi_tra?=
 =?utf-8?q?nslations_into_a_separate_file?=
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

Series: series starting with [1/8] drm/i915: refactor ddi translations into a separate file
URL   : https://patchwork.freedesktop.org/series/86110/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8977ebfa68d5 drm/i915: refactor ddi translations into a separate file
-:1523: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1523: 
new file mode 100644

-:1791: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1791: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:264:
+
+

-:2249: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2249: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:722:
+		return bdw_ddi_translations_edp;
+	} else {

-:2266: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2266: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:739:
+		return skl_u_ddi_translations_dp;
+	} else {

-:2287: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2287: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:760:
+		return kbl_u_ddi_translations_dp;
+	} else {

-:2311: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2311: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:784:
+			return skl_u_ddi_translations_edp;
+		} else {

-:2334: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2334: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:807:
+		return skl_y_ddi_translations_hdmi;
+	} else {

-:2489: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2489: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:962:
+		return cnl_ddi_translations_hdmi_1_05V;
+	} else {

-:2511: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2511: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:984:
+		return cnl_ddi_translations_dp_1_05V;
+	} else {

-:2534: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2534: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1007:
+			return cnl_ddi_translations_edp_1_05V;
+		} else {

-:2628: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2628: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1101:
+		return icl_mg_phy_ddi_translations_hbr2_hbr3;
+	} else {

-:2720: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2720: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1193:
+			return jsl_combo_phy_ddi_translations_edp_hbr2;
+		} else {

-:2762: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2762: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1235:
+			return tgl_uy_combo_phy_ddi_translations_dp_hbr2;
+		} else {

-:2824: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2824: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1297:
+		return tgl_dkl_phy_dp_ddi_trans_hbr2;
+	} else {

total: 0 errors, 13 warnings, 1 checks, 2944 lines checked
4208556348c8 drm/i915: migrate hsw fdi code to new file.
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
630ae9723fa6 drm/i915: migrate skl planes code new file (v4)
-:1292: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1292: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1892:
+
+}

-:2828: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2828: 
new file mode 100644

-:3301: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3301: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:469:
+
+

-:3362: WARNING:TYPO_SPELLING: 'Limted' may be misspelled - perhaps 'Limited'?
#3362: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:530:
+		 * BT.601 Limted range YCbCr -> full range RGB
 		          ^^^^^^

-:3805: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3805: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:973:
+
+

-:3908: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3908: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1076:
+				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane[1].x);

-:4214: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4214: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1382:
+
+

-:4597: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#4597: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1765:
+		return skl_planar_formats;
+	} else {

-:4610: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#4610: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1778:
+		return glk_planar_formats;
+	} else {

-:4626: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#4626: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1794:
+		return icl_sdr_y_plane_formats;
+	} else {

-:4968: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#4968: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:2136:
+		drm_plane_create_scaling_filter_property(&plane->base,
+						BIT(DRM_SCALING_FILTER_DEFAULT) |

total: 0 errors, 6 warnings, 5 checks, 5050 lines checked
1f21c6b8bcc4 drm/i915: move pipe update code into crtc.
-:236: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#236: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:533:
+	 * while ... */

total: 0 errors, 1 warnings, 0 checks, 483 lines checked
ceac7e29dced drm/i915: split fb scalable checks into g4x and skl versions
6de2a1874b9d drm/i915: move is_ccs_modifier to an inline
28a3e3bd2878 drm/i915: migrate pll enable/disable code to intel_dpll.[ch]
-:639: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#639: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1399:
+	udelay(150);

-:657: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#657: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1417:
+		udelay(150); /* wait for warmup */

-:698: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#698: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1458:
+	udelay(150);

-:723: CHECK:LINE_SPACING: Please don't use multiple blank lines
#723: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1483:
+
+

-:807: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#807: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1567:
+		       pipe_config->dpll_hw_state.dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));

-:860: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#860: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1620:
+		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
+				 0x009f0003);

-:863: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#863: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1623:
+		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
+				 0x00d0000f);

-:869: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#869: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1629:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df40000);

-:872: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#872: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1632:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df70000);

-:877: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#877: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1637:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df70000);

-:880: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#880: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1640:
+			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+					 0x0df40000);

-:928: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#928: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1688:
+	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW13(port),
+			5 << DPIO_CHV_S1_DIV_SHIFT |

-:938: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#938: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1698:
+	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW1(port),
+			DPIO_CHV_M1_DIV_BY_2 |

-:993: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#993: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1753:
+	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port),
+			vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port)) |

-:1097: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1097: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1857:
+
+

total: 0 errors, 1 warnings, 14 checks, 1110 lines checked
26c4525e26a4 drm/i915: migrate i9xx plane get config


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
