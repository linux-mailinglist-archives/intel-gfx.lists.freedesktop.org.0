Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B343F3734
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Aug 2021 01:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9DA6EB2B;
	Fri, 20 Aug 2021 23:13:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9AE746EB2A;
 Fri, 20 Aug 2021 23:13:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8A388AA917;
 Fri, 20 Aug 2021 23:13:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Aug 2021 23:13:22 -0000
Message-ID: <162950120254.2686.5862183433747138126@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210820224446.30620-1-matthew.brost@intel.com>
In-Reply-To: <20210820224446.30620-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Parallel_submission_aka_multi-bb_execbuf_=28rev3=29?=
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

Series: Parallel submission aka multi-bb execbuf (rev3)
URL   : https://patchwork.freedesktop.org/series/92789/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
77206ddfd7e8 drm/i915/guc: Squash Clean up GuC CI failures, simplify locking, and kernel DOC
-:1400: WARNING:BRACES: braces {} are not necessary for single statement blocks
#1400: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1491:
+		if (unlikely(ret == -ENODEV)) {
 			ret = 0;	/* Will get registered later */
 		}

-:2274: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2274: 
new file mode 100644

total: 0 errors, 2 warnings, 0 checks, 2619 lines checked
4a9a78aa06a7 drm/i915/guc: Allow flexible number of context ids
ce904de73b0d drm/i915/guc: Connect the number of guc_ids to debugfs
48e7785b7cb4 drm/i915/guc: Take GT PM ref when deregistering context
-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#87: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
+#define with_intel_gt_pm(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
#87: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
+#define with_intel_gt_pm(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

-:90: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#90: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:47:
+#define with_intel_gt_pm_async(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put_async(gt), tmp = 0)

-:90: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
#90: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:47:
+#define with_intel_gt_pm_async(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put_async(gt), tmp = 0)

