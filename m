Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B21F06B28EF
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 16:37:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F75110E803;
	Thu,  9 Mar 2023 15:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3BB4910E803;
 Thu,  9 Mar 2023 15:37:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D9AEAADF0;
 Thu,  9 Mar 2023 15:37:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Thu, 09 Mar 2023 15:37:21 -0000
Message-ID: <167837624115.12423.3514404680716571641@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230224-track_gt-v4-0-464e8ab4c9ab@intel.com>
In-Reply-To: <20230224-track_gt-v4-0-464e8ab4c9ab@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_use_ref=5Ftracker_library_for_tracking_wakerefs?=
 =?utf-8?q?_=28rev5=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: use ref_tracker library for tracking wakerefs (rev5)
URL   : https://patchwork.freedesktop.org/series/100327/
State : warning

== Summary ==

Error: dim checkpatch failed
21d94d8537c5 lib/ref_tracker: add unlocked leak print helper
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
To have reliable detection of leaks, caller must be able to check under the same

-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: include/linux/ref_tracker.h:40:
+void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
+			   unsigned int display_limit);

-:48: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#48: FILE: lib/ref_tracker.c:18:
+void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
+			   unsigned int display_limit)

total: 0 errors, 1 warnings, 2 checks, 105 lines checked
3252ac4db880 lib/ref_tracker: __ref_tracker_dir_print improve printing
-:37: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#37: FILE: include/linux/ref_tracker.h:31:
+static inline void __ref_tracker_dir_init(struct ref_tracker_dir *dir,
+					unsigned int quarantine_count,

-:46: WARNING:STRLCPY: Prefer strscpy over strlcpy - see: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
#46: FILE: include/linux/ref_tracker.h:41:
+	strlcpy(dir->name, name, sizeof(dir->name));

-:140: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#140: FILE: lib/ref_tracker.c:66:
+void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
+			   unsigned int display_limit)

total: 0 errors, 1 warnings, 2 checks, 151 lines checked
c03616f6d45b lib/ref_tracker: add printing to memory buffer
-:51: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#51: FILE: lib/ref_tracker.c:70:
+#define pr_ostream(stream, fmt, args...) \
+({ \
+	struct ostream *_s = (stream); \
+\
+	if (!_s->buf) { \
+		pr_err(fmt, ##args); \
+	} else { \
+		int ret, len = _s->size - _s->used; \
+		ret = snprintf(_s->buf + _s->used, len, pr_fmt(fmt), ##args); \
+		_s->used += min(ret, len); \
+	} \
+})

-:104: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#104: FILE: lib/ref_tracker.c:125:
+void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
+			   unsigned int display_limit)

total: 0 errors, 0 warnings, 2 checks, 109 lines checked
ad79c4c1e802 lib/ref_tracker: remove warnings in case of allocation failure
0d6f3ecdc915 drm/i915: Separate wakeref tracking types from rpm
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:114: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#114: 
new file mode 100644

-:130: WARNING:NEW_TYPEDEFS: do not add new typedefs
#130: FILE: drivers/gpu/drm/i915/intel_wakeref_tracker.h:12:
+typedef depot_stack_handle_t intel_wakeref_t;

-:133: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#133: FILE: drivers/gpu/drm/i915/intel_wakeref_tracker.h:15:
+	spinlock_t lock;

total: 0 errors, 2 warnings, 1 checks, 106 lines checked
d6dec9b48075 drm/i915: Separate wakeref tracking
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:7: WARNING:REPEATED_WORD: Possible repeated word: 'that'
#7: 
utility so that that we can reuse it for other online debugging of

-:363: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#363: 
new file mode 100644

-:632: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#632: FILE: drivers/gpu/drm/i915/intel_wakeref_tracker.h:34:
+void intel_wakeref_tracker_remove(struct intel_wakeref_tracker *w,
+			   intel_wakeref_t handle);

-:669: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#669: FILE: drivers/gpu/drm/i915/intel_wakeref_tracker.h:71:
+static inline void __intel_wakeref_tracker_show(const struct intel_wakeref_tracker *w, struct drm_printer *p) {}

-:670: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#670: FILE: drivers/gpu/drm/i915/intel_wakeref_tracker.h:72:
+static inline void intel_wakeref_tracker_show(struct intel_wakeref_tracker *w, struct drm_printer *p) {}

total: 0 errors, 4 warnings, 1 checks, 626 lines checked
83c98db4da0d drm/i915: Track leaked gt->wakerefs
-:449: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#449: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:75:
+#define with_intel_gt_pm(gt, wf) \
+	for (wf = intel_gt_pm_get(gt); wf; intel_gt_pm_put(gt, wf), wf = 0)

-:449: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#449: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:75:
+#define with_intel_gt_pm(gt, wf) \
+	for (wf = intel_gt_pm_get(gt); wf; intel_gt_pm_put(gt, wf), wf = 0)

-:780: ERROR:ASSIGN_IN_IF: do not use assignment in if condition
#780: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1328:
+	if (!in_reset && (wakeref = intel_gt_pm_get_if_awake(gt))) {

-:930: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Chris Wilson <chris.p.wilson@intel.com>' != 'Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>'

total: 1 errors, 1 warnings, 2 checks, 760 lines checked
9a0594300eff drm/i915: Correct type of wakeref variable
b73406af1282 drm/i915: replace Intel internal tracker with kernel core ref_tracker
-:277: WARNING:NEW_TYPEDEFS: do not add new typedefs
#277: FILE: drivers/gpu/drm/i915/intel_wakeref.h:24:
+typedef unsigned long intel_wakeref_t;

-:380: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#380: 
deleted file mode 100644

total: 0 errors, 2 warnings, 0 checks, 300 lines checked
76a235f93963 drm/i915/gt: Hold a wakeref for the active VM
-:81: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#81: FILE: drivers/gpu/drm/i915/gt/intel_engine_pm.c:117:
+	GEM_BUG_ON(rq->context->active_count != 1);

total: 0 errors, 1 warnings, 0 checks, 57 lines checked


