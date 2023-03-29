Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E5F6CDB73
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 16:03:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A0210EADD;
	Wed, 29 Mar 2023 14:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 24E8310EA90;
 Wed, 29 Mar 2023 14:03:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19AACAA917;
 Wed, 29 Mar 2023 14:03:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Wed, 29 Mar 2023 14:03:24 -0000
Message-ID: <168009860407.23905.7590948848543310839@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230224-track_gt-v6-0-0dc8601fd02f@intel.com>
In-Reply-To: <20230224-track_gt-v6-0-0dc8601fd02f@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_use_ref=5Ftracker_library_for_tracking_wakerefs?=
 =?utf-8?q?_=28rev7=29?=
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

Series: drm/i915: use ref_tracker library for tracking wakerefs (rev7)
URL   : https://patchwork.freedesktop.org/series/100327/
State : warning

== Summary ==

Error: dim checkpatch failed
a48ff8d4bbf3 lib/ref_tracker: add unlocked leak print helper
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
To have reliable detection of leaks, caller must be able to check under the same

total: 0 errors, 1 warnings, 0 checks, 105 lines checked
996793d734ce lib/ref_tracker: improve printing stats
-:40: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#40: FILE: include/linux/ref_tracker.h:31:
+static inline void __ref_tracker_dir_init(struct ref_tracker_dir *dir,
+					unsigned int quarantine_count,

-:49: WARNING:STRLCPY: Prefer strscpy over strlcpy - see: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
#49: FILE: include/linux/ref_tracker.h:41:
+	strlcpy(dir->name, name, sizeof(dir->name));

total: 0 errors, 1 warnings, 1 checks, 151 lines checked
56912d5da2d2 lib/ref_tracker: add printing to memory buffer
-:54: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#54: FILE: lib/ref_tracker.c:70:
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

total: 0 errors, 0 warnings, 1 checks, 109 lines checked
8a5c4020d1b0 lib/ref_tracker: remove warnings in case of allocation failure
da506567d133 drm/i915: Correct type of wakeref variable
fe7edc6eb029 drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library
-:404: WARNING:NEW_TYPEDEFS: do not add new typedefs
#404: FILE: drivers/gpu/drm/i915/intel_wakeref.h:24:
+typedef unsigned long intel_wakeref_t;

total: 0 errors, 1 warnings, 0 checks, 426 lines checked
28b072da3355 drm/i915: track gt pm wakerefs
-:464: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#464: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:75:
+#define with_intel_gt_pm(gt, wf) \
+	for (wf = intel_gt_pm_get(gt); wf; intel_gt_pm_put(gt, wf), wf = 0)

-:464: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#464: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:75:
+#define with_intel_gt_pm(gt, wf) \
+	for (wf = intel_gt_pm_get(gt); wf; intel_gt_pm_put(gt, wf), wf = 0)

-:795: ERROR:ASSIGN_IN_IF: do not use assignment in if condition
#795: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1328:
+	if (!in_reset && (wakeref = intel_gt_pm_get_if_awake(gt))) {

total: 1 errors, 0 warnings, 2 checks, 789 lines checked
d3633524d9af drm/i915/gt: Hold a wakeref for the active VM
-:81: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#81: FILE: drivers/gpu/drm/i915/gt/intel_engine_pm.c:117:
+	GEM_BUG_ON(rq->context->active_count != 1);

total: 0 errors, 1 warnings, 0 checks, 57 lines checked


