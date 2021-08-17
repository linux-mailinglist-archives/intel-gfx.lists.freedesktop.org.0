Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 689903EECCA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 14:49:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C67A96E193;
	Tue, 17 Aug 2021 12:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D4EC6E188;
 Tue, 17 Aug 2021 12:49:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C70C2A47DB;
 Tue, 17 Aug 2021 12:49:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Aug 2021 12:49:52 -0000
Message-ID: <162920459281.22610.2887568247300552651@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210816135139.10060-1-matthew.brost@intel.com>
In-Reply-To: <20210816135139.10060-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Clean_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_?=
 =?utf-8?q?DOC_=28rev2=29?=
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

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev2)
URL   : https://patchwork.freedesktop.org/series/93704/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b9583f1b134e drm/i915/guc: Fix blocked context accounting
5703206b5f51 drm/i915/guc: Fix outstanding G2H accounting
ee0ecb333df9 drm/i915/guc: Unwind context requests in reverse order
97ee783e2b00 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
6f42cfc0eeb4 drm/i915/guc: Workaround reset G2H is received after schedule done G2H
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
#58: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:850:
+	if (likely(!context_pending_enable(ce))) {
[...]
+	} else {
[...]

total: 0 errors, 4 warnings, 0 checks, 73 lines checked
806479ce9909 drm/i915/execlists: Do not propagate errors to dependent fences
862260cf6795 drm/i915/selftests: Add a cancel request selftest that triggers a reset
ba1d218343a3 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
221846309949 drm/i915/selftests: Fix memory corruption in live_lrc_isolation
241da61be83d drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
-:104: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#104: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 232 lines checked
957737f84734 drm/i915/guc: Take context ref when cancelling request
738284a940e2 drm/i915/guc: Don't touch guc_state.sched_state without a lock
48c820953477 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
e21f028c082e drm/i915: Allocate error capture in atomic context
31fbd295c9f5 drm/i915/guc: Flush G2H work queue during reset
dcd9725de04f drm/i915/guc: Release submit fence from an IRQ
c8b83840007d drm/i915/guc: Move guc_blocked fence to struct guc_state
fa32fd7346d0 drm/i915/guc: Rework and simplify locking
69e885b61035 drm/i915/guc: Proper xarray usage for contexts_lookup
492de6bdaacb drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
bb901831764c drm/i915/guc: Move GuC priority fields in context under guc_active
c4c34f7bb22c drm/i915/guc: Add GuC kernel doc


