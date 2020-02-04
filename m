Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 499021521A5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 22:02:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42F606E8F4;
	Tue,  4 Feb 2020 21:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 597B16E8F4;
 Tue,  4 Feb 2020 21:02:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5079CA00C7;
 Tue,  4 Feb 2020 21:02:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 04 Feb 2020 21:02:53 -0000
Message-ID: <158085017330.25089.7976796369731203309@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Commit_early_to_GuC_=28rev2=29?=
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

Series: Commit early to GuC (rev2)
URL   : https://patchwork.freedesktop.org/series/72031/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e5cb7d5a536e drm/i915/debugfs: Pass guc_log struct to i915_guc_log_info
ebe1197848d5 drm/i915/guc: Kill USES_GUC macro
2243201c583e drm/i915/guc: Kill USES_GUC_SUBMISSION macro
f0481b5c0bfb drm/i915/uc: Update the FW status on injected fetch error
0cecb99111fb drm/i915/uc: autogenerate uC checker functions
-:31: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#31: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:43:
+#define __uc_state_checker(x, state, required) \
+static inline bool intel_uc_##state##_##x(struct intel_uc *uc) \
+{ \
+	return intel_##x##_is_##required(&uc->x); \
 }

-:41: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#41: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:49:
+#define uc_state_checkers(x) \
+__uc_state_checker(x, supports, supported) \
+__uc_state_checker(x, uses, enabled)

-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:49:
+#define uc_state_checkers(x) \
+__uc_state_checker(x, supports, supported) \
+__uc_state_checker(x, uses, enabled)

total: 1 errors, 0 warnings, 2 checks, 44 lines checked
a5eb1097207f drm/i915/uc: Improve tracking of uC init status
0cd48e992b8b drm/i915/guc: Apply new uC status tracking to GuC submission as well
-:212: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#212: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:64:
+#define __uc_state_checker(x, func, state, required) \
+static inline bool intel_uc_##state##_##func(struct intel_uc *uc) \
 { \
+	return intel_##func##_is_##required(&uc->x); \
 }

-:223: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#223: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:70:
+#define uc_state_checkers(x, func) \
+__uc_state_checker(x, func, supports, supported) \
+__uc_state_checker(x, func, wants, wanted) \
+__uc_state_checker(x, func, uses, used)

-:223: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#223: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:70:
+#define uc_state_checkers(x, func) \
+__uc_state_checker(x, func, supports, supported) \
+__uc_state_checker(x, func, wants, wanted) \
+__uc_state_checker(x, func, uses, used)

-:223: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'func' - possible side-effects?
#223: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:70:
+#define uc_state_checkers(x, func) \
+__uc_state_checker(x, func, supports, supported) \
+__uc_state_checker(x, func, wants, wanted) \
+__uc_state_checker(x, func, uses, used)

total: 1 errors, 0 warnings, 3 checks, 225 lines checked
61eee547ff65 drm/i915/uc: Abort early on uc_init failure
1d318ae28200 drm/i915/uc: consolidate firmware cleanup
e4ad6a295fb1 HAX: drm/i915: default to enable_guc=2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
