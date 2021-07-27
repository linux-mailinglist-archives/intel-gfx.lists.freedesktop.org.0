Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E63F3D6B15
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 02:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04456FED1;
	Tue, 27 Jul 2021 00:34:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 06AF06FF82;
 Tue, 27 Jul 2021 00:34:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00B90A8830;
 Tue, 27 Jul 2021 00:34:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 27 Jul 2021 00:34:29 -0000
Message-ID: <162734606998.18667.7330322087254654320@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210727002348.97202-1-matthew.brost@intel.com>
In-Reply-To: <20210727002348.97202-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Remaining_patches_for_basic_GuC_submission_=28rev2=29?=
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

Series: Remaining patches for basic GuC submission (rev2)
URL   : https://patchwork.freedesktop.org/series/92912/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ac863c9f348a drm/i915/guc: GuC virtual engines
9b36b2e16d7c drm/i915/guc: Make hangcheck work with GuC virtual engines
ed1445d8ce6f drm/i915: Hold reference to intel_context over life of i915_request
abfd1c8cfaa0 drm/i915/guc: Disable bonding extension with GuC submission
ac8ef76f077e drm/i915/guc: Direct all breadcrumbs for a class to single breadcrumbs
0d5374470d54 drm/i915: Add i915_sched_engine destroy vfunc
3f313ad9f442 drm/i915: Move active request tracking to a vfunc
8c910728fa04 drm/i915/guc: Reset implementation for new GuC interface
a1ca24637d57 drm/i915: Reset GPU immediately if submission is disabled
1a63021400c4 drm/i915/guc: Add disable interrupts to guc sanitize
fa315ef03efe drm/i915/guc: Suspend/resume implementation for new interface
08b660a9380b drm/i915/guc: Handle context reset notification
b1236debf959 drm/i915/guc: Handle engine reset failure notification
a60a262a833a drm/i915/guc: Enable the timer expired interrupt for GuC
097d8dffbea2 drm/i915/guc: Provide mmio list to be saved/restored on engine reset
b8a7d8414a62 drm/i915/guc: Don't complain about reset races
b3eee1de5c25 drm/i915/guc: Enable GuC engine reset
a424d1e77c48 drm/i915/guc: Capture error state on context reset
ab288a02fdde drm/i915/guc: Fix for error capture after full GPU reset with GuC
ab399a7b42aa drm/i915/guc: Hook GuC scheduling policies up
429ef8022df4 drm/i915/guc: Connect reset modparam updates to GuC policy flags
-:53: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#53: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:17:
+#define GET_I915(i915, name, ptr)	\
+	do {	\
+		struct i915_params *params;	\
+		params = container_of(((void *)(ptr)), typeof(*params), name);	\
+		(i915) = container_of(params, typeof(*(i915)), params);	\
+	} while (0)

total: 0 errors, 0 warnings, 1 checks, 69 lines checked
4931fc2c2985 drm/i915/guc: Include scheduling policies in the debugfs state dump
a399f5609dd5 drm/i915/guc: Add golden context to GuC ADS
fb573301cd48 drm/i915/guc: Implement banned contexts for GuC submission
5ee97bf1a9b0 drm/i915/guc: Support request cancellation
091a73620c37 drm/i915/selftest: Better error reporting from hangcheck selftest
bead9216b818 drm/i915/selftest: Fix workarounds selftest for GuC submission
-:282: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#282: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 339 lines checked
94b67f9319f7 drm/i915/selftest: Fix MOCS selftest for GuC submission
d7c6339f4730 drm/i915/selftest: Increase some timeouts in live_requests
e481342871b4 drm/i915/selftest: Fix hangcheck self test for GuC submission
-:538: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#538: FILE: drivers/gpu/drm/i915/gt/selftest_workarounds.c:814:
+								   SELFTEST_SCHEDULER_MODIFY_FAST_RESET);

total: 0 errors, 1 warnings, 0 checks, 538 lines checked
6375845fa9bb drm/i915/selftest: Bump selftest timeouts for hangcheck
89bb4b174ae8 drm/i915/guc: Implement GuC priority management
58dceac32800 drm/i915/guc: Unblock GuC submission on Gen11+


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
