Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD3440065C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 22:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDDD36E8D9;
	Fri,  3 Sep 2021 20:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CCEC6E8DB;
 Fri,  3 Sep 2021 20:12:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07363A9932;
 Fri,  3 Sep 2021 20:12:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 03 Sep 2021 20:12:04 -0000
Message-ID: <163069992402.21414.6699948913732547168@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Clean_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_?=
 =?utf-8?q?DOC_=28rev9=29?=
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

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev9)
URL   : https://patchwork.freedesktop.org/series/93704/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6d1bb5d22544 drm/i915/guc: Fix blocked context accounting
6398818fa78a drm/i915/guc: Fix outstanding G2H accounting
ae3e89ed3612 drm/i915/guc: Unwind context requests in reverse order
11d540e486e2 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
92ad0bd9b3d8 drm/i915/guc: Process all G2H message at once in work queue
a59bbb7b3cdc drm/i915/guc: Workaround reset G2H is received after schedule done G2H
9970134653d7 Revert "drm/i915/gt: Propagate change in error status to children on unhold"
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
a6d892a7d614 drm/i915/guc: Kick tasklet after queuing a request
-:8: WARNING:TYPO_SPELLING: 'inteface' may be misspelled - perhaps 'interface'?
#8: 
Fixes: 3a4cdf1982f0 ("drm/i915/guc: Implement GuC context operations for new inteface")
                                                                             ^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
15ba8d2ce3be drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
94da8fb5cc3b drm/i915/guc: Copy whole golden context, set engine state size of subset
e69b4cd9f3ff drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
-:108: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#108: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 233 lines checked
20823e2bde52 drm/i915/guc: Take context ref when cancelling request
6931ae8d5e0e drm/i915/guc: Don't touch guc_state.sched_state without a lock
d08163d1ed9c drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
0986fcfd8f76 drm/i915: Allocate error capture in nowait context
f58b28354082 drm/i915/guc: Flush G2H work queue during reset
26610960d6be drm/i915/guc: Release submit fence from an irq_work
418ef38c9838 drm/i915/guc: Move guc_blocked fence to struct guc_state
c2e82cfc3fc3 drm/i915/guc: Rework and simplify locking
2bb8ddcd69d2 drm/i915/guc: Proper xarray usage for contexts_lookup
fad172840a74 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
4de5b9c32773 drm/i915/guc: Move GuC priority fields in context under guc_active
a726f9c8709b drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
dc0c36c784e7 drm/i915/guc: Drop guc_active move everything into guc_state
45b764f2d15f drm/i915/guc: Add GuC kernel doc


