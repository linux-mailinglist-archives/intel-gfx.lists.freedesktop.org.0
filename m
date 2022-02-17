Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 131C54BABBA
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 22:31:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4114710E81D;
	Thu, 17 Feb 2022 21:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6DBD910E81D;
 Thu, 17 Feb 2022 21:31:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6830AA008A;
 Thu, 17 Feb 2022 21:31:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Thu, 17 Feb 2022 21:31:08 -0000
Message-ID: <164513346842.18050.6610318202342422412@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220217140441.1218045-1-andrzej.hajda@intel.com>
In-Reply-To: <20220217140441.1218045-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_use_ref=5Ftracker_library_for_tracking_wakerefs?=
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

Series: drm/i915: use ref_tracker library for tracking wakerefs
URL   : https://patchwork.freedesktop.org/series/100327/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3401795c5e59 lib/ref_tracker: add unlocked leak print helper
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
To have reliable detection of leaks, caller must be able to check under the same

-:23: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#23: FILE: include/linux/ref_tracker.h:36:
+void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
+			   unsigned int display_limit);

-:49: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#49: FILE: lib/ref_tracker.c:18:
+void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
+			   unsigned int display_limit)

total: 0 errors, 1 warnings, 2 checks, 105 lines checked
f9401246d32f lib/ref_tracker: compact stacktraces before printing
a7d1346f3833 lib/ref_tracker: __ref_tracker_dir_print improve printing
-:37: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#37: FILE: include/linux/ref_tracker.h:29:
+static inline void __ref_tracker_dir_init(struct ref_tracker_dir *dir,
+					unsigned int quarantine_count,

-:45: WARNING:STRLCPY: Prefer strscpy over strlcpy - see: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
#45: FILE: include/linux/ref_tracker.h:37:
+	strlcpy(dir->name, name, sizeof(dir->name));

total: 0 errors, 1 warnings, 1 checks, 100 lines checked
537929a5562f lib/ref_tracker: add printing to memory buffer
-:52: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#52: FILE: lib/ref_tracker.c:35:
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

-:91: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#91: FILE: lib/ref_tracker.c:92:
+void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
+			   unsigned int display_limit)

total: 0 errors, 0 warnings, 2 checks, 96 lines checked
deea71578401 lib/ref_tracker: improve allocation flags
eeb686073725 drm/i915: Separate wakeref tracking
-:7: WARNING:REPEATED_WORD: Possible repeated word: 'that'
#7: 
utility so that that we can reuse it for other online debugging of

-:453: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#453: 
new file mode 100644

-:710: WARNING:NEW_TYPEDEFS: do not add new typedefs
#710: FILE: drivers/gpu/drm/i915/intel_wakeref_tracker.h:13:
+typedef depot_stack_handle_t intel_wakeref_t;

-:715: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#715: FILE: drivers/gpu/drm/i915/intel_wakeref_tracker.h:18:
+	spinlock_t lock;

-:731: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#731: FILE: drivers/gpu/drm/i915/intel_wakeref_tracker.h:34:
+void intel_wakeref_tracker_remove(struct intel_wakeref_tracker *w,
+			   intel_wakeref_t handle);

-:768: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#768: FILE: drivers/gpu/drm/i915/intel_wakeref_tracker.h:71:
+static inline void __intel_wakeref_tracker_show(const struct intel_wakeref_tracker *w, struct drm_printer *p) {}

-:769: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#769: FILE: drivers/gpu/drm/i915/intel_wakeref_tracker.h:72:
+static inline void intel_wakeref_tracker_show(struct intel_wakeref_tracker *w, struct drm_printer *p) {}

-:773: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Chris Wilson <chris.p.wilson@intel.com>' != 'Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>'

total: 0 errors, 6 warnings, 2 checks, 713 lines checked
4cf7b916ce01 drm/i915: Track leaked gt->wakerefs
-:450: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#450: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:75:
+#define with_intel_gt_pm(gt, wf) \
+	for (wf = intel_gt_pm_get(gt); wf; intel_gt_pm_put(gt, wf), wf = 0)

-:450: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#450: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:75:
+#define with_intel_gt_pm(gt, wf) \
+	for (wf = intel_gt_pm_get(gt); wf; intel_gt_pm_put(gt, wf), wf = 0)

-:798: ERROR:ASSIGN_IN_IF: do not use assignment in if condition
#798: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1280:
+	if (!in_reset && (wakeref = intel_gt_pm_get_if_awake(gt))) {

total: 1 errors, 0 warnings, 2 checks, 775 lines checked
2eb9912803ea drm/i915: Correct type of wakeref variable
fcb5ea8d8a7f drm/i915: replace Intel internal tracker with kernel core ref_tracker
-:252: WARNING:NEW_TYPEDEFS: do not add new typedefs
#252: FILE: drivers/gpu/drm/i915/intel_wakeref.h:24:
+typedef unsigned long intel_wakeref_t;

-:355: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#355: 
deleted file mode 100644

total: 0 errors, 2 warnings, 0 checks, 283 lines checked