-:93: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#93: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:50:
+#define with_intel_gt_pm_if_awake(gt, tmp) \
+	for (tmp = intel_gt_pm_get_if_awake(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

-:93: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
#93: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:50:
+#define with_intel_gt_pm_if_awake(gt, tmp) \
+	for (tmp = intel_gt_pm_get_if_awake(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

-:96: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#96: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:53:
+#define with_intel_gt_pm_if_awake_async(gt, tmp) \
+	for (tmp = intel_gt_pm_get_if_awake(gt); tmp; \
+	     intel_gt_pm_put_async(gt), tmp = 0)

-:96: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
#96: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:53:
+#define with_intel_gt_pm_if_awake_async(gt, tmp) \
+	for (tmp = intel_gt_pm_get_if_awake(gt); tmp; \
+	     intel_gt_pm_put_async(gt), tmp = 0)

total: 0 errors, 0 warnings, 8 checks, 552 lines checked
08b1d791ac1a drm/i915: Add GT PM unpark worker
-:71: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#71: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 213 lines checked
e0617461e1ec drm/i915/guc: Take engine PM when a context is pinned with GuC submission
cb16e92153bb drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
0222d44e38b8 drm/i915: Add logical engine mapping
b398df972aaa drm/i915: Expose logical engine instance to user
02d0b3f0499f drm/i915/guc: Introduce context parent-child relationship
-:105: ERROR:CODE_INDENT: code indent should use tabs where possible
#105: FILE: drivers/gpu/drm/i915/gt/intel_context.h:62:
+        if (intel_context_is_child(ce)) {$

-:105: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#105: FILE: drivers/gpu/drm/i915/gt/intel_context.h:62:
+        if (intel_context_is_child(ce)) {$

-:113: ERROR:CODE_INDENT: code indent should use tabs where possible
#113: FILE: drivers/gpu/drm/i915/gt/intel_context.h:70:
+                GEM_BUG_ON(!intel_context_is_pinned(ce->parent));$

-:113: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#113: FILE: drivers/gpu/drm/i915/gt/intel_context.h:70:
+                GEM_BUG_ON(!intel_context_is_pinned(ce->parent));$

-:115: ERROR:CODE_INDENT: code indent should use tabs where possible
#115: FILE: drivers/gpu/drm/i915/gt/intel_context.h:72:
+                return ce->parent;$

-:115: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#115: FILE: drivers/gpu/drm/i915/gt/intel_context.h:72:
+                return ce->parent;$

-:116: ERROR:CODE_INDENT: code indent should use tabs where possible
#116: FILE: drivers/gpu/drm/i915/gt/intel_context.h:73:
+        } else {$

-:116: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#116: FILE: drivers/gpu/drm/i915/gt/intel_context.h:73:
+        } else {$

-:117: ERROR:CODE_INDENT: code indent should use tabs where possible
#117: FILE: drivers/gpu/drm/i915/gt/intel_context.h:74:
+                return ce;$

-:117: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#117: FILE: drivers/gpu/drm/i915/gt/intel_context.h:74:
+                return ce;$

-:118: ERROR:CODE_INDENT: code indent should use tabs where possible
#118: FILE: drivers/gpu/drm/i915/gt/intel_context.h:75:
+        }$

-:118: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#118: FILE: drivers/gpu/drm/i915/gt/intel_context.h:75:
+        }$

-:144: WARNING:REPEATED_WORD: Possible repeated word: 'of'
#144: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:220:
+			 * @guc_child_list: parent's list of of children

total: 6 errors, 7 warnings, 0 checks, 125 lines checked
bff8a93386b8 drm/i915/guc: Implement parallel context pin / unpin functions
2b3d3ef5cb7c drm/i915/guc: Add multi-lrc context registration
-:20: CHECK:LINE_SPACING: Please don't use multiple blank lines
#20: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:235:
 
+

total: 0 errors, 0 warnings, 1 checks, 192 lines checked
f671cf6be29a drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts
4397e2c32688 drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids
-:19: WARNING:TYPO_SPELLING: 'Explictly' may be misspelled - perhaps 'Explicitly'?
#19: 
  - Explictly state why we assign consecutive guc_ids
    ^^^^^^^^^

-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'guc' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:136:
+#define NUMBER_MULTI_LRC_GUC_ID(guc) \
+	((guc)->submission_state.num_guc_ids / 16 > 32 ? \
+	 (guc)->submission_state.num_guc_ids / 16 : 32)

total: 0 errors, 1 warnings, 1 checks, 195 lines checked
279b43791c6d drm/i915/guc: Implement multi-lrc submission
-:236: ERROR:SPACING: spaces required around that '=' (ctx:VxW)
#236: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:655:
+		guc->stalled_request= rq;
 		                    ^

-:330: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#330: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:753:
+		*wqi++ = child->ring->tail / sizeof(u64);
 		^

total: 1 errors, 0 warnings, 1 checks, 545 lines checked
f0eaf349580b drm/i915/guc: Insert submit fences between requests in parent-child relationship
d20a9f8066d0 drm/i915/guc: Implement multi-lrc reset
28a6b590e69c drm/i915/guc: Update debugfs for GuC multi-lrc
-:19: CHECK:LINE_SPACING: Please don't use multiple blank lines
#19: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3676:
 
+

total: 0 errors, 0 warnings, 1 checks, 65 lines checked
f3e9fcd665da drm/i915: Fix bug in user proto-context creation that leaked contexts
24d24d71c346 drm/i915/guc: Connect UAPI to GuC multi-lrc interface
d7635607ca11 drm/i915/doc: Update parallel submit doc to point to i915_drm.h
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
166ae35845ec drm/i915/guc: Add basic GuC multi-lrc selftest
-:21: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#21: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 191 lines checked
2f8c2ac84f38 drm/i915/guc: Implement no mid batch preemption for multi-lrc
1deecbc917a6 drm/i915: Multi-BB execbuf
-:340: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_eb' may be better as '(_eb)' to avoid precedence issues
#340: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1846:
+#define for_each_batch_create_order(_eb, _i) \
+	for (_i = 0; _i < _eb->num_batches; ++_i)

-:340: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
#340: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1846:
+#define for_each_batch_create_order(_eb, _i) \
+	for (_i = 0; _i < _eb->num_batches; ++_i)

-:342: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#342: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1848:
+#define for_each_batch_add_order(_eb, _i) \
+	BUILD_BUG_ON(!typecheck(int, _i)); \
+	for (_i = _eb->num_batches - 1; _i >= 0; --_i)

-:342: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_eb' may be better as '(_eb)' to avoid precedence issues
#342: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1848:
+#define for_each_batch_add_order(_eb, _i) \
+	BUILD_BUG_ON(!typecheck(int, _i)); \
+	for (_i = _eb->num_batches - 1; _i >= 0; --_i)

-:342: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
#342: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1848:
+#define for_each_batch_add_order(_eb, _i) \
+	BUILD_BUG_ON(!typecheck(int, _i)); \
+	for (_i = _eb->num_batches - 1; _i >= 0; --_i)

-:905: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#905: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2886:
+	/*
+	* We iterate in reverse order of creation to release timeline mutexes in

-:968: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#968: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2968:
+}
+static struct sync_file *

-:978: WARNING:ALLOC_WITH_MULTIPLY: Prefer kmalloc_array over kmalloc with multiply
#978: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2978:
+	fences = kmalloc(eb->num_batches * sizeof(*fences), GFP_KERNEL);

-:1090: WARNING:REPEATED_WORD: Possible repeated word: 'the'
#1090: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3090:
+		 * this request is retired will the the batch_obj be moved onto

total: 1 errors, 3 warnings, 5 checks, 1275 lines checked
41dc4f27399e drm/i915/guc: Handle errors in multi-lrc requests
668649e1b343 drm/i915: Enable multi-bb execbuf
17b0d07e7aec drm/i915/execlists: Weak parallel submission support for execlists
-:112: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#112: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2627:
+		if (i == 0) {
[...]
+		} else {
[...]

total: 0 errors, 1 warnings, 0 checks, 128 lines checked


