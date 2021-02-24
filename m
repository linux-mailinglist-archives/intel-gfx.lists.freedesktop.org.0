Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D4E323994
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 10:38:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFBB06EA70;
	Wed, 24 Feb 2021 09:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ABC026EA6E;
 Wed, 24 Feb 2021 09:38:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4D27A01BB;
 Wed, 24 Feb 2021 09:38:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 24 Feb 2021 09:38:56 -0000
Message-ID: <161415953664.17225.12158622201104297633@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1614094093.git.jani.nikula@intel.com>
In-Reply-To: <cover.1614094093.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_refactor_KBL/TGL/ADLS_stepping_scheme?=
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

Series: drm/i915: refactor KBL/TGL/ADLS stepping scheme
URL   : https://patchwork.freedesktop.org/series/87323/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c850cee093c5 drm/i915: remove unused ADLS_REVID_* macros
6679d541fc02 drm/i915: split out stepping info to a new file
-:117: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#117: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 158 lines checked
9f0ab3110d6b drm/i915: add new helpers for accessing stepping info
-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/i915_drv.h:1280:
+#define IS_DISPLAY_STEP(__i915, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
+	 INTEL_DISPLAY_STEP(__i915) >= (since) && INTEL_DISPLAY_STEP(__i915) <= (until))

-:32: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#32: FILE: drivers/gpu/drm/i915/i915_drv.h:1284:
+#define IS_GT_STEP(__i915, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_GT_STEP(__i915) == STEP_NONE), \
+	 INTEL_GT_STEP(__i915) >= (since) && INTEL_GT_STEP(__i915) <= (until))

total: 0 errors, 0 warnings, 2 checks, 70 lines checked
8ea29c76e36c drm/i915: switch KBL to the new stepping scheme
-:106: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#106: FILE: drivers/gpu/drm/i915/i915_drv.h:1478:
+#define IS_KBL_GT_STEP(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && IS_GT_STEP(dev_priv, since, until))

-:108: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#108: FILE: drivers/gpu/drm/i915/i915_drv.h:1480:
+#define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, since, until))

-:149: CHECK:LINE_SPACING: Please don't use multiple blank lines
#149: FILE: drivers/gpu/drm/i915/intel_stepping.c:16:
 
+

total: 0 errors, 0 warnings, 3 checks, 198 lines checked
b00cf6262f47 drm/i915: switch TGL and ADL to the new stepping scheme
-:52: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#52: FILE: drivers/gpu/drm/i915/i915_drv.h:1513:
+#define IS_TGL_DISP_STEPPING(__i915, since, until) \
+	(IS_TIGERLAKE(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))

-:60: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#60: FILE: drivers/gpu/drm/i915/i915_drv.h:1517:
+#define IS_TGL_UY_GT_STEPPING(__i915, since, until) \
+	((IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
+	 IS_GT_STEP(__i915, since, until))

-:69: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#69: FILE: drivers/gpu/drm/i915/i915_drv.h:1521:
+#define IS_TGL_GT_STEPPING(__i915, since, until) \
+	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
+	 IS_GT_STEP(__i915, since, until))

-:83: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#83: FILE: drivers/gpu/drm/i915/i915_drv.h:1538:
+#define IS_ADLS_DISP_STEPPING(__i915, since, until) \
+	(IS_ALDERLAKE_S(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))

-:91: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#91: FILE: drivers/gpu/drm/i915/i915_drv.h:1542:
+#define IS_ADLS_GT_STEPPING(__i915, since, until) \
+	(IS_ALDERLAKE_S(__i915) && \
+	 IS_GT_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 5 checks, 127 lines checked
9ea2f25d6c52 drm/i915: rename DISP_STEPPING->DISPLAY_STEP and GT_STEPPING->GT_STEP
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
7317a17b497d drm/i915: rename disp_stepping->display_step and gt_stepping->gt_step


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
