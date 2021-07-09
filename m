Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 623A83C1CC1
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 02:35:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F4E6E528;
	Fri,  9 Jul 2021 00:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 946AC6E528;
 Fri,  9 Jul 2021 00:35:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 875F8A00FD;
 Fri,  9 Jul 2021 00:35:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Fri, 09 Jul 2021 00:35:09 -0000
Message-ID: <162579090955.9811.17918596274571807618@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210708231821.9163-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210708231821.9163-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Get_stepping_info_from_RUNTIME=5FINFO-=3Estep?=
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

Series: Get stepping info from RUNTIME_INFO->step
URL   : https://patchwork.freedesktop.org/series/92346/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c109c3b789aa drm/i915: Make pre-production detection use direct revid comparison
8ad43b5ade6f drm/i915/skl: Use revid->stepping tables
-:54: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#54: FILE: drivers/gpu/drm/i915/i915_drv.h:1512:
+#define IS_SKL_GT_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GT_STEP(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 85 lines checked
daee55a59631 drm/i915/icl: Use revid->stepping tables
-:93: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#93: FILE: drivers/gpu/drm/i915/i915_drv.h:1519:
+#define IS_ICL_GT_STEP(p, since, until) \
+	(IS_ICELAKE(p) && IS_GT_STEP(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 94 lines checked
2f61797e047b drm/i915/jsl_ehl: Use revid->stepping tables
-:51: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#51: FILE: drivers/gpu/drm/i915/i915_drv.h:1522:
+#define IS_JSL_EHL_GT_STEP(p, since, until) \
+	(IS_JSL_EHL(p) && IS_GT_STEP(p, since, until))

-:53: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#53: FILE: drivers/gpu/drm/i915/i915_drv.h:1524:
+#define IS_JSL_EHL_DISPLAY_STEP(p, since, until) \
+	(IS_JSL_EHL(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 2 checks, 51 lines checked
95363c8b9dc9 drm/i915/rkl: Use revid->stepping tables
-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#48: FILE: drivers/gpu/drm/i915/i915_drv.h:1539:
+#define IS_RKL_DISPLAY_STEP(p, since, until) \
+	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 51 lines checked
da4af914b48b drm/i915/dg1: Use revid->stepping tables
-:124: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#124: FILE: drivers/gpu/drm/i915/i915_drv.h:1533:
+#define IS_DG1_GT_STEP(p, since, until) \
+	(IS_DG1(p) && IS_GT_STEP(p, since, until))

-:126: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#126: FILE: drivers/gpu/drm/i915/i915_drv.h:1535:
+#define IS_DG1_DISPLAY_STEP(p, since, until) \
+	(IS_DG1(p) && IS_DISPLAY_STEP(p, since, until))

total: 0 errors, 0 warnings, 2 checks, 118 lines checked
2bc809b73f67 drm/i915/cnl: Drop all workarounds
5b936277263e drm/i915/bxt: Use revid->stepping tables
de45975f5a75 drm/i915/step: Add intel_step_name() helper
-:22: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
#22: FILE: drivers/gpu/drm/i915/intel_step.c:186:
+const char *intel_step_name(enum intel_step step) {

-:26: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#26: FILE: drivers/gpu/drm/i915/intel_step.c:190:
+		return "A0";
+		break;

-:29: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#29: FILE: drivers/gpu/drm/i915/intel_step.c:193:
+		return "A1";
+		break;

-:32: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#32: FILE: drivers/gpu/drm/i915/intel_step.c:196:
+		return "A2";
+		break;

-:35: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#35: FILE: drivers/gpu/drm/i915/intel_step.c:199:
+		return "B0";
+		break;

-:38: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#38: FILE: drivers/gpu/drm/i915/intel_step.c:202:
+		return "B1";
+		break;

-:41: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#41: FILE: drivers/gpu/drm/i915/intel_step.c:205:
+		return "B2";
+		break;

-:44: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#44: FILE: drivers/gpu/drm/i915/intel_step.c:208:
+		return "C0";
+		break;

-:47: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#47: FILE: drivers/gpu/drm/i915/intel_step.c:211:
+		return "C1";
+		break;

-:50: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#50: FILE: drivers/gpu/drm/i915/intel_step.c:214:
+		return "D0";
+		break;

-:53: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#53: FILE: drivers/gpu/drm/i915/intel_step.c:217:
+		return "D1";
+		break;

-:56: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#56: FILE: drivers/gpu/drm/i915/intel_step.c:220:
+		return "E0";
+		break;

-:59: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#59: FILE: drivers/gpu/drm/i915/intel_step.c:223:
+		return "F0";
+		break;

-:62: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#62: FILE: drivers/gpu/drm/i915/intel_step.c:226:
+		return "G0";
+		break;

-:65: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#65: FILE: drivers/gpu/drm/i915/intel_step.c:229:
+		return "H0";
+		break;

-:68: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#68: FILE: drivers/gpu/drm/i915/intel_step.c:232:
+		return "I0";
+		break;

-:71: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#71: FILE: drivers/gpu/drm/i915/intel_step.c:235:
+		return "I1";
+		break;

-:74: WARNING:UNNECESSARY_BREAK: break is not useful after a return
#74: FILE: drivers/gpu/drm/i915/intel_step.c:238:
+		return "J0";
+		break;

total: 1 errors, 17 warnings, 0 checks, 67 lines checked
2ecb4107afb2 drm/i915/dmc: Modify intel_get_stepping_info()
-:72: ERROR:CODE_INDENT: code indent should use tabs where possible
#72: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:258:
+        si->substepping = step_name[1];$

-:72: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#72: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:258:
+        si->substepping = step_name[1];$

total: 1 errors, 1 warnings, 0 checks, 66 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
