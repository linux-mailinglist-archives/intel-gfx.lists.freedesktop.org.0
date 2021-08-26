Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 116A33F8EA4
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 21:20:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B51A6E8A0;
	Thu, 26 Aug 2021 19:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1ACE36E8A0;
 Thu, 26 Aug 2021 19:20:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0538FAA917;
 Thu, 26 Aug 2021 19:20:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 19:20:14 -0000
Message-ID: <163000561499.15049.13621379244921292285@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210826032327.18078-1-matthew.brost@intel.com>
In-Reply-To: <20210826032327.18078-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Clean_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_?=
 =?utf-8?q?DOC_=28rev7=29?=
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

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev7)
URL   : https://patchwork.freedesktop.org/series/93704/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7fe22714f5a9 drm/i915/guc: Fix blocked context accounting
4970f2849625 drm/i915/guc: Fix outstanding G2H accounting
2e610b253118 drm/i915/guc: Unwind context requests in reverse order
d105ec255b1d drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
7bd2db9a1759 drm/i915/guc: Process all G2H message at once in work queue
a2475cc1bce0 drm/i915/guc: Workaround reset G2H is received after schedule done G2H
36182517bd1a Revert "drm/i915/gt: Propagate change in error status to children on unhold"
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 3761baae908a ("Revert "drm/i915: Propagate errors on awaiting already signaled fences"")'
#8: 
errors from one client ending up in another.  In 3761baae908a (Revert

-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 8e9f84cf5cac ("drm/i915/gt: Propagate change in error status to children on unhold")'
#11: 
added in 8e9f84cf5cac ("drm/i915/gt: Propagate change in error status

-:24: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#24: 
References: '3761baae908a ("Revert "drm/i915: Propagate errors on awaiting already signaled fences"")'

total: 2 errors, 1 warnings, 0 checks, 10 lines checked
4253aac3070d drm/i915/selftests: Add a cancel request selftest that triggers a reset
dce056059ff5 drm/i915/guc: Kick tasklet after queuing a request
-:8: WARNING:TYPO_SPELLING: 'inteface' may be misspelled - perhaps 'interface'?
#8: 
Fixes: 3a4cdf1982f0 ("drm/i915/guc: Implement GuC context operations for new inteface")
                                                                             ^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
afc29a46456f drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
b663fb835571 drm/i915/guc: Copy whole golden context, set engine state size of subset
7fe07569686e drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
-:108: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#108: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 233 lines checked
af7d6c0767f7 drm/i915/guc: Take context ref when cancelling request
8d24ad7df290 drm/i915/guc: Don't touch guc_state.sched_state without a lock
11bb5b5e2f49 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
0fba3913bf23 drm/i915: Allocate error capture in nowait context
dae3a133265a drm/i915/guc: Flush G2H work queue during reset
1308964ace8e drm/i915/guc: Release submit fence from an irq_work
c98d42a500e0 drm/i915/guc: Move guc_blocked fence to struct guc_state
0df9cd86f965 drm/i915/guc: Rework and simplify locking
0e16363d8865 drm/i915/guc: Proper xarray usage for contexts_lookup
2815870d2076 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
d898d084dfd7 drm/i915/guc: Move GuC priority fields in context under guc_active
515567407bed drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
8d7454b6d5bf drm/i915/guc: Drop guc_active move everything into guc_state
2847489a97ab drm/i915/guc: Add GuC kernel doc
d18d0c97031f drm/i915/guc: Drop static inline functions intel_guc_submission.c


