Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD66D42CCF3
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 23:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0094D6EBB5;
	Wed, 13 Oct 2021 21:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDF3C6EBFD;
 Wed, 13 Oct 2021 21:40:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1F58A00FD;
 Wed, 13 Oct 2021 21:40:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Oct 2021 21:40:31 -0000
Message-ID: <163416123188.10254.16524381483196937436@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211013204231.19287-1-matthew.brost@intel.com>
In-Reply-To: <20211013204231.19287-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Parallel_submission_aka_multi-bb_execbuf_=28rev6=29?=
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

Series: Parallel submission aka multi-bb execbuf (rev6)
URL   : https://patchwork.freedesktop.org/series/92789/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
96b392951d3d drm/i915/guc: Move GuC guc_id allocation under submission state sub-struct
a7d1c1c82188 drm/i915/guc: Take GT PM ref when deregistering context
-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#82: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
+#define with_intel_gt_pm(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
#82: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
+#define with_intel_gt_pm(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

total: 0 errors, 0 warnings, 2 checks, 290 lines checked
fce1426ce7b7 drm/i915/guc: Take engine PM when a context is pinned with GuC submission
7751cb08a525 drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
edf6b764f7ad drm/i915: Add logical engine mapping
baf5dc1fc9df drm/i915: Expose logical engine instance to user
3fcd1f83dde6 drm/i915/guc: Introduce context parent-child relationship
150093ea7387 drm/i915/guc: Add multi-lrc context registration
0d569f349c42 drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts
0bdfa5c16cbe drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids
15aba0f8dc81 drm/i915/guc: Implement parallel context pin / unpin functions
13fb055cc22c drm/i915/guc: Implement multi-lrc submission
-:394: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#394: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:775:
+		*wqi++ = child->ring->tail / sizeof(u64);
 		^

total: 0 errors, 0 warnings, 1 checks, 597 lines checked
31917c1dcf79 drm/i915/guc: Insert submit fences between requests in parent-child relationship
cc32a9e001af drm/i915/guc: Implement multi-lrc reset
fc3628d02c3a drm/i915/guc: Update debugfs for GuC multi-lrc
a6dbcce14531 drm/i915/guc: Connect UAPI to GuC multi-lrc interface
304fa81a9399 drm/i915/doc: Update parallel submit doc to point to i915_drm.h
-:13: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#13: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
27d342e07431 drm/i915/guc: Add basic GuC multi-lrc selftest
-:22: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#22: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 190 lines checked
1984b91d5186 drm/i915/guc: Implement no mid batch preemption for multi-lrc
f5b8b45334d5 drm/i915: Multi-BB execbuf
-:381: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
#381: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1874:
+#define for_each_batch_create_order(_eb, _i) \
+	for ((_i) = 0; (_i) < (_eb)->num_batches; ++(_i))

-:383: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#383: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1876:
+#define for_each_batch_add_order(_eb, _i) \
+	BUILD_BUG_ON(!typecheck(int, _i)); \
+	for ((_i) = (_eb)->num_batches - 1; (_i) >= 0; --(_i))

-:383: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
#383: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1876:
+#define for_each_batch_add_order(_eb, _i) \
+	BUILD_BUG_ON(!typecheck(int, _i)); \
+	for ((_i) = (_eb)->num_batches - 1; (_i) >= 0; --(_i))

total: 1 errors, 0 warnings, 2 checks, 1289 lines checked
5370262c7b18 drm/i915/guc: Handle errors in multi-lrc requests
45927bbbecde drm/i915: Make request conflict tracking understand parallel submits
20f16cbe9cab drm/i915: Update I915_GEM_BUSY IOCTL to understand composite fences
1f94d4826235 drm/i915: Enable multi-bb execbuf
9a0c2d682fa1 drm/i915/execlists: Weak parallel submission support for execlists


