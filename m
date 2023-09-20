Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C6A7A8932
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 18:03:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A6DE10E4CD;
	Wed, 20 Sep 2023 16:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E78CD10E4CD;
 Wed, 20 Sep 2023 16:03:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE1CDA0003;
 Wed, 20 Sep 2023 16:03:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 20 Sep 2023 16:03:12 -0000
Message-ID: <169522579287.6467.13810239810362755200@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C01/22=5D_drm/i915/xelpdp=3A_Ad?=
 =?utf-8?q?d_XE=5FLPDP=5FFEATURES_=28rev2=29?=
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

Series: series starting with [CI,01/22] drm/i915/xelpdp: Add XE_LPDP_FEATURES (rev2)
URL   : https://patchwork.freedesktop.org/series/123938/
State : warning

== Summary ==

Error: dim checkpatch failed
90dd23f88c0a drm/i915/xelpdp: Add XE_LPDP_FEATURES
6330ee8e7216 drm/i915/lnl: Add display definitions
0df6b8dcc3bf drm/i915/xe2lpd: FBC is now supported on all pipes
47267c23e382 drm/i915/display: Remove FBC capability from fused off pipes
d2ab081dee5a drm/i915: Re-order if/else ladder in intel_detect_pch()
480cd983fb8a drm/i915/xe2lpd: Add fake PCH
9602282160c1 drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation
a6ddc8ff7c0b drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST
0aff2fb11f61 drm/i915/xe2lpd: Register DE_RRMR has been removed
89e5b5e66657 drm/i915/display: Fix style and conventions for DP AUX regs
929f8df603c8 drm/i915/display: Use _PICK_EVEN_2RANGES() in DP AUX regs
36459779ccd3 drm/i915/xe2lpd: Re-order DP AUX regs
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
12dd53590a4e drm/i915/xe2lpd: Handle port AUX interrupts
986a5dc94cca drm/i915/xe2lpd: Read pin assignment from IOM
24cd21516592 drm/i915/xe2lpd: Enable odd size and panning for planar yuv
042f79b6681a drm/i915/xe2lpd: Add support for HPD
5a8fc38360d2 drm/i915/xe2lpd: Extend Wa_15010685871
1121ecaac4c2 drm/i915/lnl: Add gmbus/ddc support
713e5b5d6d95 drm/i915/lnl: Add CDCLK table
0dc346291447 drm/i915/xe2lpd: Add display power well
-:13: WARNING:TYPO_SPELLING: 'regiser' may be misspelled - perhaps 'register'?
#13: 
v2: Do not rmw as bit 31 is the only R/W bit in the regiser (Matt Roper)
                                                    ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 113 lines checked
93d7ec0cdc80 drm/i915/xe2lpd: Add DC state support
-:41: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#41: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1565:
+I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_dc_off,
+	POWER_DOMAIN_DC_OFF,

-:49: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#49: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1573:
+		.instances = &I915_PW_INSTANCES(

total: 0 errors, 0 warnings, 2 checks, 37 lines checked
57f5a13b3728 drm/i915/lnl: Start using CDCLK through PLL


