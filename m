Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D21F542E4E5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 01:50:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B536ECA2;
	Thu, 14 Oct 2021 23:50:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA2056ECA2;
 Thu, 14 Oct 2021 23:50:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C40F9A8836;
 Thu, 14 Oct 2021 23:50:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Oct 2021 23:50:15 -0000
Message-ID: <163425541577.4536.18302712046184152203@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211014172005.27155-1-matthew.brost@intel.com>
In-Reply-To: <20211014172005.27155-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Parallel_submission_aka_multi-bb_execbuf_=28rev7=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Parallel submission aka multi-bb execbuf (rev7)
URL   : https://patchwork.freedesktop.org/series/92789/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
84599e51bd29 drm/i915/guc: Move GuC guc_id allocation under submission state sub-struct
8ae907f4ab40 drm/i915/guc: Take GT PM ref when deregistering context
-:83: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#83: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
+#define with_intel_gt_pm(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

-:83: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
#83: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
+#define with_intel_gt_pm(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

total: 0 errors, 0 warnings, 2 checks, 290 lines checked
caa597edafab drm/i915/guc: Take engine PM when a context is pinned with GuC submission
35ecc2c2e66d drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
5913bebc8358 drm/i915: Add logical engine mapping
81882ab40924 drm/i915: Expose logical engine instance to user
a91a24abd8c2 drm/i915/guc: Introduce context parent-child relationship
08c07249af20 drm/i915/guc: Add multi-lrc context registration
fda03257da24 drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts
84e7e2921b9b drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids
937b37f379ea drm/i915/guc: Implement parallel context pin / unpin functions
fe0a09e6a3fb drm/i915/guc: Implement multi-lrc submission
-:398: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#398: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:774:
+		*wqi++ = child->ring->tail / sizeof(u64);
 		^

total: 0 errors, 0 warnings, 1 checks, 597 lines checked
264ff2b6144b drm/i915/guc: Insert submit fences between requests in parent-child relationship
45d246c108f9 drm/i915/guc: Implement multi-lrc reset
-:22: WARNING:TYPO_SPELLING: 'ununsed' may be misspelled - perhaps 'unused'?
#22: 
  - Delete ununsed is_multi_lrc function
           ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 163 lines checked
0f3988587b37 drm/i915/guc: Update debugfs for GuC multi-lrc
b474e9648a8b drm/i915/guc: Connect UAPI to GuC multi-lrc interface
f6db1ca849ee drm/i915/doc: Update parallel submit doc to point to i915_drm.h
-:13: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#13: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
4ba62c9f9d88 drm/i915/guc: Add basic GuC multi-lrc selftest
-:22: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#22: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 190 lines checked
a79f00b57457 drm/i915/guc: Implement no mid batch preemption for multi-lrc
1d47f6b2307a drm/i915: Multi-BB execbuf
-:385: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
#385: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1874:
+#define for_each_batch_create_order(_eb, _i) \
+	for ((_i) = 0; (_i) < (_eb)->num_batches; ++(_i))

-:387: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#387: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1876:
+#define for_each_batch_add_order(_eb, _i) \
+	BUILD_BUG_ON(!typecheck(int, _i)); \
+	for ((_i) = (_eb)->num_batches - 1; (_i) >= 0; --(_i))

-:387: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
#387: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1876:
+#define for_each_batch_add_order(_eb, _i) \
+	BUILD_BUG_ON(!typecheck(int, _i)); \
+	for ((_i) = (_eb)->num_batches - 1; (_i) >= 0; --(_i))

total: 1 errors, 0 warnings, 2 checks, 1289 lines checked
39cdfa25bc1e drm/i915/guc: Handle errors in multi-lrc requests
fe5061134b09 drm/i915: Make request conflict tracking understand parallel submits
3b3b377a0bbd drm/i915: Update I915_GEM_BUSY IOCTL to understand composite fences
25451cb4c07c drm/i915: Enable multi-bb execbuf
2bc7c2c9b7ac drm/i915/execlists: Weak parallel submission support for execlists


