Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CECF8731FE8
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 20:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EDA610E0C6;
	Thu, 15 Jun 2023 18:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49BF110E0A0;
 Thu, 15 Jun 2023 18:26:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A407AADE0;
 Thu, 15 Jun 2023 18:26:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dnyaneshwar Bhadane" <dnyaneshwar.bhadane@intel.com>
Date: Thu, 15 Jun 2023 18:26:50 -0000
Message-ID: <168685361062.10727.17628028605508012545@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/119380/
State : warning

== Summary ==

Error: dim checkpatch failed
7403e3359af6 drm/i915/TGL: s/TGL/TIGERLAKE for platform/subplatform defines
-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#56: FILE: drivers/gpu/drm/i915/i915_drv.h:665:
+#define IS_TIGERLAKE_DISPLAY_STEP(__i915, since, until) \
 	(IS_TIGERLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 1 checks, 40 lines checked
a14c9d1d9832 drm/i915/MTL: s/MTL/METEORLAKE for platform/subplatform defines
-:372: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#372: FILE: drivers/gpu/drm/i915/i915_drv.h:691:
+#define IS_METEORLAKE_GRAPHICS_STEP(__i915, variant, since, until) \
 	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))

-:377: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#377: FILE: drivers/gpu/drm/i915/i915_drv.h:695:
+#define IS_METEORLAKE_DISPLAY_STEP(__i915, since, until) \
 	(IS_METEORLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))

-:382: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#382: FILE: drivers/gpu/drm/i915/i915_drv.h:699:
+#define IS_METEORLAKE_MEDIA_STEP(__i915, since, until) \
 	(IS_METEORLAKE(__i915) && \
 	 IS_MEDIA_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 3 checks, 306 lines checked
2957fedb5d37 drm/i915/TGL: s/RKL/ROCKETLAKE for platform/subplatform defines
-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#34: FILE: drivers/gpu/drm/i915/i915_drv.h:669:
+#define IS_ROCKETLAKE_DISPLAY_STEP(p, since, until) \
 	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 16 lines checked
30a243ada797 drm/i915/JSL: s/JSL/JASPERLAKE for platform/subplatform defines
-:321: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#321: FILE: drivers/gpu/drm/i915/i915_drv.h:566:
+#define IS_JASPERLAKE_EHL(i915)	(IS_PLATFORM(i915, INTEL_JASPERLAKE) || \
 				IS_PLATFORM(i915, INTEL_ELKHARTLAKE))

-:333: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#333: FILE: drivers/gpu/drm/i915/i915_drv.h:660:
+#define IS_JASPERLAKE_EHL_GRAPHICS_STEP(p, since, until) \
+	(IS_JASPERLAKE_EHL(p) && IS_GRAPHICS_STEP(p, since, until))

-:335: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#335: FILE: drivers/gpu/drm/i915/i915_drv.h:662:
+#define IS_JASPERLAKE_EHL_DISPLAY_STEP(p, since, until) \
+	(IS_JASPERLAKE_EHL(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 3 checks, 278 lines checked
8bc8ff090e7e drm/i915/KBL: s/KBL/KABYLAKE for platform/subplatform defines
-:92: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#92: FILE: drivers/gpu/drm/i915/i915_drv.h:627:
+#define IS_KABYLAKE_GT2(i915)	(IS_KABYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)

-:95: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#95: FILE: drivers/gpu/drm/i915/i915_drv.h:629:
+#define IS_KABYLAKE_GT3(i915)	(IS_KABYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)

-:104: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#104: FILE: drivers/gpu/drm/i915/i915_drv.h:655:
+#define IS_KABYLAKE_GRAPHICS_STEP(i915, since, until) \
 	(IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, since, until))

-:107: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#107: FILE: drivers/gpu/drm/i915/i915_drv.h:657:
+#define IS_KABYLAKE_DISPLAY_STEP(i915, since, until) \
 	(IS_KABYLAKE(i915) && IS_DISPLAY_STEP(i915, since, until))

total: 0 errors, 0 warnings, 4 checks, 90 lines checked
4e0e5a343950 drm/i915/SKL: s/SKL/SKYLAKE for platform/subplatform defines
-:59: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#59: FILE: drivers/gpu/drm/i915/i915_drv.h:621:
+#define IS_SKYLAKE_GT2(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)

-:62: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#62: FILE: drivers/gpu/drm/i915/i915_drv.h:623:
+#define IS_SKYLAKE_GT3(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)

-:65: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#65: FILE: drivers/gpu/drm/i915/i915_drv.h:625:
+#define IS_SKYLAKE_GT4(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 4)

-:74: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#74: FILE: drivers/gpu/drm/i915/i915_drv.h:653:
+#define IS_SKYLAKE_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))

-:74: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#74: FILE: drivers/gpu/drm/i915/i915_drv.h:653:
+#define IS_SKYLAKE_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))

total: 0 errors, 1 warnings, 4 checks, 59 lines checked
1617167bacb7 drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
-:7: WARNING:TYPO_SPELLING: 'platfrom' may be misspelled - perhaps 'platform'?
#7: 
Driver refers to the platfrom Alderlake P as ADLP in places
                     ^^^^^^^^

-:111: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#111: FILE: drivers/gpu/drm/i915/i915_drv.h:680:
+#define IS_ALDERLAKE_P_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_P(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))

-:116: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#116: FILE: drivers/gpu/drm/i915/i915_drv.h:684:
+#define IS_ALDERLAKE_P_GRAPHICS_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_P(__i915) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))

total: 0 errors, 1 warnings, 2 checks, 77 lines checked
9ffb57cf3d69 drm/i915/rplp: s/ADLP/ALDERLAKE_P for RPLP defines
eed866c75eb9 drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines
2cfe542c1561 drm/i915/adls: s/ADLS/ALDERLAKE_S in platform and subplatform defines
-:7: WARNING:TYPO_SPELLING: 'platfrom' may be misspelled - perhaps 'platform'?
#7: 
Driver refers to the platfrom Alderlake S as ADLS in places
                     ^^^^^^^^

-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/i915_drv.h:672:
+#define IS_ALDERLAKE_S_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))

-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#63: FILE: drivers/gpu/drm/i915/i915_drv.h:676:
+#define IS_ALDERLAKE_GRAPHICS_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))

total: 0 errors, 1 warnings, 2 checks, 45 lines checked
d984a3c236a4 drm/i915/rplu: s/ADLP/ALDERLAKE_P in RPLU defines


