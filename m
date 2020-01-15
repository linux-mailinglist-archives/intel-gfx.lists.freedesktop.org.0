Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EECF13B77D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 03:09:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF016E822;
	Wed, 15 Jan 2020 02:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 727396E822;
 Wed, 15 Jan 2020 02:09:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 63840A47EB;
 Wed, 15 Jan 2020 02:09:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 15 Jan 2020 02:09:32 -0000
Message-ID: <157905417237.2009.3113761780676651681@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Commit_early_to_GuC?=
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

Series: Commit early to GuC
URL   : https://patchwork.freedesktop.org/series/72031/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c114a4a8e211 drm/i915/guc: Kill USES_GUC macro
033b28e648f2 drm/i915/guc: Kill USES_GUC_SUBMISSION macro
4eb628448c92 drm/i915/uc: Improve tracking of uC init status
-:208: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#208: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:64:
+#define __uc_state_checker(x, state, required) \
+static inline bool intel_uc_##state##_##x(struct intel_uc *uc) \
+{ \
+	return intel_##x##_is_##required(&uc->x); \
 }

-:214: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#214: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:70:
+#define uc_state_checkers(x) \
+__uc_state_checker(x, supports, supported) \
+__uc_state_checker(x, wants, wanted) \
+__uc_state_checker(x, uses, used)

-:214: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#214: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:70:
+#define uc_state_checkers(x) \
+__uc_state_checker(x, supports, supported) \
+__uc_state_checker(x, wants, wanted) \
+__uc_state_checker(x, uses, used)

total: 1 errors, 0 warnings, 2 checks, 190 lines checked
827bb05aa73b drm/i915/uc: Abort early on uc_init failure
e46e55860fda drm/i915/guc: Apply new uC status tracking to GuC submission as well
-:211: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#211: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:64:
+#define __uc_state_checker(x, func, state, required) \
+static inline bool intel_uc_##state##_##func(struct intel_uc *uc) \
 { \
+	return intel_##func##_is_##required(&uc->x); \
 }

-:222: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#222: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:70:
+#define uc_state_checkers(x, func) \
+__uc_state_checker(x, func, supports, supported) \
+__uc_state_checker(x, func, wants, wanted) \
+__uc_state_checker(x, func, uses, used)

-:222: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#222: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:70:
+#define uc_state_checkers(x, func) \
+__uc_state_checker(x, func, supports, supported) \
+__uc_state_checker(x, func, wants, wanted) \
+__uc_state_checker(x, func, uses, used)

-:222: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'func' - possible side-effects?
#222: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:70:
+#define uc_state_checkers(x, func) \
+__uc_state_checker(x, func, supports, supported) \
+__uc_state_checker(x, func, wants, wanted) \
+__uc_state_checker(x, func, uses, used)

total: 1 errors, 0 warnings, 3 checks, 225 lines checked
6e76e718c238 drm/i915/guc: Start considering GuC submission a proper back-end
522c1abc9b0b HAX: force enable_guc=2
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 8 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
