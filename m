Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4893FE6F6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 03:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34AFB6E438;
	Thu,  2 Sep 2021 01:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4B3CD6E433;
 Thu,  2 Sep 2021 01:04:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3731CA0118;
 Thu,  2 Sep 2021 01:04:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 02 Sep 2021 01:04:06 -0000
Message-ID: <163054464619.29439.3163624416550985557@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Clean_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_?=
 =?utf-8?q?DOC_=28rev8=29?=
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

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev8)
URL   : https://patchwork.freedesktop.org/series/93704/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
63fb5a2c9d8a drm/i915/guc: Fix blocked context accounting
58afa429a58a drm/i915/guc: Fix outstanding G2H accounting
94f527455e3b drm/i915/guc: Unwind context requests in reverse order
a83b1ac67822 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
008bc855f8f5 drm/i915/guc: Process all G2H message at once in work queue
e3fe080cead5 drm/i915/guc: Workaround reset G2H is received after schedule done G2H
469697335ccf Revert "drm/i915/gt: Propagate change in error status to children on unhold"
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
7890b2a82744 drm/i915/guc: Kick tasklet after queuing a request
-:8: WARNING:TYPO_SPELLING: 'inteface' may be misspelled - perhaps 'interface'?
#8: 
Fixes: 3a4cdf1982f0 ("drm/i915/guc: Implement GuC context operations for new inteface")
                                                                             ^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
27ee5f59d3e8 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
7fda30ff715f drm/i915/guc: Copy whole golden context, set engine state size of subset
f65e8b30483f drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
-:108: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#108: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 233 lines checked
81160f40a055 drm/i915/guc: Take context ref when cancelling request
505c27859cd5 drm/i915/guc: Don't touch guc_state.sched_state without a lock
76e31cf548b1 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
87be1fdc991f drm/i915: Allocate error capture in nowait context
f16ff82d9bef drm/i915/guc: Flush G2H work queue during reset
efbc9c267ed2 drm/i915/guc: Release submit fence from an irq_work
064104f65f47 drm/i915/guc: Move guc_blocked fence to struct guc_state
4c7f421d381a drm/i915/guc: Rework and simplify locking
2d753ce9f357 drm/i915/guc: Proper xarray usage for contexts_lookup
ec14694751cc drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
6901d6d78c42 drm/i915/guc: Move GuC priority fields in context under guc_active
2f2fb8824ce7 drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
7a1e8b049331 drm/i915/guc: Drop guc_active move everything into guc_state
03345c4aa1b7 drm/i915/guc: Add GuC kernel doc
-:390: WARNING:REPEATED_WORD: Possible repeated word: 'range'
#390: FILE: drivers/gpu/drm/i915/i915_request.h:307:
+	 * GUC_PRIO_FINI) outside the GuC priority range range are used to

total: 0 errors, 1 warnings, 0 checks, 347 lines checked


