Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D0479C640
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 07:21:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B9B10E2CA;
	Tue, 12 Sep 2023 05:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 74CAC10E2CA;
 Tue, 12 Sep 2023 05:21:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A24AAADE0;
 Tue, 12 Sep 2023 05:21:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
Date: Tue, 12 Sep 2023 05:21:26 -0000
Message-ID: <169449608633.31792.8437396575906852435@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_Lunar_Lake_display_=28rev4=29?=
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

Series: Enable Lunar Lake display (rev4)
URL   : https://patchwork.freedesktop.org/series/122799/
State : warning

== Summary ==

Error: dim checkpatch failed
356326aadadf drm/i915/xelpdp: Add XE_LPDP_FEATURES
4f94768bb2f6 drm/i915/lnl: Add display definitions
2e5186a89210 drm/i915/xe2lpd: FBC is now supported on all pipes
de2925dce35a drm/i915/display: Remove FBC capability from fused off pipes
d5eea67b833a drm/i915: Re-order if/else ladder in intel_detect_pch()
dec0530ced44 drm/i915/xe2lpd: Add fake PCH
840ae9b2f864 drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation
12a45807aba6 drm/i915/display: Consolidate saved port bits in intel_digital_port
d7ee5c8fcaad drm/i915/xe2lpd: Move D2D enable/disable
f25507fa208a drm/i915/xe2lpd: Move registers to PICA
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
e0599af0a817 drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST
d6c764204bd0 drm/i915/xe2lpd: Register DE_RRMR has been removed
d242be8ad92f drm/i915/display: Fix style and conventions for DP AUX regs
3c58cbe75e54 drm/i915/display: Use _PICK_EVEN_2RANGES() in DP AUX regs
fd895fb2350f drm/i915/xe2lpd: Re-order DP AUX regs
-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'aux_ch' - possible side-effects?
#87: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:21:
+#define __xe2lpd_aux_ch_idx(aux_ch)						\
+       (aux_ch >= AUX_CH_USBC1 ? aux_ch : AUX_CH_USBC4 + 1 + aux_ch - AUX_CH_A)

-:87: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'aux_ch' may be better as '(aux_ch)' to avoid precedence issues
#87: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:21:
+#define __xe2lpd_aux_ch_idx(aux_ch)						\
+       (aux_ch >= AUX_CH_USBC1 ? aux_ch : AUX_CH_USBC4 + 1 + aux_ch - AUX_CH_A)

-:88: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#88: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:22:
+       (aux_ch >= AUX_CH_USBC1 ? aux_ch : AUX_CH_USBC4 + 1 + aux_ch - AUX_CH_A)$

-:103: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'aux_ch' - possible side-effects?
#103: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:36:
+#define XELPDP_DP_AUX_CH_CTL(i915__, aux_ch)					\
+		(DISPLAY_VER(i915__) >= 20 ?					\
+		 _XELPDP_DP_AUX_CH_CTL(__xe2lpd_aux_ch_idx(aux_ch)) :		\
+		 _XELPDP_DP_AUX_CH_CTL(aux_ch))

-:120: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'aux_ch' - possible side-effects?
#120: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:84:
+#define XELPDP_DP_AUX_CH_DATA(i915__, aux_ch, i)				\
+		(DISPLAY_VER(i915__) >= 20 ?					\
+		 _XELPDP_DP_AUX_CH_DATA(__xe2lpd_aux_ch_idx(aux_ch), i) :	\
+		 _XELPDP_DP_AUX_CH_DATA(aux_ch, i))

-:120: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#120: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:84:
+#define XELPDP_DP_AUX_CH_DATA(i915__, aux_ch, i)				\
+		(DISPLAY_VER(i915__) >= 20 ?					\
+		 _XELPDP_DP_AUX_CH_DATA(__xe2lpd_aux_ch_idx(aux_ch), i) :	\
+		 _XELPDP_DP_AUX_CH_DATA(aux_ch, i))

total: 0 errors, 1 warnings, 5 checks, 92 lines checked
fd3b5f539784 drm/i915/xe2lpd: Add display power well
3957bb7397c6 drm/i915/xe2lpd: Add DC state support
-:41: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#41: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1565:
+I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_dc_off,
+	POWER_DOMAIN_DC_OFF,

-:49: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#49: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1573:
+		.instances = &I915_PW_INSTANCES(

total: 0 errors, 0 warnings, 2 checks, 37 lines checked
ceb4c4aaed00 drm/i915/xe2lpd: Handle port AUX interrupts
9fea4770c2e5 drm/i915/xe2lpd: Read pin assignment from IOM
cd8815e4d0e3 drm/i915/xe2lpd: Enable odd size and panning for planar yuv
6b8f4ee099ef drm/i915/xe2lpd: Add support for HPD
298fb5f614ae drm/i915/xe2lpd: Extend Wa_15010685871
b28d7da268a7 drm/i915/lnl: Add gmbus/ddc support
b4ae0350514f drm/i915/lnl: Add CDCLK table
d098a232bb32 drm/i915/lnl: Start using CDCLK through PLL
990118d7439b FIXME: drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf
33ec3712a281 drm/i915/lnl: Add programming for CDCLK change
29dc800ecd1f drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane
d4b3a21aa6ca drm/i915/xe2lpd: Update mbus on post plane updates


