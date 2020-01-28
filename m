Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B873214AD58
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 01:47:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFCE56EC3F;
	Tue, 28 Jan 2020 00:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F4176EC3F;
 Tue, 28 Jan 2020 00:47:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9731FA0119;
 Tue, 28 Jan 2020 00:47:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 28 Jan 2020 00:47:21 -0000
Message-ID: <158017244159.20535.17221934660806207391@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1580149467.git.jani.nikula@intel.com>
In-Reply-To: <cover.1580149467.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_mass_conversion_to_intel=5Fde=5F*=28=29?=
 =?utf-8?q?_register_accessors_=28rev2=29?=
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

Series: drm/i915/display: mass conversion to intel_de_*() register accessors (rev2)
URL   : https://patchwork.freedesktop.org/series/72533/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e3fe468e8ec9 drm/i915/icl_dsi: use intel_de_*() functions for register access
bfcd10dad4e2 drm/i915/combo_phy: use intel_de_*() functions for register access
b38e2a044bff drm/i915/ddi: use intel_de_*() functions for register access
-:131: WARNING:LONG_LINE: line over 100 characters
#131: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1168:
+		       FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2) | FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);

-:164: WARNING:LONG_LINE: line over 100 characters
#164: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1192:
+			       DP_TP_CTL_FDI_AUTOTRAIN | DP_TP_CTL_ENHANCED_FRAME_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1 | DP_TP_CTL_ENABLE);

-:176: WARNING:LONG_LINE: line over 100 characters
#176: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1199:
+			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_BUF_TRANS_SELECT(i / 2));

-:259: WARNING:LONG_LINE: line over 100 characters
#259: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1267:
+		       DP_TP_CTL_FDI_AUTOTRAIN | DP_TP_CTL_LINK_TRAIN_NORMAL | DP_TP_CTL_ENHANCED_FRAME_ENABLE | DP_TP_CTL_ENABLE);

-:956: WARNING:LONG_LINE: line over 100 characters
#956: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3211:
+			       intel_de_read(dev_priv, DPCLKA_CFGCR0) | DPCLKA_CFGCR0_DDI_CLK_OFF(port));

total: 0 errors, 5 warnings, 0 checks, 1137 lines checked
9e1d8d3f24f2 drm/i915/display: use intel_de_*() functions for register access
-:66: WARNING:LONG_LINE: line over 100 characters
#66: FILE: drivers/gpu/drm/i915/display/intel_display.c:523:
+		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DUPS1_GATING_DIS | DUPS2_GATING_DIS);

-:66: ERROR:CODE_INDENT: code indent should use tabs where possible
#66: FILE: drivers/gpu/drm/i915/display/intel_display.c:523:
+^I^I               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DUPS1_GATING_DIS | DUPS2_GATING_DIS);$

-:72: WARNING:LONG_LINE: line over 100 characters
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:526:
+		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~(DUPS1_GATING_DIS | DUPS2_GATING_DIS));

-:72: ERROR:CODE_INDENT: code indent should use tabs where possible
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:526:
+^I^I               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~(DUPS1_GATING_DIS | DUPS2_GATING_DIS));$

-:83: ERROR:CODE_INDENT: code indent should use tabs where possible
#83: FILE: drivers/gpu/drm/i915/display/intel_display.c:536:
+^I^I               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DPFR_GATING_DIS);$

-:88: ERROR:CODE_INDENT: code indent should use tabs where possible
#88: FILE: drivers/gpu/drm/i915/display/intel_display.c:539:
+^I^I               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);$

-:659: WARNING:LONG_LINE: line over 100 characters
#659: FILE: drivers/gpu/drm/i915/display/intel_display.c:5035:
+		               intel_de_read(dev_priv, reg) | FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);

-:659: ERROR:CODE_INDENT: code indent should use tabs where possible
#659: FILE: drivers/gpu/drm/i915/display/intel_display.c:5035:
+^I^I               intel_de_read(dev_priv, reg) | FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);$

-:1590: WARNING:LONG_LINE: line over 100 characters
#1590: FILE: drivers/gpu/drm/i915/display/intel_display.c:8298:
+		       pipe_config->dpll_hw_state.dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));

-:1631: ERROR:CODE_INDENT: code indent should use tabs where possible
#1631: FILE: drivers/gpu/drm/i915/display/intel_display.c:8699:
+^I^I               vsyncshift);$

-:1634: WARNING:LONG_LINE: line over 100 characters
#1634: FILE: drivers/gpu/drm/i915/display/intel_display.c:8702:
+		       (adjusted_mode->crtc_hdisplay - 1) | ((adjusted_mode->crtc_htotal - 1) << 16));

-:1636: WARNING:LONG_LINE: line over 100 characters
#1636: FILE: drivers/gpu/drm/i915/display/intel_display.c:8704:
+		       (adjusted_mode->crtc_hblank_start - 1) | ((adjusted_mode->crtc_hblank_end - 1) << 16));

