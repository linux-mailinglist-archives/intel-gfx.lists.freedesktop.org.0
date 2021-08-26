Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D693F8B10
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 17:32:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17C4F6E029;
	Thu, 26 Aug 2021 15:32:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3A946E029;
 Thu, 26 Aug 2021 15:32:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C565A66C9;
 Thu, 26 Aug 2021 15:32:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 15:32:02 -0000
Message-ID: <162999192261.15047.6959931024223990419@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210826032327.18078-1-matthew.brost@intel.com>
In-Reply-To: <20210826032327.18078-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Clean_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_?=
 =?utf-8?q?DOC_=28rev6=29?=
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

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev6)
URL   : https://patchwork.freedesktop.org/series/93704/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6b511953d015 drm/i915/guc: Fix blocked context accounting
593f21493fda drm/i915/guc: Fix outstanding G2H accounting
54cd904fa232 drm/i915/guc: Unwind context requests in reverse order
5b7ff1fa9e43 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
c00d543957c2 drm/i915/guc: Process all G2H message at once in work queue
25273a034c8d drm/i915/guc: Workaround reset G2H is received after schedule done G2H
da3d87dfe8c5 Revert "drm/i915/gt: Propagate change in error status to children on unhold"
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
f577a4fdeeab drm/i915/selftests: Add a cancel request selftest that triggers a reset
f29b2b338002 drm/i915/guc: Kick tasklet after queuing a request
-:8: WARNING:TYPO_SPELLING: 'inteface' may be misspelled - perhaps 'interface'?
#8: 
Fixes: 3a4cdf1982f0 ("drm/i915/guc: Implement GuC context operations for new inteface")
                                                                             ^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
a19ba1f51009 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
abd6a8884cf4 drm/i915/guc: Copy whole golden context, set engine state size of subset
ff84f14ddceb drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
-:108: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#108: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 233 lines checked
1ff99308ef88 drm/i915/guc: Take context ref when cancelling request
97e616063006 drm/i915/guc: Don't touch guc_state.sched_state without a lock
adb35ad83c76 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
b87ba9121748 drm/i915: Allocate error capture in nowait context
3bd5803d5e25 drm/i915/guc: Flush G2H work queue during reset
ba695a58136a drm/i915/guc: Release submit fence from an irq_work
244934484f63 drm/i915/guc: Move guc_blocked fence to struct guc_state
9b9222998c83 drm/i915/guc: Rework and simplify locking
42ac1b77a019 drm/i915/guc: Proper xarray usage for contexts_lookup
f16c0554ae08 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
a1c73c8c481a drm/i915/guc: Move GuC priority fields in context under guc_active
fa075902c938 drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
883eccfa8221 drm/i915/guc: Drop guc_active move everything into guc_state
50ada01b3d95 drm/i915/guc: Add GuC kernel doc
0c1d27ac9fce drm/i915/guc: Drop static inline functions intel_guc_submission.c


