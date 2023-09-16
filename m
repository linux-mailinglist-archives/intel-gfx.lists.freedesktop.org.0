Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4338D7A2D43
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Sep 2023 04:02:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD9E210E0A2;
	Sat, 16 Sep 2023 02:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDB9F10E0A2;
 Sat, 16 Sep 2023 02:02:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBBB2AA01E;
 Sat, 16 Sep 2023 02:02:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
Date: Sat, 16 Sep 2023 02:02:30 -0000
Message-ID: <169482975087.10847.7418267919525540579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_Lunar_Lake_display_=28rev5=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Enable Lunar Lake display (rev5)
URL   : https://patchwork.freedesktop.org/series/122799/
State : warning

== Summary ==

Error: dim checkpatch failed
0891930bfe21 drm/i915/xelpdp: Add XE_LPDP_FEATURES
d93689afdf8e drm/i915/lnl: Add display definitions
6d075298baed drm/i915/xe2lpd: FBC is now supported on all pipes
fdee581d06f6 drm/i915/display: Remove FBC capability from fused off pipes
1f82a263a25e drm/i915: Re-order if/else ladder in intel_detect_pch()
20e9e98d46a2 drm/i915/xe2lpd: Add fake PCH
1352ae2e0a16 drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation
7f1a28491e59 drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST
eec97f48248a drm/i915/xe2lpd: Register DE_RRMR has been removed
3831119242c0 drm/i915/display: Consolidate saved port bits in intel_digital_port
55a3d0feb769 drm/i915/display: Rename intel_dp->DP
7a476f615a06 drm/i915/xe2lpd: Move D2D enable/disable
df8a8816e56b drm/i915/xe2lpd: Move registers to PICA
-:376: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#376: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:27:
+#define __xe2lpd_port_idx(port)						\
+	(port >= PORT_TC1 ? port : PORT_TC4 + 1 + port - PORT_A)

-:376: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'port' may be better as '(port)' to avoid precedence issues
#376: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:27:
+#define __xe2lpd_port_idx(port)						\
+	(port >= PORT_TC1 ? port : PORT_TC4 + 1 + port - PORT_A)

-:389: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#389: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:39:
+#define XELPDP_PORT_M2P_MSGBUS_CTL(i915__, port, lane)				\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_M2P_MSGBUS_CTL(__xe2lpd_port_idx(port), lane) :		\
+	 _XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))

-:389: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'lane' - possible side-effects?
#389: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:39:
+#define XELPDP_PORT_M2P_MSGBUS_CTL(i915__, port, lane)				\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_M2P_MSGBUS_CTL(__xe2lpd_port_idx(port), lane) :		\
+	 _XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))

-:407: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#407: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:59:
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(i915__, port, lane)			\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_P2M_MSGBUS_STATUS(__xe2lpd_port_idx(port), lane) :	\
+	 _XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane))

-:407: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'lane' - possible side-effects?
#407: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:59:
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(i915__, port, lane)			\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_P2M_MSGBUS_STATUS(__xe2lpd_port_idx(port), lane) :	\
+	 _XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane))

-:424: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#424: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:90:
+#define XELPDP_PORT_BUF_CTL1(i915__, port)					\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_BUF_CTL1(__xe2lpd_port_idx(port)) :			\
+	 _XELPDP_PORT_BUF_CTL1(port))

-:442: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#442: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:115:
+#define XELPDP_PORT_BUF_CTL2(i915__, port)					\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_BUF_CTL2(__xe2lpd_port_idx(port)) :			\
+	 _XELPDP_PORT_BUF_CTL2(port))

-:459: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#459: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:138:
+#define XELPDP_PORT_BUF_CTL3(i915__, port)					\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_BUF_CTL3(__xe2lpd_port_idx(port)) :			\
+	 _XELPDP_PORT_BUF_CTL3(port))

-:476: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#476: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:161:
+#define XELPDP_PORT_MSGBUS_TIMER(i915__, port, lane)				\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_MSGBUS_TIMER(__xe2lpd_port_idx(port), lane) :		\
+	 _XELPDP_PORT_MSGBUS_TIMER(port, lane))

-:476: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'lane' - possible side-effects?
#476: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:161:
+#define XELPDP_PORT_MSGBUS_TIMER(i915__, port, lane)				\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_MSGBUS_TIMER(__xe2lpd_port_idx(port), lane) :		\
+	 _XELPDP_PORT_MSGBUS_TIMER(port, lane))

