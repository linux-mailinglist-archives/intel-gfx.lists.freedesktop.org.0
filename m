Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B9499A098
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 11:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0833910EA9F;
	Fri, 11 Oct 2024 09:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37A2110EA9F;
 Fri, 11 Oct 2024 09:58:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Add_xe3lpd_edp_enabl?=
 =?utf-8?q?ing_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2024 09:58:42 -0000
Message-ID: <172864072222.1239999.16461498112887020022@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
In-Reply-To: <20241010224311.50133-1-matthew.s.atwood@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Add xe3lpd edp enabling (rev2)
URL   : https://patchwork.freedesktop.org/series/139731/
State : warning

== Summary ==

Error: dim checkpatch failed
21482e49e44a drm/i915/xe3lpd: reuse xe2lpd definition
-:67: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#67: FILE: include/drm/intel/i915_pciids.h:798:
+#define INTEL_PTL_IDS(MACRO__, ...) \
+	MACRO__(0xB080, ## __VA_ARGS__), \
+	MACRO__(0xB081, ## __VA_ARGS__), \
+	MACRO__(0xB082, ## __VA_ARGS__), \
+	MACRO__(0xB090, ## __VA_ARGS__), \
+	MACRO__(0xB091, ## __VA_ARGS__), \
+	MACRO__(0xB092, ## __VA_ARGS__), \
+	MACRO__(0xB0A0, ## __VA_ARGS__), \
+	MACRO__(0xB0A1, ## __VA_ARGS__), \
+	MACRO__(0xB0A2, ## __VA_ARGS__)

-:67: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#67: FILE: include/drm/intel/i915_pciids.h:798:
+#define INTEL_PTL_IDS(MACRO__, ...) \
+	MACRO__(0xB080, ## __VA_ARGS__), \
+	MACRO__(0xB081, ## __VA_ARGS__), \
+	MACRO__(0xB082, ## __VA_ARGS__), \
+	MACRO__(0xB090, ## __VA_ARGS__), \
+	MACRO__(0xB091, ## __VA_ARGS__), \
+	MACRO__(0xB092, ## __VA_ARGS__), \
+	MACRO__(0xB0A0, ## __VA_ARGS__), \
+	MACRO__(0xB0A1, ## __VA_ARGS__), \
+	MACRO__(0xB0A2, ## __VA_ARGS__)

total: 1 errors, 0 warnings, 1 checks, 48 lines checked
261ab472f395 drm/i915/xe3lpd: Adjust watermark calculations
5ae22787826b drm/i915/xe3lpd: Add new display power wells
-:42: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#42: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1602:
+#define XE3LPD_PW_C_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C

-:46: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#46: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1606:
+#define XE3LPD_PW_D_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_D, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_D

-:50: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#50: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1610:
+#define XE3LPD_PW_2_POWER_DOMAINS \
+	XE3LPD_PW_C_POWER_DOMAINS, \
+	XE3LPD_PW_D_POWER_DOMAINS, \
+	POWER_DOMAIN_TRANSCODER_C, \
+	POWER_DOMAIN_TRANSCODER_D, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC4

-:80: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#80: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1640:
+		.instances = &I915_PW_INSTANCES(

-:89: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#89: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1649:
+		.instances = &I915_PW_INSTANCES(

-:97: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#97: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1657:
+		.instances = &I915_PW_INSTANCES(

-:105: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#105: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1665:
+		.instances = &I915_PW_INSTANCES(

-:113: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#113: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1673:
+		.instances = &I915_PW_INSTANCES(

-:121: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#121: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1681:
+		.instances = &I915_PW_INSTANCES(

-:134: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#134: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1694:
+I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_dc_off,
+	POWER_DOMAIN_DC_OFF,

-:143: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#143: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1703:
+		.instances = &I915_PW_INSTANCES(

-:151: CHECK:LINE_SPACING: Please don't use multiple blank lines
#151: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1711:
+
+

total: 3 errors, 0 warnings, 9 checks, 147 lines checked
0a34eff103d3 drm/i915/xe3lpd: Update pmdemand programming
-:72: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#72: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:336:
+	if (DISPLAY_VER(i915) >= 30) max_active_pipes = 4;

total: 1 errors, 0 warnings, 0 checks, 165 lines checked
b9ec0bcdd9a1 drm/i915/xe3lpd: Add cdclk changes
6e203e8d94c3 drm/i915/xe3lpd: Include hblank restriction for xe3lpd
6018dac2f1f0 drm/i915/xe3lpd: Add C20 Phy consolidated programming table
f13848b9363c drm/i915/xe3lpd: Add new bit range of MAX swing setup
-:9: WARNING:TYPO_SPELLING: 'seperate' may be misspelled - perhaps 'separate'?
#9: 
v2: implement as two seperate macros instead of a single macro
                     ^^^^^^^^

-:32: CHECK:LINE_SPACING: Please don't use multiple blank lines
#32: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:334:
 
+

-:65: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#65: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:299:
+#define PORT_ALPM_CTL(port)				_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)

-:69: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#69: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:303:
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)		REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)

-:70: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#70: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:304:
+#define  XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)

-:72: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#72: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:306:
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)		REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)

-:74: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#74: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:308:
+#define  PORT_ALPM_CTL_SILENCE_PERIOD(val)		REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)

total: 0 errors, 6 warnings, 1 checks, 52 lines checked
8c95a081c831 drm/i915/xe3lpd: Add check to see if edp over type c is allowed
-:81: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#81: FILE: drivers/gpu/drm/i915/i915_reg.h:4587:
+#define PICA_PHY_CONFIG_CONTROL ^I_MMIO(0x16FE68)$

total: 0 errors, 1 warnings, 0 checks, 50 lines checked
d4f676bab0e3 drm/i915/xe3lpd: Add condition for EDP to powerdown P2.PG


