Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2198034A8FA
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 14:50:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D366F3C2;
	Fri, 26 Mar 2021 13:50:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 896FD6E1F9;
 Fri, 26 Mar 2021 13:50:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B14C4A0003;
 Fri, 26 Mar 2021 13:50:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 26 Mar 2021 13:50:35 -0000
Message-ID: <161676663572.10686.1832624168717678807@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1616764798.git.jani.nikula@intel.com>
In-Reply-To: <cover.1616764798.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_refactor_KBL/TGL/ADLS_stepping_scheme_=28rev3?=
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

Series: drm/i915: refactor KBL/TGL/ADLS stepping scheme (rev3)
URL   : https://patchwork.freedesktop.org/series/87323/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
879114240a25 drm/i915: split out stepping info to a new file
-:124: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#124: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 162 lines checked
a158a630e648 drm/i915: add new helpers for accessing stepping info
-:36: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#36: FILE: drivers/gpu/drm/i915/i915_drv.h:1274:
+#define IS_DISPLAY_STEP(__i915, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
+	 INTEL_DISPLAY_STEP(__i915) >= (since) && INTEL_DISPLAY_STEP(__i915) <= (until))

-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#40: FILE: drivers/gpu/drm/i915/i915_drv.h:1278:
+#define IS_GT_STEP(__i915, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_GT_STEP(__i915) == STEP_NONE), \
+	 INTEL_GT_STEP(__i915) >= (since) && INTEL_GT_STEP(__i915) <= (until))

total: 0 errors, 0 warnings, 2 checks, 66 lines checked
c4a274f64cda drm/i915: switch KBL to the new stepping scheme
-:114: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#114: FILE: drivers/gpu/drm/i915/i915_drv.h:1469:
+#define IS_KBL_GT_STEP(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && IS_GT_STEP(dev_priv, since, until))

-:116: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#116: FILE: drivers/gpu/drm/i915/i915_drv.h:1471:
+#define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, since, until))

-:157: CHECK:LINE_SPACING: Please don't use multiple blank lines
#157: FILE: drivers/gpu/drm/i915/intel_step.c:16:
 
+

total: 0 errors, 0 warnings, 3 checks, 198 lines checked
3dce1f7cf58b drm/i915: switch TGL and ADL to the new stepping scheme
-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/i915_drv.h:1504:
+#define IS_TGL_DISP_STEPPING(__i915, since, until) \
+	(IS_TIGERLAKE(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))

-:66: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#66: FILE: drivers/gpu/drm/i915/i915_drv.h:1508:
+#define IS_TGL_UY_GT_STEPPING(__i915, since, until) \
+	((IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
+	 IS_GT_STEP(__i915, since, until))

-:75: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#75: FILE: drivers/gpu/drm/i915/i915_drv.h:1512:
+#define IS_TGL_GT_STEPPING(__i915, since, until) \
+	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
+	 IS_GT_STEP(__i915, since, until))

-:89: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#89: FILE: drivers/gpu/drm/i915/i915_drv.h:1529:
+#define IS_ADLS_DISP_STEPPING(__i915, since, until) \
+	(IS_ALDERLAKE_S(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))

-:97: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#97: FILE: drivers/gpu/drm/i915/i915_drv.h:1533:
+#define IS_ADLS_GT_STEPPING(__i915, since, until) \
+	(IS_ALDERLAKE_S(__i915) && \
+	 IS_GT_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 5 checks, 127 lines checked
a01b77b14b7e drm/i915: rename DISP_STEPPING->DISPLAY_STEP and GT_STEPPING->GT_STEP
-:117: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#117: FILE: drivers/gpu/drm/i915/i915_drv.h:1504:
+#define IS_TGL_DISPLAY_STEP(__i915, since, until) \
 	(IS_TIGERLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))

-:122: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#122: FILE: drivers/gpu/drm/i915/i915_drv.h:1508:
+#define IS_TGL_UY_GT_STEP(__i915, since, until) \
 	((IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
 	 IS_GT_STEP(__i915, since, until))

-:127: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#127: FILE: drivers/gpu/drm/i915/i915_drv.h:1512:
+#define IS_TGL_GT_STEP(__i915, since, until) \
 	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
 	 IS_GT_STEP(__i915, since, until))

-:136: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#136: FILE: drivers/gpu/drm/i915/i915_drv.h:1529:
+#define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))

-:141: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#141: FILE: drivers/gpu/drm/i915/i915_drv.h:1533:
+#define IS_ADLS_GT_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_GT_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 5 checks, 117 lines checked
cf5108b09da1 drm/i915: rename disp_stepping->display_step and gt_stepping->gt_step
505e061b09f9 drm/i915: rename i915_rev_steppings->intel_step_info


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
