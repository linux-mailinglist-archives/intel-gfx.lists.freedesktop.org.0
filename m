Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD35995BE4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 01:51:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAAEF10E0B0;
	Tue,  8 Oct 2024 23:51:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A4A410E0B0;
 Tue,  8 Oct 2024 23:51:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Add_xe3lpd_edp_enabl?=
 =?utf-8?q?ing?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 08 Oct 2024 23:51:36 -0000
Message-ID: <172843149636.1206586.15239856131688637995@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
In-Reply-To: <20241008223741.82790-1-matthew.s.atwood@intel.com>
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

Series: Add xe3lpd edp enabling
URL   : https://patchwork.freedesktop.org/series/139731/
State : warning

== Summary ==

Error: dim checkpatch failed
b37e76d7e831 drm/i915/xe3lpd: reuse xe2lpd definition
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
a637248b3bb8 drm/i915/xe3lpd: Adjust watermark calculations
e520e7565407 drm/i915/xe3lpd: Add new display power wells
-:41: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#41: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1602:
+#define XE3LPD_PW_C_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C

-:45: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#45: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1606:
+#define XE3LPD_PW_D_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_D, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_D

-:49: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#49: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1610:
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

-:79: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#79: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1640:
+		.instances = &I915_PW_INSTANCES(

-:88: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#88: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1649:
+		.instances = &I915_PW_INSTANCES(

-:96: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#96: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1657:
+		.instances = &I915_PW_INSTANCES(

-:104: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#104: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1665:
+		.instances = &I915_PW_INSTANCES(

-:112: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#112: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1673:
+		.instances = &I915_PW_INSTANCES(

-:120: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#120: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1681:
+		.instances = &I915_PW_INSTANCES(

-:133: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#133: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1694:
+I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_dc_off,
+	POWER_DOMAIN_DC_OFF,

-:142: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#142: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1703:
+		.instances = &I915_PW_INSTANCES(

-:150: CHECK:LINE_SPACING: Please don't use multiple blank lines
#150: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1711:
+
+

total: 3 errors, 0 warnings, 9 checks, 147 lines checked
da2a35cfc7ac drm/i915/xe3lpd: Update pmdemand programming
d8f572374294 drm/i915/xe3lpd: Add cdclk changes
9055734b8617 drm/i915/xe3lpd: Add macro to choose HDCP_LINE_REKEY bit
-:40: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/i915_reg.h:3835:
+#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE(display)	(DISPLAY_VER(display) >= 30 ? REG_BIT(15) : REG_BIT(12))

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
8ff4cc5b3ef2 drm/i915/xe3lpd: Add C20 Phy consolidated programming table
b03a021c1a52 drm/i915/xe3lpd: Add new bit range of MAX swing setup
-:36: WARNING:LONG_LINE: line length of 160 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:303:
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(display, val)	(DISPLAY_VER(display) >= 30 ? REG_FIELD_PREP(PTL_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val) :\

-:36: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val' - possible side-effects?
#36: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:303:
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(display, val)	(DISPLAY_VER(display) >= 30 ? REG_FIELD_PREP(PTL_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val) :\
+							 REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val))

-:37: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:304:
+							 REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val))

total: 0 errors, 2 warnings, 1 checks, 18 lines checked
4dd2162af137 drm/i915/xe3lpd: Add check to see if edp over type c is allowed
-:81: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#81: FILE: drivers/gpu/drm/i915/i915_reg.h:4586:
+#define PICA_PHY_CONFIG_CONTROL ^I_MMIO(0x16FE68)$

total: 0 errors, 1 warnings, 0 checks, 50 lines checked
dc2b39126319 drm/i915/xe3lpd: Add powerdown value of eDP over type c


