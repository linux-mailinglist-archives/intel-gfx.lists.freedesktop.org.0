Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B7C4008AF
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Sep 2021 02:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12BB96E8E9;
	Sat,  4 Sep 2021 00:15:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF9366E8E9;
 Sat,  4 Sep 2021 00:15:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BFEE7A00C9;
 Sat,  4 Sep 2021 00:15:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 04 Sep 2021 00:15:42 -0000
Message-ID: <163071454274.20407.12524439358628094805@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Clean_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_?=
 =?utf-8?q?DOC_=28rev10=29?=
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

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev10)
URL   : https://patchwork.freedesktop.org/series/93704/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7a92435f3439 drm/i915/guc: Fix blocked context accounting
4cbb7ec8d2a5 drm/i915/guc: Fix outstanding G2H accounting
a09678f24d4a drm/i915/guc: Unwind context requests in reverse order
2b55e7be2440 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
92ea1c87dd5d drm/i915/guc: Process all G2H message at once in work queue
28d3a1c4f1ab drm/i915/guc: Workaround reset G2H is received after schedule done G2H
ae1b3d67cd6b Revert "drm/i915/gt: Propagate change in error status to children on unhold"
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 3761baae908a ("Revert "drm/i915: Propagate errors on awaiting already signaled fences"")'
#8: 
from one client ending up in another. In commit 3761baae908a ("Revert

-:27: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#27: 
References: '3761baae908a ("Revert "drm/i915: Propagate errors on awaiting already signaled fences"")'

total: 1 errors, 1 warnings, 0 checks, 10 lines checked
c1bd72699e71 drm/i915/guc: Kick tasklet after queuing a request
-:8: WARNING:TYPO_SPELLING: 'inteface' may be misspelled - perhaps 'interface'?
#8: 
Fixes: 3a4cdf1982f0 ("drm/i915/guc: Implement GuC context operations for new inteface")
                                                                             ^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
28f1e6d22bad drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
c2d27d762bc5 drm/i915/guc: Copy whole golden context, set engine state size of subset
1bc44c377df9 drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
-:108: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#108: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 233 lines checked
2aa269f239b4 drm/i915/guc: Take context ref when cancelling request
10a7e5916e04 drm/i915/guc: Don't touch guc_state.sched_state without a lock
6c78bd32a97b drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
f098b2e26fba drm/i915: Allocate error capture in nowait context
475206e6d350 drm/i915/guc: Flush G2H work queue during reset
73970752f37c drm/i915/guc: Release submit fence from an irq_work
3c6373fb6529 drm/i915/guc: Move guc_blocked fence to struct guc_state
4be2eae80738 drm/i915/guc: Rework and simplify locking
759636cf75ee drm/i915/guc: Proper xarray usage for contexts_lookup
f53a65c0952c drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
52980a2d7174 drm/i915/guc: Move GuC priority fields in context under guc_active
8e4a0506fc20 drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
6635fe9c9ffb drm/i915/guc: Drop guc_active move everything into guc_state
58856727d06e drm/i915/guc: Add GuC kernel doc


