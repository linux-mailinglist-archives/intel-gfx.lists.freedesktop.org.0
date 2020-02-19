Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7456F163B81
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 04:43:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5A016EB09;
	Wed, 19 Feb 2020 03:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49F676EB09;
 Wed, 19 Feb 2020 03:43:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43F3DA011A;
 Wed, 19 Feb 2020 03:43:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 19 Feb 2020 03:43:29 -0000
Message-ID: <158208380927.21060.3630952761647945209@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C01/10=5D_drm/i915/debugfs=3A_P?=
 =?utf-8?q?ass_guc=5Flog_struct_to_i915=5Fguc=5Flog=5Finfo?=
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

Series: series starting with [CI,01/10] drm/i915/debugfs: Pass guc_log struct to i915_guc_log_info
URL   : https://patchwork.freedesktop.org/series/73610/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c9413e3a8cde drm/i915/debugfs: Pass guc_log struct to i915_guc_log_info
a6ea555cb6b1 drm/i915/guc: Kill USES_GUC macro
38db7bd09a6d drm/i915/guc: Kill USES_GUC_SUBMISSION macro
22e4c362bb86 drm/i915/uc: Update the FW status on injected fetch error
ca3c50fa47ed drm/i915/uc: autogenerate uC checker functions
-:32: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#32: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:43:
+#define __uc_state_checker(x, state, required) \
+static inline bool intel_uc_##state##_##x(struct intel_uc *uc) \
+{ \
+	return intel_##x##_is_##required(&uc->x); \
 }

-:42: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#42: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:49:
+#define uc_state_checkers(x) \
+__uc_state_checker(x, supports, supported) \
+__uc_state_checker(x, uses, enabled)

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:49:
+#define uc_state_checkers(x) \
+__uc_state_checker(x, supports, supported) \
+__uc_state_checker(x, uses, enabled)

total: 1 errors, 0 warnings, 2 checks, 44 lines checked
cd5541c40e50 drm/i915/uc: Improve tracking of uC init status
0d79221ea12e drm/i915/guc: Apply new uC status tracking to GuC submission as well
-:247: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#247: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:65:
+#define __uc_state_checker(x, func, state, required) \
+static inline bool intel_uc_##state##_##func(struct intel_uc *uc) \
 { \
+	return intel_##func##_is_##required(&uc->x); \
 }

-:258: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#258: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:71:
+#define uc_state_checkers(x, func) \
+__uc_state_checker(x, func, supports, supported) \
+__uc_state_checker(x, func, wants, wanted) \
+__uc_state_checker(x, func, uses, used)

-:258: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#258: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:71:
+#define uc_state_checkers(x, func) \
+__uc_state_checker(x, func, supports, supported) \
+__uc_state_checker(x, func, wants, wanted) \
+__uc_state_checker(x, func, uses, used)

-:258: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'func' - possible side-effects?
#258: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:71:
+#define uc_state_checkers(x, func) \
+__uc_state_checker(x, func, supports, supported) \
+__uc_state_checker(x, func, wants, wanted) \
+__uc_state_checker(x, func, uses, used)

total: 1 errors, 0 warnings, 3 checks, 250 lines checked
65d24a2b9584 drm/i915/uc: Abort early on uc_init failure
ff1adf98f8d4 drm/i915/uc: consolidate firmware cleanup
50bb392a051d HAX: drm/i915: default to enable_guc=2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
