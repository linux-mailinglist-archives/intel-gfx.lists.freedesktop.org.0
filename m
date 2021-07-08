Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3893BF54D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 07:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C116E057;
	Thu,  8 Jul 2021 05:48:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 730706E04E;
 Thu,  8 Jul 2021 05:48:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6982AA7DFC;
 Thu,  8 Jul 2021 05:48:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 08 Jul 2021 05:48:39 -0000
Message-ID: <162572331940.32072.12631156783898002850@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210708053819.2120187-1-matthew.d.roper@intel.com>
In-Reply-To: <20210708053819.2120187-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Minor_revid/stepping_and_workaround_cleanup?=
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

Series: Minor revid/stepping and workaround cleanup
URL   : https://patchwork.freedesktop.org/series/92299/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
76c5a033ed04 drm/i915: Make pre-production detection use direct revid comparison
c88cee5325fe drm/i915/skl: Use revid->stepping tables
-:54: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#54: FILE: drivers/gpu/drm/i915/i915_drv.h:1450:
+#define IS_SKL_GT_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GT_STEP(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 85 lines checked
4f8fb265f095 drm/i915/icl: Use revid->stepping tables
-:93: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#93: FILE: drivers/gpu/drm/i915/i915_drv.h:1457:
+#define IS_ICL_GT_STEP(p, since, until) \
+	(IS_ICELAKE(p) && IS_GT_STEP(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 94 lines checked
46752176291f drm/i915/jsl_ehl: Use revid->stepping tables
-:51: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#51: FILE: drivers/gpu/drm/i915/i915_drv.h:1460:
+#define IS_JSL_EHL_GT_STEP(p, since, until) \
+	(IS_JSL_EHL(p) && IS_GT_STEP(p, since, until))

-:53: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#53: FILE: drivers/gpu/drm/i915/i915_drv.h:1462:
+#define IS_JSL_EHL_DISPLAY_STEP(p, since, until) \
+	(IS_JSL_EHL(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 2 checks, 51 lines checked
54dfa2be0428 drm/i915/rkl: Use revid->stepping tables
-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#48: FILE: drivers/gpu/drm/i915/i915_drv.h:1477:
+#define IS_RKL_DISPLAY_STEP(p, since, until) \
+	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 51 lines checked
9e913fff5691 drm/i915/dg1: Use revid->stepping tables
-:124: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#124: FILE: drivers/gpu/drm/i915/i915_drv.h:1471:
+#define IS_DG1_GT_STEP(p, since, until) \
+	(IS_DG1(p) && IS_GT_STEP(p, since, until))

-:126: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#126: FILE: drivers/gpu/drm/i915/i915_drv.h:1473:
+#define IS_DG1_DISPLAY_STEP(p, since, until) \
+	(IS_DG1(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 2 checks, 118 lines checked
c78151696795 drm/i915/cnl: Drop all workarounds


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
