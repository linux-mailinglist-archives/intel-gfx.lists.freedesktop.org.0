Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5B56EAB14
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:56:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A902410E1AD;
	Fri, 21 Apr 2023 12:56:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 285F610E080;
 Fri, 21 Apr 2023 12:56:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22AB9A02F0;
 Fri, 21 Apr 2023 12:56:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Fri, 21 Apr 2023 12:56:37 -0000
Message-ID: <168208179713.5824.556446406442343997@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230224-track_gt-v7-0-11f08358c1ec@intel.com>
In-Reply-To: <20230224-track_gt-v7-0-11f08358c1ec@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_use_ref=5Ftracker_library_for_tracking_wakerefs?=
 =?utf-8?q?_=28rev8=29?=
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

Series: drm/i915: use ref_tracker library for tracking wakerefs (rev8)
URL   : https://patchwork.freedesktop.org/series/100327/
State : warning

== Summary ==

Error: dim checkpatch failed
4cc3dfa0b243 lib/ref_tracker: add unlocked leak print helper
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
To have reliable detection of leaks, caller must be able to check under the same

total: 0 errors, 1 warnings, 0 checks, 105 lines checked
de51d28343e8 lib/ref_tracker: improve printing stats
-:40: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#40: FILE: include/linux/ref_tracker.h:31:
+static inline void __ref_tracker_dir_init(struct ref_tracker_dir *dir,
+					unsigned int quarantine_count,

-:49: WARNING:STRLCPY: Prefer strscpy over strlcpy - see: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
#49: FILE: include/linux/ref_tracker.h:41:
+	strlcpy(dir->name, name, sizeof(dir->name));

total: 0 errors, 1 warnings, 1 checks, 151 lines checked
87f8a2f62e75 lib/ref_tracker: add printing to memory buffer
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
be584c3f69e9 lib/ref_tracker: remove warnings in case of allocation failure
04d9ce2b2595 drm/i915: Correct type of wakeref variable
e1f156958d75 drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library
-:404: WARNING:NEW_TYPEDEFS: do not add new typedefs
#404: FILE: drivers/gpu/drm/i915/intel_wakeref.h:24:
+typedef unsigned long intel_wakeref_t;

total: 0 errors, 1 warnings, 0 checks, 426 lines checked
c1995f5d11d1 drm/i915: track gt pm wakerefs
-:514: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#514: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:75:
+#define with_intel_gt_pm(gt, wf) \
+	for (wf = intel_gt_pm_get(gt); wf; intel_gt_pm_put(gt, wf), wf = 0)

-:514: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#514: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:75:
+#define with_intel_gt_pm(gt, wf) \
+	for (wf = intel_gt_pm_get(gt); wf; intel_gt_pm_put(gt, wf), wf = 0)

-:845: ERROR:ASSIGN_IN_IF: do not use assignment in if condition
#845: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1328:
+	if (!in_reset && (wakeref = intel_gt_pm_get_if_awake(gt))) {

total: 1 errors, 0 warnings, 2 checks, 826 lines checked


