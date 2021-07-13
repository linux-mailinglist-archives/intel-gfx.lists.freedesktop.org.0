Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9570B3C7959
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 00:02:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A83FB6E147;
	Tue, 13 Jul 2021 22:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C2216E141;
 Tue, 13 Jul 2021 22:02:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4CA0BA47E2;
 Tue, 13 Jul 2021 22:02:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 13 Jul 2021 22:02:19 -0000
Message-ID: <162621373929.710.4425844873886396211@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210713193635.3390052-1-matthew.d.roper@intel.com>
In-Reply-To: <20210713193635.3390052-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Minor_revid/stepping_and_workaround_cleanup_=28rev5=29?=
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

Series: Minor revid/stepping and workaround cleanup (rev5)
URL   : https://patchwork.freedesktop.org/series/92299/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
486210f705f0 drm/i915/step: s/<platform>_revid_tbl/<platform>_revids
5a7f5fb477f9 drm/i915: Make pre-production detection use direct revid comparison
595f9e313f2d drm/i915/skl: Use revid->stepping tables
-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/i915_drv.h:1518:
+#define IS_SKL_GT_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GT_STEP(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 80 lines checked
57b7fcc6d24f drm/i915/kbl: Drop pre-production revision from stepping table
55db7b1abf0b drm/i915/bxt: Use revid->stepping tables
16a24e1a17f6 drm/i915/glk: Use revid->stepping tables
7609fedec7c6 drm/i915/icl: Use revid->stepping tables
-:120: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#120: FILE: drivers/gpu/drm/i915/i915_drv.h:1532:
+#define IS_ICL_GT_STEP(p, since, until) \
+	(IS_ICELAKE(p) && IS_GT_STEP(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 87 lines checked
2eb0bd7f91f4 drm/i915/jsl_ehl: Use revid->stepping tables
-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#56: FILE: drivers/gpu/drm/i915/i915_drv.h:1535:
+#define IS_JSL_EHL_GT_STEP(p, since, until) \
+	(IS_JSL_EHL(p) && IS_GT_STEP(p, since, until))

-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/i915_drv.h:1537:
+#define IS_JSL_EHL_DISPLAY_STEP(p, since, until) \
+	(IS_JSL_EHL(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 2 checks, 51 lines checked
d459b42fb71d drm/i915/rkl: Use revid->stepping tables
-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#49: FILE: drivers/gpu/drm/i915/i915_drv.h:1552:
+#define IS_RKL_DISPLAY_STEP(p, since, until) \
+	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 51 lines checked
c7a0a64af9c3 drm/i915/dg1: Use revid->stepping tables
-:129: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#129: FILE: drivers/gpu/drm/i915/i915_drv.h:1546:
+#define IS_DG1_GT_STEP(p, since, until) \
+	(IS_DG1(p) && IS_GT_STEP(p, since, until))

-:131: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#131: FILE: drivers/gpu/drm/i915/i915_drv.h:1548:
+#define IS_DG1_DISPLAY_STEP(p, since, until) \
+	(IS_DG1(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 2 checks, 118 lines checked
4616f4431b2a drm/i915/cnl: Drop all workarounds
8aac230553bb drm/i915/icl: Drop workarounds that only apply to pre-production steppings


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
