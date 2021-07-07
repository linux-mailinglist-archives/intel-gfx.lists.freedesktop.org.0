Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 237533BE282
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 07:26:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 206CC6E063;
	Wed,  7 Jul 2021 05:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43A356E030;
 Wed,  7 Jul 2021 05:26:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34A8BA41FB;
 Wed,  7 Jul 2021 05:26:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Wed, 07 Jul 2021 05:26:46 -0000
Message-ID: <162563560619.30455.2329423258168109521@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210707050645.31043-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210707050645.31043-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Abstract_steppings_for_all_platforms?=
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

Series: Abstract steppings for all platforms
URL   : https://patchwork.freedesktop.org/series/92257/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d2e17a33b144 drm/i915/step: s/<platform>_revid_tbl/<platform>_revids
2df22bd709cb drm/i915/dmc: Use RUNTIME_INFO->step for DMC
-:46: CHECK:BRACES: braces {} should be used on all arms of this statement
#46: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:289:
+	if (IS_ICELAKE(dev_priv) || IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))
[...]
+	else {
[...]

-:47: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:290:
+		return INTEL_REVID(dev_priv) < size ? si + INTEL_REVID(dev_priv) : &no_stepping_info;

-:49: CHECK:BRACES: Unbalanced braces around else statement
#49: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:292:
+	else {

total: 0 errors, 1 warnings, 2 checks, 79 lines checked
136910f1ca08 drm/i915/skl: s/IS_SKL_REVID/IS_SKL_GT_STEP
-:113: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#113: FILE: drivers/gpu/drm/i915/i915_drv.h:1465:
+#define IS_SKL_GT_STEP(__i915, since, until) \
+	(IS_SKYLAKE(__i915) && \
+	 IS_GT_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 1 checks, 127 lines checked
512ae6c9038f drm/i915/bxt: s/IS_BXT_REVID/IS_BXT_GT_STEP
-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#87: FILE: drivers/gpu/drm/i915/i915_drv.h:1469:
+#define IS_BXT_GT_STEP(__i915, since, until) \
+	(IS_BROXTON(__i915) && \
+	 IS_GT_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 1 checks, 105 lines checked
430701f14cab drm/i915/icl: s/IS_ICL_REVID/IS_ICL_GT_STEP
-:254: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#254: FILE: drivers/gpu/drm/i915/i915_drv.h:1494:
+#define IS_ICL_GT_STEP(__i915, since, until) \
+	(IS_ICELAKE(__i915) && \
+	 IS_GT_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 1 checks, 260 lines checked
c7cb92db916d drm/i915/glk: s/IS_GLK_REVID/IS_GLK_GT_STEP
-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#39: FILE: drivers/gpu/drm/i915/i915_drv.h:1479:
+#define IS_GLK_GT_STEP(__i915, since, until) \
+	(IS_GEMINILAKE(__i915) && \
+	IS_GT_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 1 checks, 46 lines checked
3866fe5b236c drm/i915/rkl: s/IS_RKL_REVID/IS_RKL_GT_STEP
-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/i915_drv.h:1514:
+#define IS_RKL_GT_STEP(__i915, since, until) \
+	(IS_ROCKETLAKE(__i915) && \
+	 IS_GT_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 1 checks, 52 lines checked
88c5f0df3313 drm/i915/dg1: s/IS_DG1_REVID/IS_DG1_GT_STEP
-:99: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#99: FILE: drivers/gpu/drm/i915/i915_drv.h:1518:
+#define IS_DG1_GT_STEP(__i915, since, until) \
+	(IS_DG1(__i915) && \
+	 IS_GT_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 1 checks, 98 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