-:1638: WARNING:LONG_LINE: line over 100 characters
#1638: FILE: drivers/gpu/drm/i915/display/intel_display.c:8706:
+		       (adjusted_mode->crtc_hsync_start - 1) | ((adjusted_mode->crtc_hsync_end - 1) << 16));

-:1645: WARNING:LONG_LINE: line over 100 characters
#1645: FILE: drivers/gpu/drm/i915/display/intel_display.c:8713:
+		       (adjusted_mode->crtc_vsync_start - 1) | ((adjusted_mode->crtc_vsync_end - 1) << 16));

-:1655: ERROR:CODE_INDENT: code indent should use tabs where possible
#1655: FILE: drivers/gpu/drm/i915/display/intel_display.c:8722:
+^I^I               intel_de_read(dev_priv, VTOTAL(cpu_transcoder)));$

-:1676: WARNING:LONG_LINE: line over 100 characters
#1676: FILE: drivers/gpu/drm/i915/display/intel_display.c:8749:
+		return intel_de_read(dev_priv, PIPECONF(cpu_transcoder)) & PIPECONF_INTERLACE_MASK_HSW;

-:2082: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2082: FILE: drivers/gpu/drm/i915/display/intel_display.c:10311:
+			m2_n2->link_n =	intel_de_read(dev_priv,
+							     PIPE_LINK_N2(transcoder));

-:2084: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2084: FILE: drivers/gpu/drm/i915/display/intel_display.c:10313:
+			m2_n2->gmch_m =	intel_de_read(dev_priv,
+							     PIPE_DATA_M2(transcoder))

-:2089: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2089: FILE: drivers/gpu/drm/i915/display/intel_display.c:10316:
+			m2_n2->gmch_n =	intel_de_read(dev_priv,
+							     PIPE_DATA_N2(transcoder));

-:2329: ERROR:CODE_INDENT: code indent should use tabs where possible
#2329: FILE: drivers/gpu/drm/i915/display/intel_display.c:11024:
+^I^I^I^I        TRANS_DDI_FUNC_CTL2(cpu_transcoder));$

-:2329: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2329: FILE: drivers/gpu/drm/i915/display/intel_display.c:11024:
+	trans_port_sync = intel_de_read(dev_priv,
+				        TRANS_DDI_FUNC_CTL2(cpu_transcoder));

-:2468: CHECK:CAMELCASE: Avoid CamelCase: <ILK_eDP_A_DISABLE>
#2468: FILE: drivers/gpu/drm/i915/display/intel_display.c:16754:
+	if (IS_GEN(dev_priv, 5) && (intel_de_read(dev_priv, FUSE_STRAP) & ILK_eDP_A_DISABLE))

total: 8 errors, 9 warnings, 5 checks, 2683 lines checked
e1d262411740 drm/i915/display_power: use intel_de_*() functions for register access
-:315: WARNING:LONG_LINE: line over 100 characters
#315: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:949:
+			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);

-:337: WARNING:LONG_LINE: line over 100 characters
#337: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:973:
+			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);

total: 0 errors, 2 warnings, 0 checks, 732 lines checked
34efc8c86da2 drm/i915/dp: use intel_de_*() functions for register access
-:714: WARNING:LONG_LINE: line over 100 characters
#714: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6956:
+			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, (100 * div) / 2 - 1) | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000)));

-:774: WARNING:LINE_SPACING: Missing a blank line after declarations
#774: FILE: drivers/gpu/drm/i915/display/intel_dp.c:7614:
+		u32 temp = intel_de_read(dev_priv, PEG_BAND_GAP_DATA);
+		intel_de_write(dev_priv, PEG_BAND_GAP_DATA,

total: 0 errors, 2 warnings, 0 checks, 662 lines checked
ce03b8b21b79 drm/i915/hdcp: use intel_de_*() functions for register access
-:63: ERROR:CODE_INDENT: code indent should use tabs where possible
#63: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:116:
+^I                     HDCP_STATUS(dev_priv, cpu_transcoder, port)) &$

-:73: ERROR:CODE_INDENT: code indent should use tabs where possible
#73: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:125:
+^I                     HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &$

-:86: WARNING:LONG_LINE: line over 100 characters
#86: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:191:
+		       HDCP_KEY_LOAD_DONE | HDCP_KEY_LOAD_STATUS | HDCP_FUSE_IN_PROGRESS | HDCP_FUSE_ERROR | HDCP_FUSE_DONE);

-:438: WARNING:LONG_LINE: line over 100 characters
#438: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1581:
+			       intel_de_read(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port)) | CTL_LINK_ENCRYPTION_REQ);

-:454: WARNING:LONG_LINE: line over 100 characters
#454: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1606:
+		       intel_de_read(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port)) & ~CTL_LINK_ENCRYPTION_REQ);

total: 2 errors, 3 warnings, 0 checks, 380 lines checked
926ad0bb0b63 drm/i915/psr: use intel_de_*() functions for register access

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
