Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7741421C2D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 03:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D5296F4F8;
	Tue,  5 Oct 2021 01:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A69AD6F4CD;
 Tue,  5 Oct 2021 01:49:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E11AAA0EA;
 Tue,  5 Oct 2021 01:49:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Oct 2021 01:49:27 -0000
Message-ID: <163339856761.19282.4508910717219115967@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211004220637.14746-1-matthew.brost@intel.com>
In-Reply-To: <20211004220637.14746-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Parallel_submission_aka_multi-bb_execbuf_=28rev5=29?=
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

Series: Parallel submission aka multi-bb execbuf (rev5)
URL   : https://patchwork.freedesktop.org/series/92789/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fc9c9fb6630a drm/i915/guc: Move GuC guc_id allocation under submission state sub-struct
fa11631fe33a drm/i915/guc: Take GT PM ref when deregistering context
-:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#79: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
+#define with_intel_gt_pm(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

-:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
#79: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
+#define with_intel_gt_pm(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

total: 0 errors, 0 warnings, 2 checks, 290 lines checked
f26913441370 drm/i915/guc: Take engine PM when a context is pinned with GuC submission
00cd343ff096 drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
b94a2d8dd4a6 drm/i915: Add logical engine mapping
a352b3260782 drm/i915: Expose logical engine instance to user
b00df96b3c7a drm/i915/guc: Introduce context parent-child relationship
4a15247fee14 drm/i915/guc: Add multi-lrc context registration
d99a9b87a2b4 drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts
94fb468f6a15 drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids
4fefc07d9141 drm/i915/guc: Implement parallel context pin / unpin functions
cce8ed09d2b3 drm/i915/guc: Implement multi-lrc submission
-:364: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#364: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:771:
+		*wqi++ = child->ring->tail / sizeof(u64);
 		^

total: 0 errors, 0 warnings, 1 checks, 570 lines checked
1327655fea5c drm/i915/guc: Insert submit fences between requests in parent-child relationship
faaaa22df6f9 drm/i915/guc: Implement multi-lrc reset
45f5266f4bc8 drm/i915/guc: Update debugfs for GuC multi-lrc
-:23: CHECK:LINE_SPACING: Please don't use multiple blank lines
#23: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3707:
 
+

total: 0 errors, 0 warnings, 1 checks, 67 lines checked
4121bd97a8b5 drm/i915: Fix bug in user proto-context creation that leaked contexts
1a690133eb25 drm/i915/guc: Connect UAPI to GuC multi-lrc interface
2f9e9c7755e0 drm/i915/doc: Update parallel submit doc to point to i915_drm.h
-:13: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#13: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
77f007a50c5c drm/i915/guc: Add basic GuC multi-lrc selftest
-:22: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#22: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 190 lines checked
12e50491ae0d drm/i915/guc: Implement no mid batch preemption for multi-lrc
a2d809b95c10 drm/i915: Multi-BB execbuf
-:369: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
#369: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1854:
+#define for_each_batch_create_order(_eb, _i) \
+	for (_i = 0; _i < (_eb)->num_batches; ++_i)

-:371: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#371: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1856:
+#define for_each_batch_add_order(_eb, _i) \
+	BUILD_BUG_ON(!typecheck(int, _i)); \
+	for (_i = (_eb)->num_batches - 1; _i >= 0; --_i)

-:371: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
#371: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1856:
+#define for_each_batch_add_order(_eb, _i) \
+	BUILD_BUG_ON(!typecheck(int, _i)); \
+	for (_i = (_eb)->num_batches - 1; _i >= 0; --_i)

total: 1 errors, 0 warnings, 2 checks, 1298 lines checked
c45d7a15a6cc drm/i915/guc: Handle errors in multi-lrc requests
31ff5626db61 drm/i915: Make request conflict tracking understand parallel submits
b73b105b6c29 drm/i915: Update I915_GEM_BUSY IOCTL to understand composite fences
54ef99f9936c drm/i915: Enable multi-bb execbuf
aef348f7f8e8 drm/i915/execlists: Weak parallel submission support for execlists


