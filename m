Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8314B7640D6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 23:00:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE2410E063;
	Wed, 26 Jul 2023 21:00:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 79E7F10E02B;
 Wed, 26 Jul 2023 21:00:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5BB5CAADDA;
 Wed, 26 Jul 2023 21:00:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dnyaneshwar Bhadane" <dnyaneshwar.bhadane@intel.com>
Date: Wed, 26 Jul 2023 21:00:05 -0000
Message-ID: <169040520537.23470.13602420006462177964@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Replace_acronym_with_full_platform_name_in_defines=2E?=
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

Series: Replace acronym with full platform name in defines.
URL   : https://patchwork.freedesktop.org/series/121387/
State : warning

== Summary ==

Error: dim checkpatch failed
26b2934657f0 drm/i915/hsw: s/HSW/HASWELL for platform/subplatform defines
-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:57:
+#define HAS_IPS(i915)			(IS_HASWELL_ULT(i915) || IS_BROADWELL(i915))

-:124: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#124: FILE: drivers/gpu/drm/i915/i915_drv.h:595:
+#define IS_HASWELL_EARLY_SDV(i915) (IS_HASWELL(i915) && \
 				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)

-:136: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#136: FILE: drivers/gpu/drm/i915/i915_drv.h:605:
+#define IS_HASWELL_GT3(i915)	(IS_HASWELL(i915) && \
 				 INTEL_INFO(i915)->gt == 3)

-:139: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#139: FILE: drivers/gpu/drm/i915/i915_drv.h:607:
+#define IS_HASWELL_GT1(i915)	(IS_HASWELL(i915) && \
 				 INTEL_INFO(i915)->gt == 1)

-:152: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#152: FILE: drivers/gpu/drm/i915/i915_drv.h:864:
+#define NUM_L3_SLICES(i915) (IS_HASWELL_GT3(i915) ? \
 				 2 : HAS_L3_DPF(i915))

total: 0 errors, 0 warnings, 5 checks, 138 lines checked
918824b50d4c drm/i915/bdw: s/BDW/BROADWELL for platform/subplatform defines
-:69: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#69: FILE: drivers/gpu/drm/i915/i915_drv.h:601:
+#define IS_BROADWELL_GT3(i915)	(IS_BROADWELL(i915) && \
 				 INTEL_INFO(i915)->gt == 3)

total: 0 errors, 0 warnings, 1 checks, 81 lines checked
0a3dbaf76831 drm/i915/skl: s/SKL/SKYLAKE for platform/subplatform defines
-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#71: FILE: drivers/gpu/drm/i915/i915_drv.h:620:
+#define IS_SKYLAKE_GT2(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)

-:74: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#74: FILE: drivers/gpu/drm/i915/i915_drv.h:622:
+#define IS_SKYLAKE_GT3(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)

-:77: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#77: FILE: drivers/gpu/drm/i915/i915_drv.h:624:
+#define IS_SKYLAKE_GT4(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 4)

total: 0 errors, 0 warnings, 3 checks, 58 lines checked
985ef963e0e6 drm/i915/kbl: s/KBL/KABYLAKE for platform/subplatform defines
-:106: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#106: FILE: drivers/gpu/drm/i915/i915_drv.h:626:
+#define IS_KABYLAKE_GT2(i915)	(IS_KABYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)

-:109: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#109: FILE: drivers/gpu/drm/i915/i915_drv.h:628:
+#define IS_KABYLAKE_GT3(i915)	(IS_KABYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)

total: 0 errors, 0 warnings, 2 checks, 89 lines checked
dfe80846f681 drm/i915/cfl: s/CFL/COFFEELAKE for platform/subplatform defines
-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/i915_drv.h:634:
+#define IS_COFFEELAKE_GT2(i915)	(IS_COFFEELAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/i915_drv.h:636:
+#define IS_COFFEELAKE_GT3(i915)	(IS_COFFEELAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)

total: 0 errors, 0 warnings, 2 checks, 28 lines checked
be676d5fe142 drm/i915/cml: s/CML/COMETLAKE for platform/subplatform defines
-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/i915_drv.h:643:
+#define IS_COMETLAKE_GT2(i915)	(IS_COMETLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)

total: 0 errors, 0 warnings, 1 checks, 25 lines checked
512da45fb53f drm/i915/rkl: s/RKL/ROCKETLAKE for platform/subplatform defines
b0b6ca2cb60d drm/i915/jsl: s/JSL/JASPERLAKE for platform/subplatform defines
-:38: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#38: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:448:
+		if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv) ||
+			(DISPLAY_VER(dev_priv) >= 12)) {

-:101: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#101: FILE: drivers/gpu/drm/i915/display/intel_combo_phy.c:337:
+		if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
+			phy == PHY_A) {

-:115: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#115: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3587:
+	else if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
+			crtc_state->port_clock > 594000)

-:156: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#156: FILE: drivers/gpu/drm/i915/display/intel_display.c:1805:
+	else if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
+			port == PORT_D)

-:183: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#183: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:195:
+	else if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
+			(pll->info->id == DPLL_ID_EHL_DPLL4))

-:214: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#214: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:3573:
+		if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
+			id == DPLL_ID_EHL_DPLL4) {

-:224: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#224: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:3630:
+		if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
+			id == DPLL_ID_EHL_DPLL4) {

-:235: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#235: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:3814:
+	if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
+		pll->info->id == DPLL_ID_EHL_DPLL4) {

-:246: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#246: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:3922:
+	if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
+		pll->info->id == DPLL_ID_EHL_DPLL4)

-:265: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#265: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:4343:
+	if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
+		pll->on &&

-:279: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#279: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2898:
+	else if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
+			HAS_PCH_TGP(dev_priv))

-:385: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#385: FILE: drivers/gpu/drm/i915/soc/intel_pch.c:119:
+		drm_WARN_ON(&dev_priv->drm, !(IS_JASPERLAKE(dev_priv) ||
+				IS_ELKHARTLAKE(dev_priv)));

-:395: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#395: FILE: drivers/gpu/drm/i915/soc/intel_pch.c:132:
+		drm_WARN_ON(&dev_priv->drm, !(IS_JASPERLAKE(dev_priv) ||
+				IS_ELKHARTLAKE(dev_priv)));

total: 0 errors, 0 warnings, 13 checks, 287 lines checked
50f802312bf7 drm/i915/tgl: s/TGL/TIGERLAKE for platform/subplatform defines
7ff9b41a0866 drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
c9a24742c4a5 drm/i915/rplp: s/ADLP_RPLP/RAPTORLAKE_P for RPLP defines
ce9e55e38ac0 drm/i915/rplu: s/ADLP_RPLU/RAPTORLAKE_U in RPLU defines
cf806fab3784 drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines
7e6314b961f8 drm/i915/adls: s/ADLS_RPLS/RAPTORLAKE_S in platform and subplatform defines


