Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4673F1446
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 09:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D186E4B5;
	Thu, 19 Aug 2021 07:18:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB1786E4B5;
 Thu, 19 Aug 2021 07:18:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4714AA915;
 Thu, 19 Aug 2021 07:18:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Aug 2021 07:18:50 -0000
Message-ID: <162935753070.11705.2064548910473048455@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210819061639.21051-1-matthew.brost@intel.com>
In-Reply-To: <20210819061639.21051-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Clean_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_?=
 =?utf-8?q?DOC_=28rev3=29?=
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

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev3)
URL   : https://patchwork.freedesktop.org/series/93704/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cdd86549dd1d drm/i915/guc: Fix blocked context accounting
de712a42478e drm/i915/guc: Fix outstanding G2H accounting
75fb55198651 drm/i915/guc: Unwind context requests in reverse order
ef46dfb56828 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
c2e59d2d1528 drm/i915/guc: Process all G2H message at once in work queue
54c8cf84e527 drm/i915/guc: Workaround reset G2H is received after schedule done G2H
-:7: WARNING:TYPO_SPELLING: 'cancelation' may be misspelled - perhaps 'cancellation'?
#7: 
If the context is reset as a result of the request cancelation the
                                                   ^^^^^^^^^^^

-:10: WARNING:TYPO_SPELLING: 'cancelation' may be misspelled - perhaps 'cancellation'?
#10: 
waiting request cancelation code which resubmits the context. This races
                ^^^^^^^^^^^

-:12: WARNING:TYPO_SPELLING: 'cancelation' may be misspelled - perhaps 'cancellation'?
#12: 
in this case it really should be a NOP as request cancelation code owns
                                                  ^^^^^^^^^^^

-:58: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#58: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:856:
+	if (likely(!context_pending_enable(ce))) {
[...]
+	} else {
[...]

total: 0 errors, 4 warnings, 0 checks, 73 lines checked
7cc5849adb41 Revert "drm/i915/gt: Propagate change in error status to children on unhold"
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
References: 3761baae908a (Revert "drm/i915: Propagate errors on awaiting already signaled fences")

-:17: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 3761baae908a ("Revert "drm/i915: Propagate errors on awaiting already signaled fences"")'
#17: 
References: 3761baae908a (Revert "drm/i915: Propagate errors on awaiting already signaled fences")

total: 1 errors, 1 warnings, 0 checks, 10 lines checked
b13cbbf2cc00 drm/i915/selftests: Add a cancel request selftest that triggers a reset
72e6f5ea745f drm/i915/guc: Kick tasklet after queuing a request
-:8: WARNING:TYPO_SPELLING: 'inteface' may be misspelled - perhaps 'interface'?
#8: 
Fixes: 3a4cdf1982f0 ("drm/i915/guc: Implement GuC context operations for new inteface")
                                                                             ^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
be92b59039f4 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
c328800aa348 drm/i915/selftests: Fix memory corruption in live_lrc_isolation
24f6154536c7 drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
-:104: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#104: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 232 lines checked
95c83c9a3e05 drm/i915/guc: Take context ref when cancelling request
fe52b71dec8a drm/i915/guc: Don't touch guc_state.sched_state without a lock
23d73efe3398 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
f739dd54a7ee drm/i915: Allocate error capture in nowait context
8081613c600f drm/i915/guc: Flush G2H work queue during reset
f7a536406581 drm/i915/guc: Release submit fence from an irq_work
1debca6b1bd8 drm/i915/guc: Move guc_blocked fence to struct guc_state
c8b2f80e4529 drm/i915/guc: Rework and simplify locking
3bf483be619f drm/i915/guc: Proper xarray usage for contexts_lookup
2fd6d9d96159 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
9b10873534b2 drm/i915/guc: Move GuC priority fields in context under guc_active
0e84142a2b56 drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
a0ff703dedb1 drm/i915/guc: Drop guc_active move everything into guc_state
16fdda30af6b drm/i915/guc: Add GuC kernel doc
516f3fcdd0dd drm/i915/guc: Drop static inline functions intel_guc_submission.c


