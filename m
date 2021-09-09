Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6ED0405BF1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 19:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E331D6E8D5;
	Thu,  9 Sep 2021 17:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2D3286E8D3;
 Thu,  9 Sep 2021 17:23:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2677BA7525;
 Thu,  9 Sep 2021 17:23:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 17:23:15 -0000
Message-ID: <163120819513.16811.4510928916806763137@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909164744.31249-1-matthew.brost@intel.com>
In-Reply-To: <20210909164744.31249-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Clean_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_?=
 =?utf-8?q?DOC_=28rev11=29?=
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

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev11)
URL   : https://patchwork.freedesktop.org/series/93704/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
deb17f151cef drm/i915/guc: Fix blocked context accounting
7b4cd4d6bb36 drm/i915/guc: Fix outstanding G2H accounting
ea81f9db116d drm/i915/guc: Unwind context requests in reverse order
a6990f6f2a54 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
31c0bfa6a01d drm/i915/guc: Process all G2H message at once in work queue
5f8dae15114c drm/i915/guc: Workaround reset G2H is received after schedule done G2H
0a9d7cef0e5a Revert "drm/i915/gt: Propagate change in error status to children on unhold"
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 3761baae908a ("Revert "drm/i915: Propagate errors on awaiting already signaled fences"")'
#8: 
from one client ending up in another. In commit 3761baae908a ("Revert

-:27: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#27: 
References: '3761baae908a ("Revert "drm/i915: Propagate errors on awaiting already signaled fences"")'

total: 1 errors, 1 warnings, 0 checks, 10 lines checked
f9567c78788e drm/i915/guc: Kick tasklet after queuing a request
-:8: WARNING:TYPO_SPELLING: 'inteface' may be misspelled - perhaps 'interface'?
#8: 
Fixes: 3a4cdf1982f0 ("drm/i915/guc: Implement GuC context operations for new inteface")
                                                                             ^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
501532c37b64 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
69005a00e8aa drm/i915/guc: Copy whole golden context, set engine state size of subset
e56171c3dd6b drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
-:108: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#108: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 233 lines checked
8a8cf43913a0 drm/i915/guc: Take context ref when cancelling request
1e192098087d drm/i915/guc: Don't touch guc_state.sched_state without a lock
dbef2fc197c8 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
5db9a3bcd282 drm/i915/guc: Release submit fence from an irq_work
a469ee468f89 drm/i915/guc: Move guc_blocked fence to struct guc_state
86fe44af0f11 drm/i915/guc: Rework and simplify locking
e9666ec08fe7 drm/i915/guc: Proper xarray usage for contexts_lookup
a75af0fb3825 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
eded4f6781e4 drm/i915/guc: Move GuC priority fields in context under guc_active
f51ccdbc1d50 drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
93b6576f14c0 drm/i915/guc: Drop guc_active move everything into guc_state
e4747b33f311 drm/i915/guc: Add GuC kernel doc


