Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4466ED968
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 02:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5362210E200;
	Tue, 25 Apr 2023 00:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 65BBE10E200;
 Tue, 25 Apr 2023 00:49:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62998A7DFB;
 Tue, 25 Apr 2023 00:49:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Tue, 25 Apr 2023 00:49:58 -0000
Message-ID: <168238379839.24066.10196436642745729984@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230224-track_gt-v8-0-4b6517e61be6@intel.com>
In-Reply-To: <20230224-track_gt-v8-0-4b6517e61be6@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_use_ref=5Ftracker_library_for_tracking_wakerefs?=
 =?utf-8?q?_=28rev9=29?=
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

Series: drm/i915: use ref_tracker library for tracking wakerefs (rev9)
URL   : https://patchwork.freedesktop.org/series/100327/
State : warning

== Summary ==

Error: dim checkpatch failed
b36b281bc951 lib/ref_tracker: add unlocked leak print helper
258df8024aa3 lib/ref_tracker: improve printing stats
01639e0ff3f5 lib/ref_tracker: add printing to memory buffer
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
c550719bba07 lib/ref_tracker: remove warnings in case of allocation failure
e264da9fddbb drm/i915: Correct type of wakeref variable
f61172c5bde1 drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library
-:440: WARNING:NEW_TYPEDEFS: do not add new typedefs
#440: FILE: drivers/gpu/drm/i915/intel_wakeref.h:24:
+typedef unsigned long intel_wakeref_t;

total: 0 errors, 1 warnings, 0 checks, 431 lines checked
31bb5ae81e11 drm/i915: Track gt pm wakerefs
-:513: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#513: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:75:
+#define with_intel_gt_pm(gt, wf) \
+	for (wf = intel_gt_pm_get(gt); wf; intel_gt_pm_put(gt, wf), wf = 0)

-:513: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#513: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:75:
+#define with_intel_gt_pm(gt, wf) \
+	for (wf = intel_gt_pm_get(gt); wf; intel_gt_pm_put(gt, wf), wf = 0)

total: 0 errors, 0 warnings, 2 checks, 826 lines checked


