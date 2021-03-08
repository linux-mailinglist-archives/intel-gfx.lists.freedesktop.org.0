Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECF73311B5
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 16:10:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E71676E830;
	Mon,  8 Mar 2021 15:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 374F86E811;
 Mon,  8 Mar 2021 15:10:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26B23A73C9;
 Mon,  8 Mar 2021 15:10:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 08 Mar 2021 15:10:46 -0000
Message-ID: <161521624612.17934.17750160148739273358@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1615211711.git.jani.nikula@intel.com>
In-Reply-To: <cover.1615211711.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_refactor_KBL/TGL/ADLS_stepping_scheme_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915: refactor KBL/TGL/ADLS stepping scheme (rev2)
URL   : https://patchwork.freedesktop.org/series/87323/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c52f0ea75128 drm/i915: remove unused ADLS_REVID_* macros
1d23fa9cb274 drm/i915: split out stepping info to a new file
-:123: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#123: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 162 lines checked
93d71ad11f06 drm/i915: add new helpers for accessing stepping info
-:30: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#30: FILE: drivers/gpu/drm/i915/i915_drv.h:1280:
+#define IS_DISPLAY_STEP(__i915, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
+	 INTEL_DISPLAY_STEP(__i915) >= (since) && INTEL_DISPLAY_STEP(__i915) <= (until))

-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#34: FILE: drivers/gpu/drm/i915/i915_drv.h:1284:
+#define IS_GT_STEP(__i915, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_GT_STEP(__i915) == STEP_NONE), \
+	 INTEL_GT_STEP(__i915) >= (since) && INTEL_GT_STEP(__i915) <= (until))

total: 0 errors, 0 warnings, 2 checks, 70 lines checked
c5a4a8ab6645 drm/i915: switch KBL to the new stepping scheme
-:108: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#108: FILE: drivers/gpu/drm/i915/i915_drv.h:1478:
+#define IS_KBL_GT_STEP(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && IS_GT_STEP(dev_priv, since, until))

-:110: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#110: FILE: drivers/gpu/drm/i915/i915_drv.h:1480:
+#define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, since, until))

-:151: CHECK:LINE_SPACING: Please don't use multiple blank lines
#151: FILE: drivers/gpu/drm/i915/intel_step.c:16:
 
+

total: 0 errors, 0 warnings, 3 checks, 198 lines checked
3ab291f069dc drm/i915: switch TGL and ADL to the new stepping scheme
-:54: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#54: FILE: drivers/gpu/drm/i915/i915_drv.h:1513:
+#define IS_TGL_DISP_STEPPING(__i915, since, until) \
+	(IS_TIGERLAKE(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))

-:62: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#62: FILE: drivers/gpu/drm/i915/i915_drv.h:1517:
+#define IS_TGL_UY_GT_STEPPING(__i915, since, until) \
+	((IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
+	 IS_GT_STEP(__i915, since, until))

-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#71: FILE: drivers/gpu/drm/i915/i915_drv.h:1521:
+#define IS_TGL_GT_STEPPING(__i915, since, until) \
+	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
+	 IS_GT_STEP(__i915, since, until))

-:85: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#85: FILE: drivers/gpu/drm/i915/i915_drv.h:1538:
+#define IS_ADLS_DISP_STEPPING(__i915, since, until) \
+	(IS_ALDERLAKE_S(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))

-:93: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#93: FILE: drivers/gpu/drm/i915/i915_drv.h:1542:
+#define IS_ADLS_GT_STEPPING(__i915, since, until) \
+	(IS_ALDERLAKE_S(__i915) && \
+	 IS_GT_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 5 checks, 127 lines checked
f94a68bcd095 drm/i915: rename DISP_STEPPING->DISPLAY_STEP and GT_STEPPING->GT_STEP
-:113: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#113: FILE: drivers/gpu/drm/i915/i915_drv.h:1513:
+#define IS_TGL_DISPLAY_STEP(__i915, since, until) \
 	(IS_TIGERLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))

-:118: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#118: FILE: drivers/gpu/drm/i915/i915_drv.h:1517:
+#define IS_TGL_UY_GT_STEP(__i915, since, until) \
 	((IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
 	 IS_GT_STEP(__i915, since, until))

-:123: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#123: FILE: drivers/gpu/drm/i915/i915_drv.h:1521:
+#define IS_TGL_GT_STEP(__i915, since, until) \
 	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
 	 IS_GT_STEP(__i915, since, until))

-:132: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#132: FILE: drivers/gpu/drm/i915/i915_drv.h:1538:
+#define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))

-:137: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#137: FILE: drivers/gpu/drm/i915/i915_drv.h:1542:
+#define IS_ADLS_GT_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_GT_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 5 checks, 117 lines checked
19a6fa288b97 drm/i915: rename disp_stepping->display_step and gt_stepping->gt_step
d1a2f1d5bb5c drm/i915: rename i915_rev_steppings->intel_step_info


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
