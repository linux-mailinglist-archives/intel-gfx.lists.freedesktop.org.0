Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0EF76B963
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 18:06:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D024C10E412;
	Tue,  1 Aug 2023 16:06:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A93210E411;
 Tue,  1 Aug 2023 16:06:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97EAAACC22;
 Tue,  1 Aug 2023 16:06:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dnyaneshwar Bhadane" <dnyaneshwar.bhadane@intel.com>
Date: Tue, 01 Aug 2023 16:06:46 -0000
Message-ID: <169090600662.10128.10529273966713628754@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Replace_acronym_with_full_platform_name_in_defines?=
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

Series: Replace acronym with full platform name in defines
URL   : https://patchwork.freedesktop.org/series/121731/
State : warning

== Summary ==

Error: dim checkpatch failed
cc897b4cb6a1 drm/i915/hsw: s/HSW/HASWELL for platform/subplatform defines
-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#48: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:57:
+#define HAS_IPS(i915)			(IS_HASWELL_ULT(i915) || IS_BROADWELL(i915))

-:126: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#126: FILE: drivers/gpu/drm/i915/i915_drv.h:595:
+#define IS_HASWELL_EARLY_SDV(i915) (IS_HASWELL(i915) && \
 				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)

-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#138: FILE: drivers/gpu/drm/i915/i915_drv.h:605:
+#define IS_HASWELL_GT3(i915)	(IS_HASWELL(i915) && \
 				 INTEL_INFO(i915)->gt == 3)

-:141: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#141: FILE: drivers/gpu/drm/i915/i915_drv.h:607:
+#define IS_HASWELL_GT1(i915)	(IS_HASWELL(i915) && \
 				 INTEL_INFO(i915)->gt == 1)

-:154: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#154: FILE: drivers/gpu/drm/i915/i915_drv.h:864:
+#define NUM_L3_SLICES(i915) (IS_HASWELL_GT3(i915) ? \
 				 2 : HAS_L3_DPF(i915))

total: 0 errors, 0 warnings, 5 checks, 138 lines checked
a28cf86f5512 drm/i915/bdw: s/BDW/BROADWELL for platform/subplatform defines
-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#71: FILE: drivers/gpu/drm/i915/i915_drv.h:601:
+#define IS_BROADWELL_GT3(i915)	(IS_BROADWELL(i915) && \
 				 INTEL_INFO(i915)->gt == 3)

total: 0 errors, 0 warnings, 1 checks, 81 lines checked
bdaf65b5ce55 drm/i915/skl: s/SKL/SKYLAKE for platform/subplatform defines
-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#73: FILE: drivers/gpu/drm/i915/i915_drv.h:620:
+#define IS_SKYLAKE_GT2(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)

-:76: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#76: FILE: drivers/gpu/drm/i915/i915_drv.h:622:
+#define IS_SKYLAKE_GT3(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)

-:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#79: FILE: drivers/gpu/drm/i915/i915_drv.h:624:
+#define IS_SKYLAKE_GT4(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 4)

total: 0 errors, 0 warnings, 3 checks, 58 lines checked
7e2e9cb90e63 drm/i915/kbl: s/KBL/KABYLAKE for platform/subplatform defines
-:108: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#108: FILE: drivers/gpu/drm/i915/i915_drv.h:626:
+#define IS_KABYLAKE_GT2(i915)	(IS_KABYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)

-:111: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#111: FILE: drivers/gpu/drm/i915/i915_drv.h:628:
+#define IS_KABYLAKE_GT3(i915)	(IS_KABYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)

total: 0 errors, 0 warnings, 2 checks, 89 lines checked
edcdfd338f88 drm/i915/cfl: s/CFL/COFFEELAKE for platform/subplatform defines
-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#45: FILE: drivers/gpu/drm/i915/i915_drv.h:634:
+#define IS_COFFEELAKE_GT2(i915)	(IS_COFFEELAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#48: FILE: drivers/gpu/drm/i915/i915_drv.h:636:
+#define IS_COFFEELAKE_GT3(i915)	(IS_COFFEELAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)

total: 0 errors, 0 warnings, 2 checks, 28 lines checked
dc5fb5b30c81 drm/i915/cml: s/CML/COMETLAKE for platform/subplatform defines
-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#45: FILE: drivers/gpu/drm/i915/i915_drv.h:643:
+#define IS_COMETLAKE_GT2(i915)	(IS_COMETLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)

total: 0 errors, 0 warnings, 1 checks, 25 lines checked
6ec5d8892b2c drm/i915/rkl: s/RKL/ROCKETLAKE for platform/subplatform defines
62a5dbc61cbd drm/i915/jsl: s/JSL/JASPERLAKE for platform/subplatform defines
e0272700e947 drm/i915/tgl: s/TGL/TIGERLAKE for platform/subplatform defines
edab5a7119ab drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
79d3a70d3da0 drm/i915/rplp: s/ADLP_RPLP/RAPTORLAKE_P for RPLP defines
f37fcd76d4b3 drm/i915/rplu: s/ADLP_RPLU/RAPTORLAKE_U in RPLU defines
b339caa46804 drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines
31f57e88976c drm/i915/adls: s/ADLS_RPLS/RAPTORLAKE_S in platform and subplatform defines