-:493: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#493: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:178:
+#define XELPDP_PORT_CLOCK_CTL(i915__, port)					\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_CLOCK_CTL(__xe2lpd_port_idx(port)) :			\
+	 _XELPDP_PORT_CLOCK_CTL(port))

total: 0 errors, 0 warnings, 12 checks, 567 lines checked
8427bcfd869f drm/i915/display: Fix style and conventions for DP AUX regs
6a2765513861 drm/i915/display: Use _PICK_EVEN_2RANGES() in DP AUX regs
eec8fd50770c drm/i915/xe2lpd: Re-order DP AUX regs
-:88: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'aux_ch' - possible side-effects?
#88: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:21:
+#define __xe2lpd_aux_ch_idx(aux_ch)						\
+	(aux_ch >= AUX_CH_USBC1 ? aux_ch : AUX_CH_USBC4 + 1 + aux_ch - AUX_CH_A)

-:88: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'aux_ch' may be better as '(aux_ch)' to avoid precedence issues
#88: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:21:
+#define __xe2lpd_aux_ch_idx(aux_ch)						\
+	(aux_ch >= AUX_CH_USBC1 ? aux_ch : AUX_CH_USBC4 + 1 + aux_ch - AUX_CH_A)

-:104: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'aux_ch' - possible side-effects?
#104: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:36:
+#define XELPDP_DP_AUX_CH_CTL(i915__, aux_ch)					\
+		(DISPLAY_VER(i915__) >= 20 ?					\
+		 _XELPDP_DP_AUX_CH_CTL(__xe2lpd_aux_ch_idx(aux_ch)) :		\
+		 _XELPDP_DP_AUX_CH_CTL(aux_ch))

-:121: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'aux_ch' - possible side-effects?
#121: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:84:
+#define XELPDP_DP_AUX_CH_DATA(i915__, aux_ch, i)				\
+		(DISPLAY_VER(i915__) >= 20 ?					\
+		 _XELPDP_DP_AUX_CH_DATA(__xe2lpd_aux_ch_idx(aux_ch), i) :	\
+		 _XELPDP_DP_AUX_CH_DATA(aux_ch, i))

-:121: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#121: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:84:
+#define XELPDP_DP_AUX_CH_DATA(i915__, aux_ch, i)				\
+		(DISPLAY_VER(i915__) >= 20 ?					\
+		 _XELPDP_DP_AUX_CH_DATA(__xe2lpd_aux_ch_idx(aux_ch), i) :	\
+		 _XELPDP_DP_AUX_CH_DATA(aux_ch, i))

total: 0 errors, 0 warnings, 5 checks, 92 lines checked
0ee28455fb3f drm/i915/xe2lpd: Handle port AUX interrupts
de623d8a98d3 drm/i915/xe2lpd: Read pin assignment from IOM
51bdaa105e1c drm/i915/xe2lpd: Enable odd size and panning for planar yuv
26ee6dadc71f drm/i915/xe2lpd: Add support for HPD
72adf8cdd458 drm/i915/xe2lpd: Extend Wa_15010685871
ee44ad47e087 drm/i915/lnl: Add gmbus/ddc support
41758537262c drm/i915/lnl: Add CDCLK table
c84dc1ea268c drm/i915/xe2lpd: Add display power well
-:13: WARNING:TYPO_SPELLING: 'regiser' may be misspelled - perhaps 'register'?
#13: 
v2: Do not rmw as bit 31 is the only R/W bit in the regiser (Matt Roper)
                                                    ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 113 lines checked
c153e28fb6e6 drm/i915/xe2lpd: Add DC state support
-:41: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#41: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1565:
+I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_dc_off,
+	POWER_DOMAIN_DC_OFF,

-:49: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#49: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1573:
+		.instances = &I915_PW_INSTANCES(

total: 0 errors, 0 warnings, 2 checks, 37 lines checked
c9db14bccb31 drm/i915/lnl: Start using CDCLK through PLL
f8632a3622fb FIXME: drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf
ed5321ba9ec1 drm/i915/lnl: Add programming for CDCLK change
b433a890aa15 drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane
5379effd3df5 drm/i915/xe2lpd: Update mbus on post plane updates


