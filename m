Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E17B3F81C6
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 06:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1072D6E4CA;
	Thu, 26 Aug 2021 04:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 339A96E4CA;
 Thu, 26 Aug 2021 04:43:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C47DAA916;
 Thu, 26 Aug 2021 04:43:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 04:43:53 -0000
Message-ID: <162995303315.15049.2660732916326110844@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210826032327.18078-1-matthew.brost@intel.com>
In-Reply-To: <20210826032327.18078-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Clean_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_?=
 =?utf-8?q?DOC_=28rev5=29?=
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

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev5)
URL   : https://patchwork.freedesktop.org/series/93704/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7dc01ebd7a94 drm/i915/guc: Fix blocked context accounting
e463d05638a5 drm/i915/guc: Fix outstanding G2H accounting
6d797176750f drm/i915/guc: Unwind context requests in reverse order
9d217dd094d4 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
917c35136667 drm/i915/guc: Process all G2H message at once in work queue
0bd9a75d05d5 drm/i915/guc: Workaround reset G2H is received after schedule done G2H
5db336e06b96 Revert "drm/i915/gt: Propagate change in error status to children on unhold"
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
641110bbb3dd drm/i915/selftests: Add a cancel request selftest that triggers a reset
8c57d70df62e drm/i915/guc: Kick tasklet after queuing a request
-:8: WARNING:TYPO_SPELLING: 'inteface' may be misspelled - perhaps 'interface'?
#8: 
Fixes: 3a4cdf1982f0 ("drm/i915/guc: Implement GuC context operations for new inteface")
                                                                             ^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
c72bc8455075 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
94e9e0579d73 drm/i915/guc: Copy whole golden context, set engine state size of subset
10c9d7e6445c drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
-:108: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#108: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 233 lines checked
294dd722f049 drm/i915/guc: Take context ref when cancelling request
21b0b713c8ed drm/i915/guc: Don't touch guc_state.sched_state without a lock
ec42c335cbc5 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
7ffd90c5f795 drm/i915: Allocate error capture in nowait context
1275c6c2a642 drm/i915/guc: Flush G2H work queue during reset
c26a137a1a98 drm/i915/guc: Release submit fence from an irq_work
e45d040e7d64 drm/i915/guc: Move guc_blocked fence to struct guc_state
ffc3720eacde drm/i915/guc: Rework and simplify locking
b7cbde64c3bf drm/i915/guc: Proper xarray usage for contexts_lookup
fa4e0e879240 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
d463a3297412 drm/i915/guc: Move GuC priority fields in context under guc_active
8a835e57e906 drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
818b96c726c3 drm/i915/guc: Drop guc_active move everything into guc_state
b9a4dd93511f drm/i915/guc: Add GuC kernel doc
cf1ce58e8ab5 drm/i915/guc: Drop static inline functions intel_guc_submission.c


