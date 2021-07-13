Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1133C76E0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 21:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 908716E116;
	Tue, 13 Jul 2021 19:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 850276E117;
 Tue, 13 Jul 2021 19:17:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7EBABA0169;
 Tue, 13 Jul 2021 19:17:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 13 Jul 2021 19:17:45 -0000
Message-ID: <162620386551.713.7065681304684343967@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210710033724.2459367-1-matthew.d.roper@intel.com>
In-Reply-To: <20210710033724.2459367-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Minor_revid/stepping_and_workaround_cleanup_=28rev4=29?=
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

Series: Minor revid/stepping and workaround cleanup (rev4)
URL   : https://patchwork.freedesktop.org/series/92299/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
62d758aadfe3 drm/i915/step: s/<platform>_revid_tbl/<platform>_revids
76bd03989163 drm/i915: Make pre-production detection use direct revid comparison
5c84247d6ac9 drm/i915/skl: Use revid->stepping tables
-:57: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#57: FILE: drivers/gpu/drm/i915/i915_drv.h:1518:
+#define IS_SKL_GT_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GT_STEP(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 80 lines checked
1c898561ba39 drm/i915/kbl: Drop pre-production revision from stepping table
27320b6e947b drm/i915/bxt: Use revid->stepping tables
bfc4af69ce3b drm/i915/glk: Use revid->stepping tables
ea04a99db33e drm/i915/icl: Use revid->stepping tables
-:116: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#116: FILE: drivers/gpu/drm/i915/i915_drv.h:1532:
+#define IS_ICL_GT_STEP(p, since, until) \
+	(IS_ICELAKE(p) && IS_GT_STEP(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 87 lines checked
95aec3b31d70 drm/i915/jsl_ehl: Use revid->stepping tables
-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#56: FILE: drivers/gpu/drm/i915/i915_drv.h:1535:
+#define IS_JSL_EHL_GT_STEP(p, since, until) \
+	(IS_JSL_EHL(p) && IS_GT_STEP(p, since, until))

-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/i915_drv.h:1537:
+#define IS_JSL_EHL_DISPLAY_STEP(p, since, until) \
+	(IS_JSL_EHL(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 2 checks, 51 lines checked
d515112313b0 drm/i915/rkl: Use revid->stepping tables
-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#49: FILE: drivers/gpu/drm/i915/i915_drv.h:1552:
+#define IS_RKL_DISPLAY_STEP(p, since, until) \
+	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 51 lines checked
28dea784c5d3 drm/i915/dg1: Use revid->stepping tables
-:129: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#129: FILE: drivers/gpu/drm/i915/i915_drv.h:1546:
+#define IS_DG1_GT_STEP(p, since, until) \
+	(IS_DG1(p) && IS_GT_STEP(p, since, until))

-:131: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#131: FILE: drivers/gpu/drm/i915/i915_drv.h:1548:
+#define IS_DG1_DISPLAY_STEP(p, since, until) \
+	(IS_DG1(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 2 checks, 118 lines checked
a66bc53c20b3 drm/i915/cnl: Drop all workarounds
d62d0ec1b3aa drm/i915/icl: Drop workarounds that only apply to pre-production steppings


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
