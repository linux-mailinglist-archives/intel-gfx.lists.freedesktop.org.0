Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F12387A6EBB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 00:37:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF98210E415;
	Tue, 19 Sep 2023 22:37:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 486B310E415;
 Tue, 19 Sep 2023 22:37:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D2BBA00E6;
 Tue, 19 Sep 2023 22:37:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 19 Sep 2023 22:37:17 -0000
Message-ID: <169516303721.3668.11517420932421018032@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C01/22=5D_drm/i915/xelpdp=3A_Ad?=
 =?utf-8?q?d_XE=5FLPDP=5FFEATURES?=
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

Series: series starting with [CI,01/22] drm/i915/xelpdp: Add XE_LPDP_FEATURES
URL   : https://patchwork.freedesktop.org/series/123938/
State : warning

== Summary ==

Error: dim checkpatch failed
fa3788ccd387 drm/i915/xelpdp: Add XE_LPDP_FEATURES
f4699c32770d drm/i915/lnl: Add display definitions
080171653812 drm/i915/xe2lpd: FBC is now supported on all pipes
30ad057b70d1 drm/i915/display: Remove FBC capability from fused off pipes
24642f4f5986 drm/i915: Re-order if/else ladder in intel_detect_pch()
a988d6153651 drm/i915/xe2lpd: Add fake PCH
0e7f43d48409 drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation
61bd35b6ef1f drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST
965501039a12 drm/i915/xe2lpd: Register DE_RRMR has been removed
c398af3ccc18 drm/i915/display: Fix style and conventions for DP AUX regs
7f337dbc9221 drm/i915/display: Use _PICK_EVEN_2RANGES() in DP AUX regs
586ac3a00a73 drm/i915/xe2lpd: Re-order DP AUX regs
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
236f503f3909 drm/i915/xe2lpd: Handle port AUX interrupts
8f0f08d3e62a drm/i915/xe2lpd: Read pin assignment from IOM
c355ab42af02 drm/i915/xe2lpd: Enable odd size and panning for planar yuv
a149a2d6dc24 drm/i915/xe2lpd: Add support for HPD
f321e2326b2e drm/i915/xe2lpd: Extend Wa_15010685871
6a1103f0ce78 drm/i915/lnl: Add gmbus/ddc support
76d037aff1b5 drm/i915/lnl: Add CDCLK table
9b909dc57e19 drm/i915/xe2lpd: Add display power well
-:13: WARNING:TYPO_SPELLING: 'regiser' may be misspelled - perhaps 'register'?
#13: 
v2: Do not rmw as bit 31 is the only R/W bit in the regiser (Matt Roper)
                                                    ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 113 lines checked
8e3282660c81 drm/i915/xe2lpd: Add DC state support
-:41: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#41: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1565:
+I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_dc_off,
+	POWER_DOMAIN_DC_OFF,

-:49: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#49: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1573:
+		.instances = &I915_PW_INSTANCES(

total: 0 errors, 0 warnings, 2 checks, 37 lines checked
f142cfe90a51 drm/i915/lnl: Start using CDCLK through PLL


