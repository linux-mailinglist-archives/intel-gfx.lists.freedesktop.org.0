Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAQ9GMwOAmplngEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 19:15:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF8D51335A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 19:15:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EB5910E1D7;
	Mon, 11 May 2026 17:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5ab824fced77 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FB4910E1D7;
 Mon, 11 May 2026 17:15:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5317212068844260603=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_series_starting_with_=5B?=
 =?utf-8?q?1/2=5D_drm/i915/ddi=3A_Fix_cleanup_after_DP_connector_init_failur?=
 =?utf-8?q?e?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2026 17:15:51 -0000
Message-ID: <177851975116.58002.1256553445318109371@5ab824fced77>
X-Patchwork-Hint: ignore
References: <20260507065940.2046690-1-imre.deak@intel.com>
In-Reply-To: <20260507065940.2046690-1-imre.deak@intel.com>
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
X-Rspamd-Queue-Id: CDF8D51335A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_SPAM(0.00)[0.288];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

--===============5317212068844260603==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/ddi: Fix cleanup after DP connector init failure
URL   : https://patchwork.freedesktop.org/series/166105/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18438_full -> Patchwork_166105v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

New tests
---------

  New tests have been introduced between CI_DRM_18438_full and Patchwork_166105v1_full:

### New IGT tests (155) ###

  * igt@gem_busy@busy@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 2.04] s

  * igt@gem_busy@extended@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04] s

  * igt@gem_busy@parallel@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.06, 1.98] s

  * igt@gem_cs_tlb@engines@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [2.15] s

  * igt@gem_ctx_engines@independent@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.13, 0.19] s

  * igt@gem_ctx_isolation@clean@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.10, 2.02] s

  * igt@gem_ctx_isolation@dirty-create@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.69, 2.07] s

  * igt@gem_ctx_isolation@dirty-switch@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.65, 2.06] s

  * igt@gem_ctx_isolation@nonpriv-switch@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.95, 2.08] s

  * igt@gem_ctx_isolation@nonpriv@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.87, 2.02] s

  * igt@gem_ctx_isolation@preservation-reset@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.61, 2.07] s

  * igt@gem_ctx_isolation@preservation@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.43, 2.06] s

  * igt@gem_ctx_persistence@engines-cleanup@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.07] s

  * igt@gem_ctx_persistence@engines-hang@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.07, 0.09] s

  * igt@gem_ctx_persistence@engines-hostile-preempt@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.07] s

  * igt@gem_ctx_persistence@engines-hostile@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.09, 0.12] s

  * igt@gem_ctx_persistence@engines-mixed-process@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.95, 2.05] s

  * igt@gem_ctx_persistence@engines-mixed@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.06] s

  * igt@gem_ctx_persistence@engines-persistence@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.77] s

  * igt@gem_ctx_persistence@engines-queued@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.17, 0.21] s

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
    - Statuses : 4 skip(s)
    - Exec time: [0.01, 0.02] s

  * igt@gem_ctx_persistence@saturated-hostile@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.83, 0.84] s

  * igt@gem_ctx_shared@exec-shared-gtt@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.01] s

  * igt@gem_ctx_shared@exec-single-timeline@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.02, 1.09] s

  * igt@gem_ctx_shared@q-in-order@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.10, 0.20] s

  * igt@gem_ctx_shared@q-independent@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.06, 0.16] s

  * igt@gem_ctx_shared@q-out-order@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.08, 0.19] s

  * igt@gem_ctx_shared@q-promotion@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.09, 0.19] s

  * igt@gem_ctx_shared@q-smoketest@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [5.42, 5.53] s

  * igt@gem_exec_async@concurrent-writes@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.01] s

  * igt@gem_exec_async@forked-writes@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.02, 0.04] s

  * igt@gem_exec_capture@capture@ccs0-smem:
    - Statuses : 3 pass(s)
    - Exec time: [1.32, 1.42] s

  * igt@gem_exec_capture@pi@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [4.01, 5.92] s

  * igt@gem_exec_endless@dispatch@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_fence@keep-in-fence@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.23, 0.24] s

  * igt@gem_exec_fence@parallel@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [2.15] s

  * igt@gem_exec_gttfill@engines@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [23.32, 26.25] s

  * igt@gem_exec_parallel@basic@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [1.46, 1.51] s

  * igt@gem_exec_parallel@contexts@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [4.05, 4.82] s

  * igt@gem_exec_parallel@fds@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [3.24, 3.67] s

  * igt@gem_exec_parallel@userptr@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.47, 1.50] s

  * igt@gem_exec_schedule@deep@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [11.33, 15.77] s

  * igt@gem_exec_schedule@fairslice@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [2.02] s

  * igt@gem_exec_schedule@fifo@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.09, 0.22] s

  * igt@gem_exec_schedule@implicit-boths@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.09, 0.21] s

  * igt@gem_exec_schedule@implicit-read-write@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.08, 0.22] s

  * igt@gem_exec_schedule@implicit-write-read@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.13, 0.22] s

  * igt@gem_exec_schedule@independent@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.30, 2.03] s

  * igt@gem_exec_schedule@lateslice@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.02] s

  * igt@gem_exec_schedule@manyslice@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [5.97, 6.68] s

  * igt@gem_exec_schedule@noreorder-corked@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.10, 1.15] s

  * igt@gem_exec_schedule@noreorder-priority@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.10, 1.14] s

  * igt@gem_exec_schedule@noreorder@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.09] s

  * igt@gem_exec_schedule@out-order@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.09, 0.27] s

  * igt@gem_exec_schedule@pi-common@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.03] s

  * igt@gem_exec_schedule@pi-distinct-iova@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.06, 0.19] s

  * igt@gem_exec_schedule@pi-ringfull@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.03] s

  * igt@gem_exec_schedule@pi-shared-iova@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.06, 0.20] s

  * igt@gem_exec_schedule@pi-userfault@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.01] s

  * igt@gem_exec_schedule@preempt-contexts@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.07, 0.10] s

  * igt@gem_exec_schedule@preempt-engines@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [2.21, 2.31] s

  * igt@gem_exec_schedule@preempt-hang@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.23, 0.32] s

  * igt@gem_exec_schedule@preempt-other-chain@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.08, 0.69] s

  * igt@gem_exec_schedule@preempt-other@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.07, 0.36] s

  * igt@gem_exec_schedule@preempt-self@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.01, 0.03] s

  * igt@gem_exec_schedule@preempt-user@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.02, 0.04] s

  * igt@gem_exec_schedule@preempt@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.02, 0.05] s

  * igt@gem_exec_schedule@preemptive-hang@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [8.96, 9.01] s

  * igt@gem_exec_schedule@promotion@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.10, 0.22] s

  * igt@gem_exec_schedule@smoketest@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [5.45, 5.53] s

  * igt@gem_exec_schedule@submit-early-slice@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.06] s

  * igt@gem_exec_schedule@submit-golden-slice@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.04, 0.05] s

  * igt@gem_exec_schedule@submit-late-slice@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.03, 0.06] s

  * igt@gem_exec_schedule@thriceslice@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.03, 0.07] s

  * igt@gem_exec_schedule@timeslicing@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.02] s

  * igt@gem_exec_schedule@u-fairslice@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [2.02, 2.04] s

  * igt@gem_exec_schedule@u-independent@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.30, 2.03] s

  * igt@gem_exec_schedule@u-lateslice@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.02] s

  * igt@gem_exec_schedule@u-submit-early-slice@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.06] s

  * igt@gem_exec_schedule@u-submit-golden-slice@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.04, 0.06] s

  * igt@gem_exec_schedule@u-submit-late-slice@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.03, 0.05] s

  * igt@gem_exec_schedule@wide@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [13.62, 15.15] s

  * igt@gem_exec_store@cachelines@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.05, 0.07] s

  * igt@gem_exec_store@dword@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.05] s

  * igt@gem_exec_store@pages@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.07, 0.11] s

  * igt@gem_ringfill@engines-basic@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.05] s

  * igt@gem_softpin@allocator-evict@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [24.05, 30.34] s

  * igt@gem_softpin@evict-single-offset:
    - Statuses : 12 pass(s) 2 skip(s)
    - Exec time: [0.0, 35.08] s

  * igt@gem_spin_batch@engines@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [3.23, 3.33] s

  * igt@gem_spin_batch@resubmit-all@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.00] s

  * igt@gem_spin_batch@resubmit-new-all@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.01] s

  * igt@gem_spin_batch@resubmit-new@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.01] s

  * igt@gem_spin_batch@resubmit@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.00] s

  * igt@gem_wait@await@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.05, 1.06] s

  * igt@gem_wait@busy@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.54] s

  * igt@gem_wait@wait@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.04, 1.05] s

  * igt@gem_wait@write-busy@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.54, 0.55] s

  * igt@gem_wait@write-wait@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.06] s

  * igt@i915_hangman@detector@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [10.02, 11.97] s

  * igt@i915_hangman@engine-engine-error@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.75, 2.04] s

  * igt@i915_hangman@engine-engine-hang@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.77, 2.05] s

  * igt@i915_hangman@engine-error-state-capture@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [3.99, 5.05] s

  * igt@i915_hangman@gt-engine-error@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.75, 1.98] s

  * igt@i915_hangman@gt-engine-hang@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.74, 1.98] s

  * igt@i915_hangman@gt-error-state-capture@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [9.97, 12.03] s

  * igt@i915_pm_freq_api@freq-basic-api@gt1:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@i915_pm_freq_api@freq-reset@gt1:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.14] s

  * igt@i915_pm_freq_mult@media-freq@gt1:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@i915_suspend@basic-s2idle-without-i915:
    - Statuses : 10 pass(s)
    - Exec time: [3.03, 5.94] s

  * igt@i915_suspend@basic-s3-without-i915:
    - Statuses : 2 incomplete(s) 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 14.11] s

  * igt@perf_pmu@busy-accuracy-2@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [3.06, 3.07] s

  * igt@perf_pmu@busy-accuracy-98@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [3.05, 3.06] s

  * igt@perf_pmu@busy-check-all@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.55, 0.56] s

  * igt@perf_pmu@busy-double-start@ccs0:
    - Statuses : 1 fail(s) 3 pass(s)
    - Exec time: [3.56, 3.59] s

  * igt@perf_pmu@busy-hang@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.23, 1.25] s

  * igt@perf_pmu@busy-idle-check-all@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.65, 0.66] s

  * igt@perf_pmu@busy-idle-no-semaphores@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.65, 1.98] s

  * igt@perf_pmu@busy-idle@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.66, 0.68] s

  * igt@perf_pmu@busy-no-semaphores@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.55, 2.05] s

  * igt@perf_pmu@busy-start@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [2.55] s

  * igt@perf_pmu@busy@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.56] s

  * igt@perf_pmu@enable-race@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [12.75, 12.78] s

  * igt@perf_pmu@idle-no-semaphores@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.51, 0.52] s

  * igt@perf_pmu@idle@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.51, 0.52] s

  * igt@perf_pmu@init-busy@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@perf_pmu@init-sema@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@perf_pmu@init-wait@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@perf_pmu@most-busy-idle-check-all@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.66, 2.05] s

  * igt@perf_pmu@multi-client@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.05, 1.99] s

  * igt@perf_pmu@render-node-busy-idle@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.66, 0.67] s

  * igt@perf_pmu@render-node-busy@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.55, 0.56] s

  * igt@perf_pmu@semaphore-busy@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [1.63, 3.13] s

  * igt@perf_pmu@semaphore-wait-idle@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.51] s

  * igt@perf_pmu@semaphore-wait@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.51] s

  * igt@prime_busy@after-wait@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04] s

  * igt@prime_busy@after@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.04] s

  * igt@prime_busy@before@ccs0:
    - Statuses : 2 pass(s)
    - Exec time: [0.04] s

  * igt@prime_busy@hang-wait@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [13.84, 13.90] s

  * igt@prime_busy@hang@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [13.83, 13.88] s

  * igt@prime_vgem@busy@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.05] s

  * igt@prime_vgem@fence-wait@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.04] s

  * igt@prime_vgem@sync@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.04] s

  * igt@prime_vgem@wait@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.05] s

  * igt@sysfs_defaults@readonly@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_heartbeat_interval@idempotent@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.00] s

  * igt@sysfs_heartbeat_interval@mixed@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [5.18, 5.24] s

  * igt@sysfs_heartbeat_interval@nopreempt@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [3.98, 4.33] s

  * igt@sysfs_heartbeat_interval@precise@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.10, 3.31] s

  * igt@sysfs_preempt_timeout@idempotent@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.00] s

  * igt@sysfs_preempt_timeout@invalid@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_preempt_timeout@timeout@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.31, 1.75] s

  * igt@sysfs_timeslice_duration@duration@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [13.14, 13.15] s

  * igt@sysfs_timeslice_duration@idempotent@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@sysfs_timeslice_duration@invalid@ccs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@sysfs_timeslice_duration@timeout@ccs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.21, 1.79] s

  

Known issues
------------

  Here are the changes found in Patchwork_166105v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> ([SKIP][1], [SKIP][2]) ([i915#8411]) +1 other test ( 2 skip )
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@api_intel_bb@blit-reloc-keep-cache.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@api_intel_bb@blit-reloc-keep-cache.html
    - shard-rkl:          NOTRUN -> ([SKIP][3], [SKIP][4]) ([i915#8411]) +1 other test ( 2 skip )
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@api_intel_bb@blit-reloc-keep-cache.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#6230])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@api_intel_bb@crc32.html

  * igt@dmabuf@all-tests:
    - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#15931])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@dmabuf@all-tests.html

  * igt@drm_buddy@drm_buddy:
    - shard-tglu:         NOTRUN -> ([SKIP][7], [SKIP][8]) ([i915#15678])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@drm_buddy@drm_buddy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@drm_buddy@drm_buddy.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#3281]) +6 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_bad_reloc@negative-reloc-lut.html
    - shard-mtlp:         NOTRUN -> [SKIP][10] ([i915#3281]) +2 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#3555] / [i915#9323])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> ([SKIP][12], [SKIP][13]) ([i915#13008])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_ccs@large-ctrl-surf-copy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_ccs@large-ctrl-surf-copy.html
    - shard-tglu-1:       NOTRUN -> [SKIP][14] ([i915#13008])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][15] -> [INCOMPLETE][16] ([i915#12392] / [i915#13356])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu:         NOTRUN -> ([SKIP][17], [SKIP][18]) ([i915#6335])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@gem_create@create-ext-cpu-access-sanity-check.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@gem_create@create-ext-cpu-access-sanity-check.html
    - shard-rkl:          NOTRUN -> ([SKIP][19], [SKIP][20]) ([i915#6335])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_create@create-ext-cpu-access-sanity-check.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [PASS][21] -> ([PASS][22], [FAIL][23]) ([i915#9561]) +1 other test ( 1 fail, 1 pass )
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-8/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> ([SKIP][24], [SKIP][25]) ([i915#280])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_ctx_sseu@invalid-args.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_ctx_sseu@invalid-args.html
    - shard-tglu-1:       NOTRUN -> [SKIP][26] ([i915#280])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> ([SKIP][27], [SKIP][28]) ([i915#280]) +1 other test ( 2 skip )
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_ctx_sseu@mmap-args.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-rkl:          [PASS][29] -> ([ABORT][30], [PASS][31]) ([i915#7975])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-4/igt@gem_eio@hibernate.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_eio@hibernate.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_eio@hibernate.html

  * igt@gem_eio@kms:
    - shard-tglu-1:       NOTRUN -> [DMESG-WARN][32] ([i915#13363])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#4525]) +1 other test skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> ([SKIP][34], [SKIP][35]) ([i915#4525])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_exec_balancer@parallel-contexts.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_exec_balancer@parallel-contexts.html
    - shard-tglu-1:       NOTRUN -> [SKIP][36] ([i915#4525]) +2 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-tglu:         NOTRUN -> ([SKIP][37], [SKIP][38]) ([i915#6334]) +1 other test ( 2 skip )
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@gem_exec_capture@capture-invisible@smem0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fence@concurrent:
    - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#4812])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - shard-dg1:          NOTRUN -> ([SKIP][40], [SKIP][41]) ([i915#3281])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-dg2:          NOTRUN -> ([SKIP][42], [SKIP][43]) ([i915#3281]) +2 other tests ( 2 skip )
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_exec_reloc@basic-softpin.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_exec_reloc@basic-softpin.html
    - shard-rkl:          NOTRUN -> ([SKIP][44], [SKIP][45]) ([i915#3281]) +6 other tests ( 2 skip )
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_exec_reloc@basic-softpin.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> ([SKIP][46], [SKIP][47]) ([i915#4537] / [i915#4812]) +1 other test ( 2 skip )
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@gem_exec_schedule@reorder-wide.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> ([SKIP][48], [SKIP][49]) ([i915#7276])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-rkl:          [PASS][50] -> ([INCOMPLETE][51], [PASS][52]) ([i915#13356]) +1 other test ( 1 incomplete, 1 pass )
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-4/igt@gem_exec_suspend@basic-s0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_exec_suspend@basic-s0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#4613]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          NOTRUN -> ([SKIP][54], [SKIP][55]) ([i915#4613]) +1 other test ( 2 skip )
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
    - shard-tglu-1:       NOTRUN -> [SKIP][56] ([i915#4613]) +5 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][57] ([i915#4613]) +2 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk2/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-tglu:         NOTRUN -> ([SKIP][58], [SKIP][59]) ([i915#4613]) +1 other test ( 2 skip )
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@gem_lmem_swapping@verify-random.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          NOTRUN -> ([SKIP][60], [SKIP][61]) ([i915#4077]) +3 other tests ( 2 skip )
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_mmap_gtt@cpuset-big-copy.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#4077]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          NOTRUN -> ([SKIP][63], [SKIP][64]) ([i915#3282]) +4 other tests ( 2 skip )
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#3282]) +4 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pread@bench:
    - shard-dg2:          NOTRUN -> ([SKIP][66], [SKIP][67]) ([i915#3282]) +1 other test ( 2 skip )
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_pread@bench.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_pread@bench.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-dg2:          NOTRUN -> ([SKIP][68], [SKIP][69]) ([i915#4270])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_pxp@reject-modify-context-protection-on.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#8428])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@gem_render_copy@yf-tiled-ccs-to-linear.html

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs:
    - shard-dg2:          NOTRUN -> ([SKIP][71], [SKIP][72]) ([i915#5190] / [i915#8428]) +1 other test ( 2 skip )
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> ([SKIP][73], [SKIP][74]) ([i915#4885])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-rkl:          NOTRUN -> ([SKIP][75], [SKIP][76]) ([i915#3297]) +1 other test ( 2 skip )
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_userptr_blits@coherency-unsync.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#3297])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-dg2:          NOTRUN -> ([SKIP][78], [SKIP][79]) ([i915#3297])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
    - shard-tglu-1:       NOTRUN -> [SKIP][80] ([i915#3297]) +2 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-mtlp:         NOTRUN -> [SKIP][81] +4 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#2527]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu:         NOTRUN -> ([SKIP][83], [SKIP][84]) ([i915#2527] / [i915#2856]) +3 other tests ( 2 skip )
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@gen9_exec_parse@bb-start-cmd.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglu-1:       NOTRUN -> [SKIP][85] ([i915#2527] / [i915#2856]) +2 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html
    - shard-dg1:          NOTRUN -> ([SKIP][86], [SKIP][87]) ([i915#2527])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@gen9_exec_parse@bb-start-param.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-rkl:          NOTRUN -> ([SKIP][88], [SKIP][89]) ([i915#2527]) +2 other tests ( 2 skip )
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gen9_exec_parse@valid-registers.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-4/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_drm_fdinfo@busy@vecs1:
    - shard-dg2:          NOTRUN -> ([SKIP][90], [SKIP][91]) ([i915#14073]) +7 other tests ( 2 skip )
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@i915_drm_fdinfo@busy@vecs1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@i915_drm_fdinfo@busy@vecs1.html

  * igt@i915_module_load@fault-injection@__uc_init:
    - shard-rkl:          NOTRUN -> ([SKIP][92], [SKIP][93]) ([i915#15479]) +4 other tests ( 2 skip )
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-4/igt@i915_module_load@fault-injection@__uc_init.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@i915_module_load@fault-injection@__uc_init.html

  * igt@i915_module_load@fault-injection@intel_connector_register:
    - shard-rkl:          NOTRUN -> ([ABORT][94], [ABORT][95]) ([i915#15342]) +1 other test ( 2 abort )
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@i915_module_load@fault-injection@intel_connector_register.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-4/igt@i915_module_load@fault-injection@intel_connector_register.html

  * igt@i915_module_load@reload-no-display:
    - shard-tglu-1:       NOTRUN -> [DMESG-WARN][96] ([i915#13029] / [i915#14545])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@i915_module_load@reload-no-display.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#6412])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@i915_module_load@resize-bar.html
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#6412])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-tglu:         NOTRUN -> ([SKIP][99], [SKIP][100]) ([i915#8399])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@i915_pm_freq_api@freq-reset.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#8399])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg2:          NOTRUN -> ([SKIP][102], [SKIP][103]) ([i915#11681])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@i915_pm_rps@thresholds.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@i915_pm_rps@thresholds.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu:         NOTRUN -> ([SKIP][104], [SKIP][105]) ([i915#4387])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@i915_pm_sseu@full-enable.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@i915_pm_sseu@full-enable.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#7984])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@i915_power@sanity.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2:          [PASS][107] -> ([PASS][108], [DMESG-FAIL][109]) ([i915#12061]) +1 other test ( 1 dmesg-fail, 1 pass )
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-1/igt@i915_selftest@live@workarounds.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@i915_selftest@live@workarounds.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s3-without-i915 (NEW):
    - shard-tglu:         NOTRUN -> ([INCOMPLETE][110], [INCOMPLETE][111]) ([i915#4817] / [i915#7443])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@i915_suspend@basic-s3-without-i915.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@debugfs-reader:
    - shard-rkl:          [PASS][112] -> ([PASS][113], [INCOMPLETE][114]) ([i915#4817])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@i915_suspend@debugfs-reader.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@i915_suspend@debugfs-reader.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][115] ([i915#4817])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@i915_suspend@fence-restore-untiled.html

  * igt@i915_suspend@sysfs-reader:
    - shard-glk:          NOTRUN -> [INCOMPLETE][116] ([i915#4817])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk2/igt@i915_suspend@sysfs-reader.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          NOTRUN -> ([SKIP][117], [SKIP][118]) ([i915#7707])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@intel_hwmon@hwmon-write.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@intel_hwmon@hwmon-write.html
    - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#7707])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#12454] / [i915#12712])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-dg1:          [PASS][121] -> ([PASS][122], [DMESG-WARN][123]) ([i915#4423]) +2 other tests ( 1 dmesg-warn, 1 pass )
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-17/igt@kms_async_flips@async-flip-suspend-resume.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-16/igt@kms_async_flips@async-flip-suspend-resume.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#9531])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#1769] / [i915#3555])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-tglu-1:       NOTRUN -> [SKIP][126] ([i915#1769] / [i915#3555])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
    - shard-dg1:          NOTRUN -> ([SKIP][127], [SKIP][128]) ([i915#1769] / [i915#3555])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#5286]) +4 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> ([SKIP][130], [SKIP][131]) ([i915#5286]) +1 other test ( 2 skip )
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> ([SKIP][132], [SKIP][133]) ([i915#5286]) +3 other tests ( 2 skip )
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
    - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#5286]) +6 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
    - shard-mtlp:         [PASS][135] -> ([FAIL][136], [PASS][137]) ([i915#15733] / [i915#5138]) +1 other test ( 1 fail, 1 pass )
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [PASS][138] -> ([FAIL][139], [FAIL][140]) ([i915#15733] / [i915#5138])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> ([SKIP][141], [SKIP][142]) ([i915#3638])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglu:         NOTRUN -> ([SKIP][143], [SKIP][144]) ([i915#3828]) +2 other tests ( 2 skip )
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> ([SKIP][145], [SKIP][146]) ([i915#3638])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3638])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> ([SKIP][148], [SKIP][149]) ([i915#4538] / [i915#5190]) +4 other tests ( 2 skip )
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> ([SKIP][150], [SKIP][151]) ([i915#14544] / [i915#6095]) +4 other tests ( 2 skip )
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:
    - shard-dg2:          NOTRUN -> ([SKIP][152], [SKIP][153]) ([i915#10307] / [i915#6095]) +40 other tests ( 2 skip )
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html
    - shard-rkl:          NOTRUN -> ([SKIP][154], [SKIP][155]) ([i915#14098] / [i915#6095]) +14 other tests ( 2 skip )
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#6095]) +9 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> ([SKIP][157], [SKIP][158]) ([i915#6095]) +44 other tests ( 2 skip )
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> ([SKIP][159], [SKIP][160]) ([i915#6095]) +48 other tests ( 2 skip )
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2:
    - shard-glk11:        NOTRUN -> [SKIP][161] +60 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#6095]) +299 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-14/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#12805])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> ([SKIP][164], [SKIP][165]) ([i915#14098] / [i915#14544] / [i915#6095]) +2 other tests ( 2 skip )
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> ([SKIP][166], [SKIP][167]) ([i915#6095]) +14 other tests ( 2 skip )
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-2.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([SKIP][168], [SKIP][169]) ([i915#6095]) +4 other tests ( 2 skip )
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
    - shard-rkl:          [PASS][170] -> [INCOMPLETE][171] ([i915#15582])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][172] ([i915#15582])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#6095]) +11 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][174] ([i915#15582]) +1 other test incomplete
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> ([SKIP][175], [SKIP][176]) ([i915#12313]) +1 other test ( 2 skip )
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#12313])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#12313])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#14098] / [i915#6095]) +54 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#14544] / [i915#6095]) +3 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#14098] / [i915#14544] / [i915#6095]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> ([SKIP][182], [SKIP][183]) ([i915#12313])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu-1:       NOTRUN -> [SKIP][184] ([i915#6095]) +64 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][185] ([i915#12313]) +2 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#6095]) +97 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#10307] / [i915#6095]) +111 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#10307] / [i915#10434] / [i915#6095]) +7 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition:
    - shard-glk:          NOTRUN -> ([SKIP][189], [SKIP][190]) +147 other tests ( 2 skip )
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk8/igt@kms_cdclk@mode-transition.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk6/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@plane-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#3742])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#13783]) +3 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_frames@hdmi-aspect-ratio:
    - shard-tglu:         NOTRUN -> ([SKIP][193], [SKIP][194]) ([i915#11151] / [i915#7828]) +5 other tests ( 2 skip )
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_chamelium_frames@hdmi-aspect-ratio.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_chamelium_frames@hdmi-aspect-ratio.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#11151] / [i915#7828]) +4 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          NOTRUN -> ([SKIP][196], [SKIP][197]) ([i915#11151] / [i915#7828]) +5 other tests ( 2 skip )
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#11151] / [i915#7828]) +7 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:
    - shard-dg1:          NOTRUN -> ([SKIP][199], [SKIP][200]) ([i915#11151] / [i915#7828])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - shard-dg2:          NOTRUN -> ([SKIP][201], [SKIP][202]) ([i915#11151] / [i915#7828]) +1 other test ( 2 skip )
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#11151] / [i915#7828]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [PASS][204] -> ([SKIP][205], [SKIP][206]) ([i915#12655] / [i915#3555])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_color@deep-color.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_color@deep-color.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][207] ([i915#15330] / [i915#3116] / [i915#3299])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#15330])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#15330])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglu:         NOTRUN -> ([SKIP][210], [SKIP][211]) ([i915#15330] / [i915#3116] / [i915#3299])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_content_protection@dp-mst-type-0.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
    - shard-tglu-1:       NOTRUN -> [SKIP][212] ([i915#15330])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
    - shard-dg1:          NOTRUN -> ([SKIP][213], [SKIP][214]) ([i915#15330])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html

  * igt@kms_content_protection@lic-type-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][215] ([i915#15865])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> ([SKIP][216], [SKIP][217]) ([i915#15865]) +2 other tests ( 2 skip )
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_content_protection@srm.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_content_protection@srm.html
    - shard-tglu:         NOTRUN -> ([SKIP][218], [SKIP][219]) ([i915#15865]) +1 other test ( 2 skip )
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_content_protection@srm.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@suspend-resume@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][220] ([i915#7173])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-10/igt@kms_content_protection@suspend-resume@pipe-a-dp-3.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#15865])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#3555]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [PASS][223] -> ([FAIL][224], [FAIL][225]) ([i915#13566])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          NOTRUN -> ([SKIP][226], [SKIP][227]) ([i915#3555]) +2 other tests ( 2 skip )
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-32x32.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html
    - shard-tglu-1:       NOTRUN -> [SKIP][228] ([i915#3555]) +3 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-128x42:
    - shard-rkl:          NOTRUN -> ([FAIL][229], [PASS][230]) ([i915#13566])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-128x42.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_cursor_crc@cursor-random-128x42.html

  * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][231] ([i915#13566]) +5 other tests fail
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
    - shard-tglu-1:       NOTRUN -> [FAIL][232] ([i915#13566]) +3 other tests fail
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-256x85:
    - shard-rkl:          NOTRUN -> ([FAIL][233], [FAIL][234]) ([i915#13566]) +2 other tests ( 2 fail )
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-256x85.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][235] ([i915#13049])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-glk:          NOTRUN -> [SKIP][236] +137 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk2/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-tglu:         NOTRUN -> ([SKIP][237], [SKIP][238]) ([i915#13049]) +1 other test ( 2 skip )
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu:         NOTRUN -> ([SKIP][239], [SKIP][240]) ([i915#4103]) +1 other test ( 2 skip )
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-dg2:          NOTRUN -> ([SKIP][241], [SKIP][242]) ([i915#13046] / [i915#5354])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][243] +103 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-tglu-1:       NOTRUN -> [SKIP][244] ([i915#9067])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> ([SKIP][245], [SKIP][246]) ([i915#4103] / [i915#4213])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#9723])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-tglu:         NOTRUN -> ([SKIP][248], [SKIP][249]) ([i915#9723])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-rkl:          NOTRUN -> ([SKIP][250], [SKIP][251]) ([i915#13691])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_display_modes@extended-mode-basic.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-tglu-1:       NOTRUN -> [SKIP][252] ([i915#13749]) +1 other test skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#13748])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          NOTRUN -> ([SKIP][254], [SKIP][255]) ([i915#3555] / [i915#3840])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][256] ([i915#3555] / [i915#3840])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#3840] / [i915#9053])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][258] ([i915#9878])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#3955])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu:         NOTRUN -> ([SKIP][260], [SKIP][261]) ([i915#1839]) +1 other test ( 2 skip )
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_feature_discovery@display-3x.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-tglu-1:       NOTRUN -> [SKIP][262] ([i915#9337])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr2:
    - shard-tglu:         NOTRUN -> ([SKIP][263], [SKIP][264]) ([i915#658])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_feature_discovery@psr2.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> ([SKIP][265], [SKIP][266]) ([i915#3637] / [i915#9934]) +4 other tests ( 2 skip )
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop:
    - shard-tglu-1:       NOTRUN -> [SKIP][267] ([i915#9934])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-on-nop.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk11:        NOTRUN -> [FAIL][268] ([i915#13027]) +1 other test fail
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg2:          NOTRUN -> ([SKIP][269], [SKIP][270]) ([i915#9934]) +4 other tests ( 2 skip )
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_flip@2x-flip-vs-panning.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk:          NOTRUN -> ([INCOMPLETE][271], [INCOMPLETE][272]) ([i915#12314] / [i915#12745] / [i915#4839] / [i915#6113])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk9/igt@kms_flip@2x-flip-vs-suspend.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk5/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> ([INCOMPLETE][273], [INCOMPLETE][274]) ([i915#12314] / [i915#12745])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk5/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk9/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-dg1:          NOTRUN -> ([SKIP][275], [SKIP][276]) ([i915#9934]) +2 other tests ( 2 skip )
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#9934])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> ([SKIP][278], [SKIP][279]) ([i915#9934]) +6 other tests ( 2 skip )
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
    - shard-tglu-1:       NOTRUN -> [SKIP][280] ([i915#3637] / [i915#9934]) +9 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][281] -> ([FAIL][282], [PASS][283]) ([i915#13027]) +1 other test ( 1 fail, 1 pass )
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-dg1:          [PASS][284] -> ([FAIL][285], [PASS][286]) ([i915#13027])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-15/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a4:
    - shard-dg1:          NOTRUN -> ([PASS][287], [FAIL][288]) ([i915#13027])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a4.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a4.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][289] ([i915#12745] / [i915#4839])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][290] ([i915#12745] / [i915#4839])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][291] ([i915#12745])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][292] ([i915#12745])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk6/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-rkl:          NOTRUN -> [FAIL][293] ([i915#10826]) +1 other test fail
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_flip@plain-flip-ts-check.html
    - shard-snb:          [PASS][294] -> ([FAIL][295], [FAIL][296]) ([i915#14600]) +1 other test ( 2 fail )
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-snb7/igt@kms_flip@plain-flip-ts-check.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-snb7/igt@kms_flip@plain-flip-ts-check.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-snb6/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-dg2:          NOTRUN -> ([SKIP][297], [SKIP][298]) ([i915#15643])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-rkl:          NOTRUN -> ([SKIP][299], [SKIP][300]) ([i915#15643]) +2 other tests ( 2 skip )
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][301] ([i915#15643]) +2 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
    - shard-dg2:          NOTRUN -> ([SKIP][302], [SKIP][303]) ([i915#15643] / [i915#5190]) +1 other test ( 2 skip )
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][304] ([i915#15643])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> ([SKIP][305], [SKIP][306]) ([i915#15643]) +3 other tests ( 2 skip )
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][307] ([i915#15643]) +1 other test skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> ([SKIP][308], [SKIP][309]) ([i915#15990] / [i915#8708]) +7 other tests ( 2 skip )
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][310] ([i915#1825]) +25 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:
    - shard-dg2:          NOTRUN -> ([SKIP][311], [SKIP][312]) ([i915#15991] / [i915#5354]) +10 other tests ( 2 skip )
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> ([SKIP][313], [SKIP][314]) ([i915#1825]) +26 other tests ( 2 skip )
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-dg2:          [PASS][315] -> ([ABORT][316], [PASS][317]) ([i915#15132])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-suspend.html
    - shard-rkl:          [PASS][318] -> ([INCOMPLETE][319], [PASS][320]) ([i915#10056])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-glk:          NOTRUN -> ([SKIP][321], [PASS][322]) +10 other tests ( 1 pass, 1 skip )
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff:
    - shard-rkl:          NOTRUN -> ([SKIP][323], [SKIP][324]) ([i915#15989]) +8 other tests ( 2 skip )
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          [PASS][325] -> ([SKIP][326], [SKIP][327]) ([i915#15989])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-10/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-plflip-blt.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-plflip-blt.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render:
    - shard-rkl:          [PASS][328] -> ([SKIP][329], [SKIP][330]) ([i915#15989]) +5 other tests ( 2 skip )
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> ([SKIP][331], [SKIP][332]) +53 other tests ( 2 skip )
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-shrfb-pgflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][333] +36 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render:
    - shard-dg1:          NOTRUN -> ([SKIP][334], [SKIP][335]) ([i915#15989])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@fbchdr-stridechange:
    - shard-tglu-1:       NOTRUN -> [SKIP][336] ([i915#15989]) +20 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-stridechange.html

  * igt@kms_frontbuffer_tracking@fbchdr-tiling-linear:
    - shard-rkl:          NOTRUN -> [SKIP][337] ([i915#15989]) +16 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-tiling-linear.html

  * igt@kms_frontbuffer_tracking@fbchdr-tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][338] ([i915#10055])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbchdr-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          NOTRUN -> [SKIP][339] ([i915#15102] / [i915#3023]) +12 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> ([SKIP][340], [SKIP][341]) ([i915#15102] / [i915#3458]) +4 other tests ( 2 skip )
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
    - shard-rkl:          NOTRUN -> ([SKIP][342], [SKIP][343]) ([i915#15102] / [i915#3023]) +14 other tests ( 2 skip )
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][344] ([i915#15991] / [i915#1825]) +2 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> ([SKIP][345], [SKIP][346]) +83 other tests ( 2 skip )
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][347] ([i915#15102]) +44 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][348] ([i915#15102]) +16 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][349], [SKIP][350]) ([i915#15990]) +5 other tests ( 2 skip )
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-shrfb-fliptrack-mmap-gtt.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-y:
    - shard-dg1:          NOTRUN -> ([SKIP][351], [SKIP][352]) ([i915#15102])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-y.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-y.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt:
    - shard-rkl:          [PASS][353] -> ([SKIP][354], [PASS][355]) ([i915#15989])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglu:         NOTRUN -> ([SKIP][356], [SKIP][357]) ([i915#15989]) +13 other tests ( 2 skip )
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-indfb-draw-blt.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][358] ([i915#15989]) +7 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-render:
    - shard-dg2:          NOTRUN -> ([SKIP][359], [SKIP][360]) ([i915#15989]) +6 other tests ( 2 skip )
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-render.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> ([SKIP][361], [SKIP][362]) ([i915#15990])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> ([SKIP][363], [SKIP][364]) ([i915#15991]) +9 other tests ( 2 skip )
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-pwrite.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][365] ([i915#15991]) +6 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite:
    - shard-glk:          [PASS][366] -> ([SKIP][367], [SKIP][368]) +17 other tests ( 2 skip )
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-glk8/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk6/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk4/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> ([SKIP][369], [SKIP][370]) ([i915#15104] / [i915#15990]) +1 other test ( 2 skip )
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
    - shard-dg1:          NOTRUN -> ([SKIP][371], [SKIP][372]) +3 other tests ( 2 skip )
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> ([SKIP][373], [SKIP][374]) ([i915#15102] / [i915#3458]) +1 other test ( 2 skip )
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-tglu:         NOTRUN -> ([SKIP][375], [SKIP][376]) ([i915#15102]) +39 other tests ( 2 skip )
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg2:          NOTRUN -> ([SKIP][377], [SKIP][378]) ([i915#15102]) +4 other tests ( 2 skip )
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-render.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move:
    - shard-rkl:          NOTRUN -> ([SKIP][379], [SKIP][380]) ([i915#15102]) +14 other tests ( 2 skip )
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psrhdr-farfromfence-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][381] ([i915#15990]) +2 other tests skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@psrhdr-farfromfence-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> ([SKIP][382], [SKIP][383]) ([i915#16012] / [i915#3555] / [i915#8228])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_hdr@bpc-switch-dpms.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][384] ([i915#16012]) +5 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-4-xrgb16161616f:
    - shard-dg1:          NOTRUN -> ([SKIP][385], [SKIP][386]) ([i915#16012]) +1 other test ( 2 skip )
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-17/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-4-xrgb16161616f.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-4-xrgb16161616f.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010:
    - shard-dg1:          NOTRUN -> [SKIP][387] ([i915#16012]) +3 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-15/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010.html

  * igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f:
    - shard-dg1:          NOTRUN -> [SKIP][388] ([i915#16011]) +5 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-14/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f.html

  * igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-3-xrgb16161616f:
    - shard-dg2:          NOTRUN -> ([SKIP][389], [SKIP][390]) ([i915#16011]) +1 other test ( 2 skip )
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-1/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-3-xrgb16161616f.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-3-xrgb16161616f.html

  * igt@kms_hdr@static-swap@pipe-a-hdmi-a-2-xrgb2101010:
    - shard-rkl:          NOTRUN -> ([SKIP][391], [SKIP][392]) ([i915#16011]) +1 other test ( 2 skip )
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_hdr@static-swap@pipe-a-hdmi-a-2-xrgb2101010.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_hdr@static-swap@pipe-a-hdmi-a-2-xrgb2101010.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglu:         NOTRUN -> ([SKIP][393], [SKIP][394]) ([i915#16011] / [i915#3555] / [i915#8228])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_hdr@static-toggle-dpms.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010:
    - shard-tglu:         NOTRUN -> ([SKIP][395], [SKIP][396]) ([i915#16011]) +1 other test ( 2 skip )
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [PASS][397] -> ([SKIP][398], [SKIP][399]) ([i915#16011] / [i915#3555] / [i915#8228])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-3-xrgb16161616f:
    - shard-dg2:          NOTRUN -> [SKIP][400] ([i915#16011]) +3 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-3-xrgb16161616f.html

  * igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-4-xrgb16161616f:
    - shard-dg1:          NOTRUN -> ([SKIP][401], [SKIP][402]) ([i915#16011]) +1 other test ( 2 skip )
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-4-xrgb16161616f.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-4-xrgb16161616f.html

  * igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f:
    - shard-rkl:          NOTRUN -> [SKIP][403] ([i915#16011]) +3 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][404] ([i915#15458])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][405] ([i915#15458])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][406] ([i915#15459])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-tglu:         NOTRUN -> ([SKIP][407], [SKIP][408]) ([i915#15458])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][409] ([i915#15638] / [i915#15722])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-tglu:         NOTRUN -> ([SKIP][410], [SKIP][411]) ([i915#6301])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_panel_fitting@atomic-fastset.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][412] ([i915#12756] / [i915#13409] / [i915#13476]) +1 other test incomplete
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  * igt@kms_pipe_stress@stress-xrgb8888-4tiled:
    - shard-tglu:         NOTRUN -> ([SKIP][413], [SKIP][414]) ([i915#14712])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html

  * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
    - shard-mtlp:         NOTRUN -> [SKIP][415] ([i915#14712])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
    - shard-rkl:          NOTRUN -> [SKIP][416] ([i915#14712])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:
    - shard-glk10:        NOTRUN -> [SKIP][417] +175 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping:
    - shard-tglu:         NOTRUN -> ([SKIP][418], [SKIP][419]) ([i915#15709]) +2 other tests ( 2 skip )
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier@pipe-b-plane-5:
    - shard-dg2:          NOTRUN -> ([SKIP][420], [SKIP][421]) ([i915#15608]) +1 other test ( 2 skip )
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier@pipe-b-plane-5.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier@pipe-b-plane-5.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping:
    - shard-rkl:          NOTRUN -> [SKIP][422] ([i915#15709]) +3 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-7:
    - shard-dg1:          NOTRUN -> ([SKIP][423], [SKIP][424]) ([i915#15608]) +1 other test ( 2 skip )
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-7.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-7.html

  * igt@kms_plane@pixel-format-y-tiled-ccs-modifier:
    - shard-rkl:          NOTRUN -> ([SKIP][425], [SKIP][426]) ([i915#15709]) +2 other tests ( 2 skip )
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html

  * igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping:
    - shard-mtlp:         NOTRUN -> [SKIP][427] ([i915#15709])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
    - shard-tglu-1:       NOTRUN -> [SKIP][428] ([i915#15709]) +2 other tests skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-b-plane-7:
    - shard-tglu-1:       NOTRUN -> [SKIP][429] ([i915#15608]) +3 other tests skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-b-plane-7.html

  * igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7:
    - shard-tglu:         NOTRUN -> ([SKIP][430], [SKIP][431]) ([i915#15608]) +1 other test ( 2 skip )
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-glk10:        NOTRUN -> [FAIL][432] ([i915#12178])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [FAIL][433] ([i915#7862]) +1 other test fail
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][434] ([i915#13958]) +1 other test skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-4.html
    - shard-mtlp:         NOTRUN -> [SKIP][435] ([i915#13958])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-tglu:         NOTRUN -> ([SKIP][436], [SKIP][437]) ([i915#13958])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_plane_multiple@2x-tiling-y.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][438] ([i915#14259])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:
    - shard-mtlp:         NOTRUN -> [SKIP][439] ([i915#15329]) +4 other tests skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][440] ([i915#15329]) +3 other tests skip
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-tglu-1:       NOTRUN -> [SKIP][441] ([i915#15329]) +4 other tests skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][442] ([i915#12343])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          NOTRUN -> ([SKIP][443], [SKIP][444]) ([i915#5354])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_pm_backlight@fade-with-suspend.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_pm_backlight@fade-with-suspend.html
    - shard-tglu:         NOTRUN -> ([SKIP][445], [SKIP][446]) ([i915#9812])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_pm_backlight@fade-with-suspend.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][447] ([i915#13441])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-tglu-1:       NOTRUN -> [SKIP][448] ([i915#15948]) +1 other test skip
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          NOTRUN -> [SKIP][449] ([i915#8430])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [PASS][450] -> [SKIP][451] ([i915#15073])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-4/igt@kms_pm_rpm@dpms-non-lpsp.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html
    - shard-tglu-1:       NOTRUN -> [SKIP][452] ([i915#15073])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_pm_rpm@dpms-non-lpsp.html
    - shard-dg1:          [PASS][453] -> ([SKIP][454], [PASS][455]) ([i915#15073])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-17/igt@kms_pm_rpm@dpms-non-lpsp.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-15/igt@kms_pm_rpm@dpms-non-lpsp.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-16/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-dg1:          NOTRUN -> ([SKIP][456], [SKIP][457]) ([i915#4077]) +1 other test ( 2 skip )
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_pm_rpm@fences-dpms.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          NOTRUN -> ([SKIP][458], [SKIP][459]) ([i915#15073]) +1 other test ( 2 skip )
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [PASS][460] -> ([SKIP][461], [SKIP][462]) ([i915#15073])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [PASS][463] -> ([PASS][464], [SKIP][465]) ([i915#15073])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          NOTRUN -> ([PASS][466], [SKIP][467]) ([i915#15073]) +3 other tests ( 1 pass, 1 skip )
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@system-suspend-idle:
    - shard-dg2:          [PASS][468] -> ([INCOMPLETE][469], [PASS][470]) ([i915#14419])
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-7/igt@kms_pm_rpm@system-suspend-idle.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_pm_rpm@system-suspend-idle.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-8/igt@kms_pm_rpm@system-suspend-idle.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> ([SKIP][471], [SKIP][472]) ([i915#11520]) +6 other tests ( 2 skip )
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html
    - shard-glk11:        NOTRUN -> [SKIP][473] ([i915#11520]) +2 other tests skip
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> ([SKIP][474], [SKIP][475]) ([i915#11520]) +6 other tests ( 2 skip )
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-dg1:          NOTRUN -> ([SKIP][476], [SKIP][477]) ([i915#11520])
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][478] ([i915#11520]) +2 other tests skip
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][479] ([i915#9808])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][480] ([i915#12316]) +1 other test skip
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf@pipe-b-edp-1.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][481] ([i915#11520]) +7 other tests skip
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-glk10:        NOTRUN -> [SKIP][482] ([i915#11520]) +3 other tests skip
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
    - shard-dg2:          NOTRUN -> ([SKIP][483], [SKIP][484]) ([i915#11520]) +2 other tests ( 2 skip )
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][485] ([i915#11520]) +3 other tests skip
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk2/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> ([SKIP][486], [SKIP][487]) ([i915#11520]) +3 other tests ( 2 skip )
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk9/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk5/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu:         NOTRUN -> ([SKIP][488], [SKIP][489]) ([i915#9683])
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_psr2_su@page_flip-p010.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-pr-cursor-plane-onoff:
    - shard-dg1:          NOTRUN -> ([SKIP][490], [SKIP][491]) ([i915#1072] / [i915#9732])
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_psr@fbc-pr-cursor-plane-onoff.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_psr@fbc-pr-cursor-plane-onoff.html

  * igt@kms_psr@fbc-psr-sprite-render:
    - shard-mtlp:         NOTRUN -> [SKIP][492] ([i915#9688]) +2 other tests skip
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_psr@fbc-psr-sprite-render.html

  * igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][493], [SKIP][494]) ([i915#1072] / [i915#9732]) +7 other tests ( 2 skip )
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html

  * igt@kms_psr@fbc-psr2-primary-blt:
    - shard-rkl:          NOTRUN -> [SKIP][495] ([i915#1072] / [i915#9732]) +13 other tests skip
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_psr@fbc-psr2-primary-blt.html

  * igt@kms_psr@pr-dpms:
    - shard-tglu:         NOTRUN -> ([SKIP][496], [SKIP][497]) ([i915#9732]) +16 other tests ( 2 skip )
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_psr@pr-dpms.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_psr@pr-dpms.html

  * igt@kms_psr@psr2-primary-mmap-gtt:
    - shard-rkl:          NOTRUN -> ([SKIP][498], [SKIP][499]) ([i915#1072] / [i915#9732]) +15 other tests ( 2 skip )
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_psr@psr2-primary-mmap-gtt.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_psr@psr2-primary-mmap-gtt.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][500] ([i915#9732]) +18 other tests skip
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][501] ([i915#15949]) +1 other test skip
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-top:
    - shard-glk:          NOTRUN -> ([INCOMPLETE][502], [INCOMPLETE][503]) ([i915#15492])
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk5/igt@kms_rotation_crc@multiplane-rotation-cropping-top.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk9/igt@kms_rotation_crc@multiplane-rotation-cropping-top.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-dg2:          NOTRUN -> ([SKIP][504], [SKIP][505]) ([i915#5190])
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
    - shard-rkl:          NOTRUN -> ([SKIP][506], [SKIP][507]) ([i915#5289])
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-tglu-1:       NOTRUN -> [SKIP][508] ([i915#5289]) +1 other test skip
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-tglu:         NOTRUN -> ([SKIP][509], [SKIP][510]) ([i915#3555]) +2 other tests ( 2 skip )
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_scaling_modes@scaling-mode-none.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-rkl:          NOTRUN -> ([ABORT][511], [ABORT][512]) ([i915#13179]) +1 other test ( 2 abort )
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_selftest@drm_framebuffer.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_selftest@drm_framebuffer.html
    - shard-tglu:         NOTRUN -> ([ABORT][513], [ABORT][514]) ([i915#13179]) +1 other test ( 2 abort )
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_selftest@drm_framebuffer.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-dg2:          NOTRUN -> ([SKIP][515], [SKIP][516]) ([i915#3555]) +2 other tests ( 2 skip )
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_setmode@invalid-clone-exclusive-crtc.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-glk10:        NOTRUN -> [FAIL][517] ([i915#10959])
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_tiled_display@basic-test-pattern.html
    - shard-rkl:          NOTRUN -> ([SKIP][518], [SKIP][519]) ([i915#8623])
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_tiled_display@basic-test-pattern.html
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu:         NOTRUN -> ([SKIP][520], [SKIP][521]) ([i915#9906])
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_vrr@flip-basic-fastset.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@flip-dpms:
    - shard-dg2:          NOTRUN -> ([SKIP][522], [SKIP][523]) ([i915#15243] / [i915#3555])
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_vrr@flip-dpms.html
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_vrr@flip-dpms.html

  * igt@kms_vrr@flipline:
    - shard-rkl:          NOTRUN -> ([SKIP][524], [SKIP][525]) ([i915#15243] / [i915#3555])
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_vrr@flipline.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_vrr@flipline.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          NOTRUN -> [SKIP][526] ([i915#3555] / [i915#9906])
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_vrr@negative-basic.html

  * igt@perf_pmu@busy-double-start@ccs0 (NEW):
    - shard-mtlp:         [FAIL][527] ([i915#4349]) -> ([FAIL][528], [PASS][529]) ([i915#4349])
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-3/igt@perf_pmu@busy-double-start@ccs0.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-1/igt@perf_pmu@busy-double-start@ccs0.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> ([SKIP][530], [SKIP][531]) +4 other tests ( 2 skip )
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@perf_pmu@event-wait@rcs0.html
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@module-unload:
    - shard-tglu-1:       NOTRUN -> [ABORT][532] ([i915#13029] / [i915#15778])
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@perf_pmu@module-unload.html
    - shard-dg1:          NOTRUN -> ([ABORT][533], [ABORT][534]) ([i915#13029] / [i915#15778])
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@perf_pmu@module-unload.html
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu:         NOTRUN -> ([SKIP][535], [SKIP][536]) ([i915#8516])
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@perf_pmu@rc6-all-gts.html
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> ([SKIP][537], [SKIP][538]) ([i915#3708])
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@prime_vgem@fence-flip-hang.html
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-dg2:          NOTRUN -> ([SKIP][539], [SKIP][540]) ([i915#9917])
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
    - shard-rkl:          NOTRUN -> ([SKIP][541], [SKIP][542]) ([i915#9917])
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
    - shard-tglu-1:       NOTRUN -> [FAIL][543] ([i915#12910])
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@gem_eio@create-ext:
    - shard-mtlp:         [ABORT][544] ([i915#15511]) -> [PASS][545]
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-2/igt@gem_eio@create-ext.html
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@gem_eio@create-ext.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-dg2:          [DMESG-WARN][546] ([i915#15569]) -> ([PASS][547], [PASS][548])
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-3/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_workarounds@suspend-resume:
    - shard-rkl:          [INCOMPLETE][549] ([i915#13356]) -> ([PASS][550], [PASS][551])
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_workarounds@suspend-resume.html
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_workarounds@suspend-resume.html
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_workarounds@suspend-resume.html

  * igt@i915_selftest@live:
    - shard-dg1:          [DMESG-FAIL][552] ([i915#15560]) -> ([PASS][553], [PASS][554])
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@i915_selftest@live.html
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@i915_selftest@live.html
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@i915_selftest@live.html
    - shard-mtlp:         [DMESG-FAIL][555] ([i915#12061] / [i915#15560]) -> ([PASS][556], [PASS][557])
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-4/igt@i915_selftest@live.html
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-8/igt@i915_selftest@live.html
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-dg1:          [DMESG-FAIL][558] ([i915#15433]) -> ([PASS][559], [PASS][560])
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@i915_selftest@live@gem_contexts.html
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@i915_selftest@live@gem_contexts.html
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [DMESG-FAIL][561] ([i915#12061]) -> ([PASS][562], [PASS][563])
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-4/igt@i915_selftest@live@workarounds.html
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-2/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-rkl:          [INCOMPLETE][564] ([i915#4817]) -> ([PASS][565], [PASS][566])
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-4/igt@i915_suspend@fence-restore-untiled.html
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@i915_suspend@fence-restore-untiled.html
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][567] ([i915#15662]) -> [PASS][568] +1 other test pass
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-tglu-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:
    - shard-dg1:          [DMESG-WARN][569] ([i915#4391] / [i915#4423]) -> ([PASS][570], [PASS][571])
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-14/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-dg1:          [DMESG-WARN][572] ([i915#4423]) -> ([PASS][573], [PASS][574]) +3 other tests ( 2 pass )
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-16/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render:
    - shard-rkl:          [SKIP][575] ([i915#15989]) -> ([PASS][576], [PASS][577]) +3 other tests ( 2 pass )
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-cur-indfb-onoff:
    - shard-glk:          [SKIP][578] -> [PASS][579] +19 other tests pass
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-glk4/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-cur-indfb-onoff.html
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk8/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_lease@simple-lease:
    - shard-dg1:          [ABORT][580] ([i915#4423]) -> ([PASS][581], [PASS][582])
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@kms_lease@simple-lease.html
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_lease@simple-lease.html
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_lease@simple-lease.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [SKIP][583] ([i915#15073]) -> ([PASS][584], [PASS][585])
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-8/igt@kms_pm_rpm@dpms-non-lpsp.html
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][586] ([i915#15073]) -> ([PASS][587], [PASS][588])
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@perf_pmu@rc6-suspend:
    - shard-dg2:          [ABORT][589] ([i915#15131]) -> ([PASS][590], [PASS][591])
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-10/igt@perf_pmu@rc6-suspend.html
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@perf_pmu@rc6-suspend.html
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@perf_pmu@rc6-suspend.html

  
#### Warnings ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][592] ([i915#14544] / [i915#3555] / [i915#9323]) -> ([SKIP][593], [SKIP][594]) ([i915#3555] / [i915#9323])
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          [SKIP][595] ([i915#9323]) -> [SKIP][596] ([i915#14544] / [i915#9323])
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@gem_ccs@block-multicopy-compressed.html
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          [SKIP][597] ([i915#280]) -> ([SKIP][598], [SKIP][599]) ([i915#14544] / [i915#280])
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@gem_ctx_sseu@invalid-sseu.html
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][600] ([i915#4525]) -> ([SKIP][601], [SKIP][602]) ([i915#14544] / [i915#4525])
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-rkl:          [SKIP][603] ([i915#14544] / [i915#3281]) -> ([SKIP][604], [SKIP][605]) ([i915#3281]) +3 other tests ( 2 skip )
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_exec_reloc@basic-concurrent0.html
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_exec_reloc@basic-concurrent0.html
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-rkl:          [SKIP][606] ([i915#3281]) -> ([SKIP][607], [SKIP][608]) ([i915#14544] / [i915#3281]) +4 other tests ( 2 skip )
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@gem_exec_reloc@basic-wc.html
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_exec_reloc@basic-wc.html
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-rkl:          [SKIP][609] ([i915#14544] / [i915#4613]) -> ([SKIP][610], [SKIP][611]) ([i915#4613])
   [609]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-engines.html
   [610]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_lmem_swapping@parallel-random-engines.html
   [611]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify:
    - shard-rkl:          [SKIP][612] ([i915#4613]) -> ([SKIP][613], [SKIP][614]) ([i915#14544] / [i915#4613]) +1 other test ( 2 skip )
   [612]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@gem_lmem_swapping@verify.html
   [613]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_lmem_swapping@verify.html
   [614]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_lmem_swapping@verify.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-rkl:          [SKIP][615] ([i915#4613]) -> [SKIP][616] ([i915#14544] / [i915#4613])
   [615]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@gem_lmem_swapping@verify-random-ccs.html
   [616]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_media_vme:
    - shard-rkl:          [SKIP][617] ([i915#14544] / [i915#284]) -> ([SKIP][618], [SKIP][619]) ([i915#284])
   [617]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_media_vme.html
   [618]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_media_vme.html
   [619]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_media_vme.html

  * igt@gem_pwrite@basic-random:
    - shard-rkl:          [SKIP][620] ([i915#14544] / [i915#3282]) -> ([SKIP][621], [SKIP][622]) ([i915#3282]) +2 other tests ( 2 skip )
   [620]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_pwrite@basic-random.html
   [621]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_pwrite@basic-random.html
   [622]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_pwrite@basic-random.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          [SKIP][623] ([i915#13717]) -> ([SKIP][624], [SKIP][625]) ([i915#13717] / [i915#14544])
   [623]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@gem_pxp@hw-rejects-pxp-buffer.html
   [624]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html
   [625]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          [SKIP][626] ([i915#13717] / [i915#14544]) -> ([SKIP][627], [SKIP][628]) ([i915#13717])
   [626]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html
   [627]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_pxp@hw-rejects-pxp-context.html
   [628]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-rkl:          [SKIP][629] ([i915#3282]) -> ([SKIP][630], [SKIP][631]) ([i915#14544] / [i915#3282]) +1 other test ( 2 skip )
   [629]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@gem_readwrite@write-bad-handle.html
   [630]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html
   [631]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          [SKIP][632] ([i915#3297]) -> ([SKIP][633], [SKIP][634]) ([i915#14544] / [i915#3297]) +2 other tests ( 2 skip )
   [632]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@gem_userptr_blits@coherency-sync.html
   [633]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_userptr_blits@coherency-sync.html
   [634]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          [SKIP][635] ([i915#3282] / [i915#3297]) -> ([SKIP][636], [SKIP][637]) ([i915#14544] / [i915#3282] / [i915#3297])
   [635]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@gem_userptr_blits@forbidden-operations.html
   [636]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@gem_userptr_blits@forbidden-operations.html
   [637]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [SKIP][638] ([i915#2527]) -> ([SKIP][639], [SKIP][640]) ([i915#14544] / [i915#2527]) +1 other test ( 2 skip )
   [638]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html
   [639]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gen9_exec_parse@bb-start-param.html
   [640]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [SKIP][641] ([i915#14544] / [i915#2527]) -> ([SKIP][642], [SKIP][643]) ([i915#2527])
   [641]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html
   [642]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@gen9_exec_parse@shadow-peek.html
   [643]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-rkl:          [INCOMPLETE][644] ([i915#13356]) -> ([INCOMPLETE][645], [PASS][646]) ([i915#13356])
   [644]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-3/igt@i915_pm_rpm@system-suspend-execbuf.html
   [645]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [646]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          [SKIP][647] ([i915#5723]) -> ([SKIP][648], [SKIP][649]) ([i915#14544] / [i915#5723])
   [647]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html
   [648]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
   [649]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          [SKIP][650] ([i915#1769] / [i915#3555]) -> ([SKIP][651], [SKIP][652]) ([i915#14544] / [i915#1769] / [i915#3555])
   [650]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [651]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [652]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-rkl:          [SKIP][653] ([i915#14544] / [i915#5286]) -> ([SKIP][654], [SKIP][655]) ([i915#5286])
   [653]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
   [654]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
   [655]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][656] ([i915#5286]) -> ([SKIP][657], [SKIP][658]) ([i915#14544] / [i915#5286]) +1 other test ( 2 skip )
   [656]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [657]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [658]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-rkl:          [SKIP][659] ([i915#14544] / [i915#3638]) -> ([SKIP][660], [SKIP][661]) ([i915#3638])
   [659]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-270.html
   [660]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_big_fb@linear-16bpp-rotate-270.html
   [661]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-rkl:          [SKIP][662] ([i915#3638]) -> ([SKIP][663], [SKIP][664]) ([i915#14544] / [i915#3638]) +1 other test ( 2 skip )
   [662]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [663]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [664]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][665] ([i915#14544] / [i915#3828]) -> ([SKIP][666], [SKIP][667]) ([i915#3828])
   [665]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html
   [666]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html
   [667]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          [SKIP][668] ([i915#14544]) -> ([SKIP][669], [SKIP][670]) +24 other tests ( 2 skip )
   [668]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [669]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [670]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][671] ([i915#14544] / [i915#6095]) -> [SKIP][672] ([i915#6095]) +1 other test skip
   [671]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-2.html
   [672]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][673] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][674] ([i915#14098] / [i915#6095])
   [673]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2.html
   [674]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][675] ([i915#12313]) -> ([SKIP][676], [SKIP][677]) ([i915#12313] / [i915#14544])
   [675]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
   [676]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
   [677]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][678] ([i915#14544] / [i915#6095]) -> ([SKIP][679], [SKIP][680]) ([i915#6095]) +4 other tests ( 2 skip )
   [678]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
   [679]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
   [680]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][681] ([i915#14098] / [i915#14544] / [i915#6095]) -> ([SKIP][682], [SKIP][683]) ([i915#14098] / [i915#6095]) +6 other tests ( 2 skip )
   [681]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html
   [682]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html
   [683]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          [INCOMPLETE][684] ([i915#14694] / [i915#15582]) -> [INCOMPLETE][685] ([i915#15582]) +1 other test incomplete
   [684]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-glk1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
   [685]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][686] ([i915#14098] / [i915#6095]) -> ([SKIP][687], [SKIP][688]) ([i915#14098] / [i915#14544] / [i915#6095]) +9 other tests ( 2 skip )
   [686]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
   [687]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
   [688]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          [SKIP][689] ([i915#14098] / [i915#6095]) -> [SKIP][690] ([i915#14098] / [i915#14544] / [i915#6095])
   [689]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html
   [690]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][691] ([i915#6095]) -> ([SKIP][692], [SKIP][693]) ([i915#14544] / [i915#6095]) +5 other tests ( 2 skip )
   [691]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-2.html
   [692]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-2.html
   [693]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-rkl:          [SKIP][694] ([i915#11151] / [i915#14544] / [i915#7828]) -> ([SKIP][695], [SKIP][696]) ([i915#11151] / [i915#7828]) +2 other tests ( 2 skip )
   [694]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
   [695]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
   [696]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          [SKIP][697] ([i915#11151] / [i915#7828]) -> ([SKIP][698], [SKIP][699]) ([i915#11151] / [i915#14544] / [i915#7828]) +4 other tests ( 2 skip )
   [697]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_chamelium_frames@hdmi-frame-dump.html
   [698]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-frame-dump.html
   [699]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          [SKIP][700] ([i915#14544] / [i915#15865]) -> ([SKIP][701], [SKIP][702]) ([i915#15865])
   [700]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_content_protection@content-type-change.html
   [701]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_content_protection@content-type-change.html
   [702]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
    - shard-rkl:          [SKIP][703] ([i915#15330]) -> ([SKIP][704], [SKIP][705]) ([i915#14544] / [i915#15330])
   [703]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
   [704]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
   [705]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          [SKIP][706] ([i915#15865]) -> ([SKIP][707], [SKIP][708]) ([i915#14544] / [i915#15865]) +1 other test ( 2 skip )
   [706]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_content_protection@legacy.html
   [707]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_content_protection@legacy.html
   [708]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@suspend-resume:
    - shard-dg2:          [SKIP][709] ([i915#15865]) -> ([FAIL][710], [SKIP][711]) ([i915#15865] / [i915#7173])
   [709]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-7/igt@kms_content_protection@suspend-resume.html
   [710]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-10/igt@kms_content_protection@suspend-resume.html
   [711]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@kms_content_protection@suspend-resume.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [FAIL][712] ([i915#1339] / [i915#7173]) -> ([SKIP][713], [SKIP][714]) ([i915#15865])
   [712]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-10/igt@kms_content_protection@uevent.html
   [713]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_content_protection@uevent.html
   [714]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_content_protection@uevent.html
    - shard-rkl:          [SKIP][715] ([i915#15865]) -> [SKIP][716] ([i915#14544] / [i915#15865])
   [715]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@kms_content_protection@uevent.html
   [716]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          [SKIP][717] ([i915#3555]) -> ([SKIP][718], [SKIP][719]) ([i915#14544] / [i915#3555]) +1 other test ( 2 skip )
   [717]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [718]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [719]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          [SKIP][720] ([i915#13049]) -> ([SKIP][721], [SKIP][722]) ([i915#13049] / [i915#3359])
   [720]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x170.html
   [721]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x170.html
   [722]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x170.html
    - shard-rkl:          [SKIP][723] ([i915#13049]) -> ([SKIP][724], [SKIP][725]) ([i915#13049] / [i915#14544]) +1 other test ( 2 skip )
   [723]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x170.html
   [724]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html
   [725]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-rkl:          [SKIP][726] ([i915#14544] / [i915#3555]) -> ([SKIP][727], [SKIP][728]) ([i915#3555]) +1 other test ( 2 skip )
   [726]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [727]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [728]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][729] -> ([SKIP][730], [SKIP][731]) ([i915#14544]) +33 other tests ( 2 skip )
   [729]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [730]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [731]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - shard-dg1:          [FAIL][732] ([i915#15999]) -> ([FAIL][733], [PASS][734]) ([i915#15999])
   [732]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-13/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [733]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-14/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [734]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-16/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-rkl:          [SKIP][735] ([i915#13749]) -> ([SKIP][736], [SKIP][737]) ([i915#13749] / [i915#14544])
   [735]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_dp_link_training@non-uhbr-sst.html
   [736]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_dp_link_training@non-uhbr-sst.html
   [737]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-rkl:          [SKIP][738] ([i915#13748]) -> ([SKIP][739], [SKIP][740]) ([i915#13748] / [i915#14544])
   [738]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_dp_link_training@uhbr-sst.html
   [739]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_dp_link_training@uhbr-sst.html
   [740]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          [SKIP][741] ([i915#4854]) -> ([SKIP][742], [SKIP][743]) ([i915#14544] / [i915#4854])
   [741]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_feature_discovery@chamelium.html
   [742]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_feature_discovery@chamelium.html
   [743]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          [SKIP][744] ([i915#9337]) -> ([SKIP][745], [SKIP][746]) ([i915#14544] / [i915#9337])
   [744]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_feature_discovery@dp-mst.html
   [745]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_feature_discovery@dp-mst.html
   [746]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          [SKIP][747] ([i915#14544] / [i915#658]) -> ([SKIP][748], [SKIP][749]) ([i915#658])
   [747]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_feature_discovery@psr2.html
   [748]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_feature_discovery@psr2.html
   [749]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          [SKIP][750] ([i915#14544] / [i915#9934]) -> ([SKIP][751], [SKIP][752]) ([i915#9934]) +1 other test ( 2 skip )
   [750]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html
   [751]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_flip@2x-flip-vs-dpms.html
   [752]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-rkl:          [SKIP][753] ([i915#9934]) -> [SKIP][754] ([i915#14544] / [i915#9934])
   [753]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
   [754]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-rkl:          [SKIP][755] ([i915#9934]) -> ([SKIP][756], [SKIP][757]) ([i915#14544] / [i915#9934]) +5 other tests ( 2 skip )
   [755]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
   [756]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
   [757]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-rkl:          [INCOMPLETE][758] ([i915#6113]) -> ([PASS][759], [INCOMPLETE][760]) ([i915#6113])
   [758]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html
   [759]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_flip@flip-vs-suspend.html
   [760]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][761] ([i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][762] ([i915#12745] / [i915#4839])
   [761]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [762]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-rkl:          [SKIP][763] ([i915#14544] / [i915#15643]) -> ([SKIP][764], [SKIP][765]) ([i915#15643])
   [763]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [764]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [765]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          [SKIP][766] ([i915#15643]) -> ([SKIP][767], [SKIP][768]) ([i915#14544] / [i915#15643]) +2 other tests ( 2 skip )
   [766]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
   [767]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
   [768]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][769] ([i915#15104] / [i915#15990] / [i915#4423]) -> ([SKIP][770], [SKIP][771]) ([i915#15104] / [i915#15990])
   [769]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html
   [770]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html
   [771]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          [SKIP][772] ([i915#14544] / [i915#5439]) -> ([SKIP][773], [SKIP][774]) ([i915#5439])
   [772]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [773]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [774]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-glk:          [SKIP][775] -> ([SKIP][776], [PASS][777]) +8 other tests ( 1 pass, 1 skip )
   [775]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-glk5/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [776]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk9/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [777]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg1:          [SKIP][778] -> ([SKIP][779], [SKIP][780]) ([i915#4423])
   [778]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-14/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
   [779]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
   [780]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu:
    - shard-rkl:          [SKIP][781] ([i915#15989]) -> ([PASS][782], [SKIP][783]) ([i915#15989]) +4 other tests ( 1 pass, 1 skip )
   [781]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu.html
   [782]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu.html
   [783]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbchdr-tiling-4:
    - shard-rkl:          [SKIP][784] ([i915#5439]) -> ([SKIP][785], [SKIP][786]) ([i915#14544] / [i915#5439]) +1 other test ( 2 skip )
   [784]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html
   [785]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html
   [786]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-dg1:          [SKIP][787] ([i915#15102] / [i915#3458]) -> ([SKIP][788], [SKIP][789]) ([i915#15102] / [i915#3458] / [i915#4423])
   [787]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [788]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [789]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][790] ([i915#15102] / [i915#3458]) -> ([SKIP][791], [SKIP][792]) ([i915#10433] / [i915#15102] / [i915#3458]) +3 other tests ( 2 skip )
   [790]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [791]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [792]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-rkl:          [SKIP][793] ([i915#15102] / [i915#3023]) -> [SKIP][794] ([i915#14544] / [i915#15102] / [i915#3023]) +1 other test skip
   [793]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
   [794]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-dg1:          [SKIP][795] ([i915#15102]) -> ([SKIP][796], [SKIP][797]) ([i915#15102] / [i915#4423])
   [795]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-pwrite.html
   [796]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-pwrite.html
   [797]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-rkl:          [SKIP][798] ([i915#14544] / [i915#15102]) -> ([SKIP][799], [SKIP][800]) ([i915#15102]) +5 other tests ( 2 skip )
   [798]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [799]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [800]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg1:          [SKIP][801] ([i915#15989] / [i915#4423]) -> ([SKIP][802], [SKIP][803]) ([i915#15989])
   [801]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite.html
   [802]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite.html
   [803]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@hdr-rgb565-draw-mmap-cpu:
    - shard-dg2:          [SKIP][804] ([i915#15989]) -> ([SKIP][805], [PASS][806]) ([i915#15989]) +2 other tests ( 1 pass, 1 skip )
   [804]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-7/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-mmap-cpu.html
   [805]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-mmap-cpu.html
   [806]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][807] ([i915#15102]) -> ([SKIP][808], [SKIP][809]) ([i915#14544] / [i915#15102]) +15 other tests ( 2 skip )
   [807]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
   [808]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
   [809]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][810] ([i915#15102] / [i915#3023]) -> ([SKIP][811], [SKIP][812]) ([i915#14544] / [i915#15102] / [i915#3023]) +8 other tests ( 2 skip )
   [810]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [811]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [812]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][813] ([i915#10433] / [i915#15102] / [i915#3458]) -> ([SKIP][814], [SKIP][815]) ([i915#15102] / [i915#3458]) +2 other tests ( 2 skip )
   [813]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [814]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [815]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          [SKIP][816] ([i915#1825]) -> ([SKIP][817], [SKIP][818]) ([i915#14544] / [i915#1825]) +17 other tests ( 2 skip )
   [816]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
   [817]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
   [818]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][819] ([i915#14544] / [i915#1825]) -> ([SKIP][820], [SKIP][821]) ([i915#1825]) +11 other tests ( 2 skip )
   [819]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [820]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [821]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-rkl:          [SKIP][822] ([i915#14544] / [i915#15102] / [i915#3023]) -> ([SKIP][823], [SKIP][824]) ([i915#15102] / [i915#3023]) +5 other tests ( 2 skip )
   [822]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [823]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [824]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg1:          [SKIP][825] ([i915#15102] / [i915#4423]) -> ([SKIP][826], [SKIP][827]) ([i915#15102])
   [825]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-render.html
   [826]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-render.html
   [827]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          [SKIP][828] ([i915#15102]) -> [SKIP][829] ([i915#14544] / [i915#15102]) +1 other test skip
   [828]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt.html
   [829]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          [SKIP][830] ([i915#14544] / [i915#3555] / [i915#8228]) -> ([SKIP][831], [SKIP][832]) ([i915#16012] / [i915#3555] / [i915#8228])
   [830]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_hdr@invalid-hdr.html
   [831]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_hdr@invalid-hdr.html
   [832]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010:
    - shard-rkl:          [SKIP][833] ([i915#14544]) -> ([SKIP][834], [SKIP][835]) ([i915#16012]) +1 other test ( 2 skip )
   [833]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010.html
   [834]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010.html
   [835]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-rkl:          [SKIP][836] ([i915#13688] / [i915#14544]) -> ([SKIP][837], [SKIP][838]) ([i915#13688])
   [836]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html
   [837]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_joiner@basic-max-non-joiner.html
   [838]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          [SKIP][839] ([i915#15460]) -> ([SKIP][840], [SKIP][841]) ([i915#14544] / [i915#15460])
   [839]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_joiner@invalid-modeset-big-joiner.html
   [840]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_joiner@invalid-modeset-big-joiner.html
   [841]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier:
    - shard-rkl:          [SKIP][842] ([i915#14544] / [i915#15709]) -> ([SKIP][843], [SKIP][844]) ([i915#15709])
   [842]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html
   [843]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html
   [844]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping:
    - shard-rkl:          [SKIP][845] ([i915#15709]) -> ([SKIP][846], [SKIP][847]) ([i915#14544] / [i915#15709]) +2 other tests ( 2 skip )
   [845]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html
   [846]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html
   [847]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping:
    - shard-dg1:          [SKIP][848] ([i915#15709] / [i915#4423]) -> ([SKIP][849], [SKIP][850]) ([i915#15709])
   [848]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-18/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html
   [849]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-16/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html
   [850]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-14/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][851] ([i915#14259]) -> ([SKIP][852], [SKIP][853]) ([i915#14259] / [i915#14544])
   [851]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_plane_multiple@tiling-yf.html
   [852]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_plane_multiple@tiling-yf.html
   [853]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
    - shard-rkl:          [SKIP][854] ([i915#15329]) -> ([SKIP][855], [SKIP][856]) ([i915#14544] / [i915#15329]) +7 other tests ( 2 skip )
   [854]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
   [855]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
   [856]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          [SKIP][857] ([i915#14544] / [i915#5354]) -> ([SKIP][858], [SKIP][859]) ([i915#5354])
   [857]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html
   [858]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_pm_backlight@basic-brightness.html
   [859]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][860] ([i915#9340]) -> ([SKIP][861], [SKIP][862]) ([i915#3828] / [i915#9340])
   [860]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html
   [861]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html
   [862]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
    - shard-dg1:          [SKIP][863] ([i915#9340]) -> ([SKIP][864], [SKIP][865]) ([i915#3828] / [i915#9340])
   [863]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@kms_pm_lpsp@kms-lpsp.html
   [864]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-14/igt@kms_pm_lpsp@kms-lpsp.html
   [865]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][866] ([i915#15073]) -> ([SKIP][867], [PASS][868]) ([i915#15073])
   [866]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
   [867]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html
   [868]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [SKIP][869] ([i915#15073]) -> ([SKIP][870], [PASS][871]) ([i915#15073])
   [869]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [870]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [871]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
    - shard-dg1:          [SKIP][872] ([i915#15073]) -> ([SKIP][873], [PASS][874]) ([i915#15073])
   [872]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-18/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [873]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-16/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [874]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@system-suspend-idle:
    - shard-rkl:          [INCOMPLETE][875] ([i915#14419]) -> ([INCOMPLETE][876], [PASS][877]) ([i915#14419])
   [875]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_pm_rpm@system-suspend-idle.html
   [876]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_pm_rpm@system-suspend-idle.html
   [877]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_pm_rpm@system-suspend-idle.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          [SKIP][878] ([i915#14544] / [i915#6524]) -> ([SKIP][879], [SKIP][880]) ([i915#6524])
   [878]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html
   [879]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html
   [880]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
    - shard-rkl:          [SKIP][881] ([i915#11520] / [i915#14544]) -> ([SKIP][882], [SKIP][883]) ([i915#11520]) +1 other test ( 2 skip )
   [881]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
   [882]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
   [883]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][884] ([i915#11520]) -> ([SKIP][885], [SKIP][886]) ([i915#11520] / [i915#14544]) +3 other tests ( 2 skip )
   [884]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
   [885]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
   [886]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          [SKIP][887] ([i915#9683]) -> ([SKIP][888], [SKIP][889]) ([i915#14544] / [i915#9683])
   [887]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html
   [888]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html
   [889]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-pr-sprite-plane-onoff:
    - shard-rkl:          [SKIP][890] ([i915#1072] / [i915#9732]) -> ([SKIP][891], [SKIP][892]) ([i915#1072] / [i915#14544] / [i915#9732]) +10 other tests ( 2 skip )
   [890]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_psr@fbc-pr-sprite-plane-onoff.html
   [891]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_psr@fbc-pr-sprite-plane-onoff.html
   [892]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_psr@fbc-pr-sprite-plane-onoff.html

  * igt@kms_psr@pr-cursor-plane-move:
    - shard-dg1:          [SKIP][893] ([i915#1072] / [i915#9732]) -> ([SKIP][894], [SKIP][895]) ([i915#1072] / [i915#4423] / [i915#9732])
   [893]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-15/igt@kms_psr@pr-cursor-plane-move.html
   [894]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_psr@pr-cursor-plane-move.html
   [895]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_psr@pr-cursor-plane-move.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          [SKIP][896] ([i915#1072] / [i915#14544] / [i915#9732]) -> ([SKIP][897], [SKIP][898]) ([i915#1072] / [i915#9732]) +5 other tests ( 2 skip )
   [896]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html
   [897]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_psr@psr-sprite-plane-move.html
   [898]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          [SKIP][899] ([i915#15867]) -> ([SKIP][900], [SKIP][901]) ([i915#12755] / [i915#15867])
   [899]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-270.html
   [900]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_rotation_crc@primary-rotation-270.html
   [901]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          [SKIP][902] ([i915#5289]) -> ([SKIP][903], [SKIP][904]) ([i915#14544] / [i915#5289])
   [902]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [903]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [904]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_vrr@lobf:
    - shard-rkl:          [SKIP][905] ([i915#11920] / [i915#14544]) -> ([SKIP][906], [SKIP][907]) ([i915#11920])
   [905]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_vrr@lobf.html
   [906]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_vrr@lobf.html
   [907]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_vrr@lobf.html

  * igt@perf_pmu@busy-double-start:
    - shard-mtlp:         [FAIL][908] ([i915#4349]) -> ([FAIL][909], [PASS][910]) ([i915#4349]) +1 other test ( 1 fail, 1 pass )
   [908]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-3/igt@perf_pmu@busy-double-start.html
   [909]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-5/igt@perf_pmu@busy-double-start.html
   [910]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-1/igt@perf_pmu@busy-double-start.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          [SKIP][911] ([i915#14544] / [i915#3291] / [i915#3708]) -> ([SKIP][912], [SKIP][913]) ([i915#3291] / [i915#3708])
   [911]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@prime_vgem@basic-read.html
   [912]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@prime_vgem@basic-read.html
   [913]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@prime_vgem@basic-read.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-rkl:          [SKIP][914] ([i915#14544] / [i915#9917]) -> ([SKIP][915], [SKIP][916]) ([i915#9917])
   [914]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html
   [915]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each.html
   [916]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
  [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13363]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363
  [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
  [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
  [i915#13441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14694]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
  [i915#15433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15433
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
  [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
  [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
  [i915#15492]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15492
  [i915#15511]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15511
  [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
  [i915#15569]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15569
  [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
  [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
  [i915#15638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15662]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15662
  [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15722]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722
  [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
  [i915#15778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778
  [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
  [i915#15867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867
  [i915#15931]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931
  [i915#15948]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948
  [i915#15949]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15949
  [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
  [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
  [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
  [i915#15999]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15999
  [i915#16011]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011
  [i915#16012]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
  [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_18438 -> Patchwork_166105v1

  CI-20190529: 20190529
  CI_DRM_18438: 30f8a0629f6924f24369cac9161b1a9741880259 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8899: 3e5747e536f148bf232049e49a00e2b683f91a83 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_166105v1: 30f8a0629f6924f24369cac9161b1a9741880259 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/index.html

--===============5317212068844260603==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/ddi: Fix cleanup after DP connector init failure</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/166105/">https://patchwork.freedesktop.org/series/166105/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18438_full -&gt; Patchwork_166105v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_18438_full and Patchwork_166105v1_full:</p>
<h3>New IGT tests (155)</h3>
<ul>
<li>
<p>igt@gem_busy@busy@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 2.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_busy@extended@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_busy@parallel@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.06, 1.98] s</li>
</ul>
</li>
<li>
<p>igt@gem_cs_tlb@engines@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [2.15] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@independent@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.13, 0.19] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@clean@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.10, 2.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-create@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.69, 2.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-switch@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.65, 2.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv-switch@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.95, 2.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@nonpriv@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.87, 2.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-reset@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.61, 2.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.43, 2.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-cleanup@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.07, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile-preempt@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.09, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.95, 2.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-persistence@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.77] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-queued@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.17, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.01, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.83, 0.84] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-shared-gtt@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-single-timeline@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.02, 1.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-in-order@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.10, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-independent@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.06, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-out-order@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.08, 0.19] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-promotion@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.09, 0.19] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [5.42, 5.53] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_async@concurrent-writes@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_async@forked-writes@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.02, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@ccs0-smem:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.32, 1.42] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [4.01, 5.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@keep-in-fence@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.23, 0.24] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@parallel@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [2.15] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@engines@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [23.32, 26.25] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@basic@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.46, 1.51] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@contexts@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [4.05, 4.82] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@fds@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [3.24, 3.67] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@userptr@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.47, 1.50] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [11.33, 15.77] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@fairslice@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [2.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@fifo@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.09, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@implicit-boths@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.09, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@implicit-read-write@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.08, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@implicit-write-read@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.13, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@independent@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.30, 2.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@lateslice@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@manyslice@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [5.97, 6.68] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder-corked@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.10, 1.15] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder-priority@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.10, 1.14] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@out-order@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.09, 0.27] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-distinct-iova@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.06, 0.19] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-ringfull@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-shared-iova@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.06, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-userfault@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-contexts@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.07, 0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [2.21, 2.31] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-hang@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.23, 0.32] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-other-chain@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.08, 0.69] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-other@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.07, 0.36] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-self@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.01, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-user@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.02, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.02, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preemptive-hang@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [8.96, 9.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@promotion@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.10, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@smoketest@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [5.45, 5.53] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-golden-slice@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.04, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-late-slice@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.03, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@thriceslice@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.03, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@timeslicing@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [2.02, 2.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-independent@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.30, 2.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-lateslice@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-submit-early-slice@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-submit-golden-slice@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.04, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-submit-late-slice@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.03, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@wide@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [13.62, 15.15] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_store@cachelines@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.05, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_store@dword@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_store@pages@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.07, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@gem_ringfill@engines-basic@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [24.05, 30.34] s</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>Statuses : 12 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 35.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@engines@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [3.23, 3.33] s</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@resubmit-all@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@resubmit-new-all@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@resubmit-new@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@resubmit@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_wait@await@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.05, 1.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.54] s</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.04, 1.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_wait@write-busy@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.54, 0.55] s</li>
</ul>
</li>
<li>
<p>igt@gem_wait@write-wait@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.06] s</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@detector@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [10.02, 11.97] s</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.75, 2.04] s</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-hang@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.77, 2.05] s</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-error-state-capture@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [3.99, 5.05] s</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-error@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.75, 1.98] s</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-hang@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.74, 1.98] s</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-error-state-capture@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [9.97, 12.03] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api@gt1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset@gt1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.14] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt1:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [3.03, 5.94] s</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>Statuses : 2 incomplete(s) 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 14.11] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-2@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [3.06, 3.07] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [3.05, 3.06] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.55, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>Statuses : 1 fail(s) 3 pass(s)</li>
<li>Exec time: [3.56, 3.59] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-hang@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.23, 1.25] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-check-all@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.65, 0.66] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-no-semaphores@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.65, 1.98] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.66, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-no-semaphores@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.55, 2.05] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-start@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [2.55] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.56] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@enable-race@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [12.75, 12.78] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@idle-no-semaphores@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.51, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@idle@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.51, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@init-busy@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@init-sema@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@init-wait@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.66, 2.05] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@multi-client@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.05, 1.99] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@render-node-busy-idle@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.66, 0.67] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@render-node-busy@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.55, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-busy@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.63, 3.13] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-wait-idle@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.51] s</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-wait@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.51] s</li>
</ul>
</li>
<li>
<p>igt@prime_busy@after-wait@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@prime_busy@after@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@prime_busy@before@ccs0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@prime_busy@hang-wait@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [13.84, 13.90] s</li>
</ul>
</li>
<li>
<p>igt@prime_busy@hang@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [13.83, 13.88] s</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@busy@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-wait@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.04] s</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@wait@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_defaults@readonly@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@idempotent@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [5.18, 5.24] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [3.98, 4.33] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.10, 3.31] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@idempotent@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@invalid@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.31, 1.75] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@duration@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [13.14, 13.15] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@idempotent@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@invalid@ccs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@ccs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.21, 1.79] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_166105v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test ( 2 skip )</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@dmabuf@all-tests.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931">i915#15931</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@drm_buddy@drm_buddy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@drm_buddy@drm_buddy.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678">i915#15678</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-8/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561">i915#9561</a>) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_ctx_sseu@invalid-args.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_ctx_sseu@invalid-args.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_ctx_sseu@mmap-args.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@gem_ctx_sseu@mmap-args.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-4/igt@gem_eio@hibernate.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_eio@hibernate.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_eio@hibernate.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gem_eio@kms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363">i915#13363</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@gem_exec_fence@concurrent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_exec_reloc@basic-softpin.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_exec_reloc@basic-softpin.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests ( 2 skip )</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_exec_reloc@basic-softpin.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_exec_reloc@basic-softpin.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@gem_exec_schedule@reorder-wide.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@gem_exec_schedule@reorder-wide.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276">i915#7276</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-4/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_exec_suspend@basic-s0.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test ( 1 incomplete, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test ( 2 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk2/igt@gem_lmem_swapping@random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@gem_lmem_swapping@verify-random.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@gem_lmem_swapping@verify-random.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@gem_mmap_gtt@fault-concurrent-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_pread@bench.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_pread@bench.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@gem_render_copy@yf-tiled-ccs-to-linear.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@gen7_exec_parse@basic-allocation.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gen9_exec_parse@valid-registers.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-4/igt@gen9_exec_parse@valid-registers.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@i915_drm_fdinfo@busy@vecs1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@i915_drm_fdinfo@busy@vecs1.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@__uc_init:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-4/igt@i915_module_load@fault-injection@__uc_init.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@i915_module_load@fault-injection@__uc_init.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479">i915#15479</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@i915_module_load@fault-injection@intel_connector_register.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-4/igt@i915_module_load@fault-injection@intel_connector_register.html">ABORT</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>) +1 other test ( 2 abort )</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@i915_module_load@reload-no-display.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029">i915#13029</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545">i915#14545</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915#6412</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@i915_pm_freq_api@freq-reset.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@i915_pm_freq_api@freq-reset.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@i915_pm_rps@thresholds.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@i915_pm_rps@thresholds.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@i915_pm_sseu@full-enable.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@i915_pm_sseu@full-enable.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@i915_selftest@live@workarounds.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test ( 1 dmesg-fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915 (NEW):</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443">i915#7443</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@i915_suspend@debugfs-reader.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk2/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@intel_hwmon@hwmon-write.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@intel_hwmon@hwmon-write.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-17/igt@kms_async_flips@async-flip-suspend-resume.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-16/igt@kms_async_flips@async-flip-suspend-resume.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_async_flips@async-flip-suspend-resume.html">DMESG-WARN</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +2 other tests ( 1 dmesg-warn, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests ( 2 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +6 other tests skip</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733">i915#15733</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733">i915#15733</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +40 other tests ( 2 skip )</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +44 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +48 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> +60 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-14/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +299 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-2.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-2.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +64 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +97 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +111 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk8/igt@kms_cdclk@mode-transition.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk6/igt@kms_cdclk@mode-transition.html">SKIP</a>) +147 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783">i915#13783</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-aspect-ratio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_chamelium_frames@hdmi-aspect-ratio.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_chamelium_frames@hdmi-aspect-ratio.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-after-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_color@deep-color.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_color@deep-color.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_color@deep-color.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1-suspend-resume:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_content_protection@srm.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_content_protection@srm.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +2 other tests ( 2 skip )</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_content_protection@srm.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_content_protection@srm.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-10/igt@kms_content_protection@suspend-resume@pipe-a-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-128x42.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests ( 2 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-128x42.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_cursor_crc@cursor-random-128x42.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +5 other tests fail</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-256x85.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +2 other tests ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk2/igt@kms_cursor_crc@cursor-random-max-size.html">SKIP</a> +137 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> +103 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_display_modes@extended-mode-basic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_display_modes@extended-mode-basic.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_dsc@dsc-with-bpc.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878">i915#9878</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_feature_discovery@display-3x.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_feature_discovery@display-3x.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_feature_discovery@psr2.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_feature_discovery@psr2.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-on-nop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i915#13027</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk9/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk5/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk5/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk9/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html">INCOMPLETE</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests ( 2 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i915#13027</a>) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-15/igt@kms_flip@flip-vs-expired-vblank-interruptible.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_flip@flip-vs-expired-vblank-interruptible.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_flip@flip-vs-expired-vblank-interruptible.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i915#13027</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a4.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a4.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i915#13027</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk6/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk6/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_flip@plain-flip-ts-check.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826">i915#10826</a>) +1 other test fail</li>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-snb7/igt@kms_flip@plain-flip-ts-check.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-snb7/igt@kms_flip@plain-flip-ts-check.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-snb6/igt@kms_flip@plain-flip-ts-check.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600">i915#14600</a>) +1 other test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +10 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +26 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-suspend.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132">i915#15132</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-gtt.html">PASS</a>) +10 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +8 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-10/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-plflip-blt.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a>) +53 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-stridechange:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-stridechange.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-tiling-linear:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-tiling-linear.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbchdr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other tests ( 2 skip )</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +14 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a>) +83 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-y:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-y.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-y.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +13 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-render.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-render.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +9 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-glk8/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk6/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk4/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html">SKIP</a>) +17 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +39 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +14 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@psrhdr-farfromfence-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-4-xrgb16161616f:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-17/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-4-xrgb16161616f.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-4-xrgb16161616f.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-15/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-14/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-3-xrgb16161616f:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-1/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-3-xrgb16161616f.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-3-xrgb16161616f.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap@pipe-a-hdmi-a-2-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_hdr@static-swap@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_hdr@static-swap@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_hdr@static-toggle-dpms.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_hdr@static-toggle-dpms.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-3-xrgb16161616f:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-3-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-4-xrgb16161616f:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-4-xrgb16161616f.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-4-xrgb16161616f.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638">i915#15638</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722">i915#15722</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756">i915#12756</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-4tiled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712">i915#14712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-yftiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712">i915#14712</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712">i915#14712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html">SKIP</a> +175 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier@pipe-b-plane-5:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier@pipe-b-plane-5.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier@pipe-b-plane-5.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-7:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-7.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-7.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-ccs-modifier:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-b-plane-7:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-b-plane-7.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178">i915#12178</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862">i915#7862</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-5/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-8/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441">i915#13441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948">i915#15948</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-4/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-17/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-15/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-16/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_pm_rpm@fences-dpms.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_pm_rpm@fences-dpms.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +3 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-idle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-7/igt@kms_pm_rpm@system-suspend-idle.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_pm_rpm@system-suspend-idle.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-8/igt@kms_pm_rpm@system-suspend-idle.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419">i915#14419</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests ( 2 skip )</li>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk11/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808">i915#9808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf@pipe-b-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk2/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk9/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk5/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_psr2_su@page_flip-p010.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-plane-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_psr@fbc-pr-cursor-plane-onoff.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_psr@fbc-pr-cursor-plane-onoff.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@kms_psr@fbc-psr-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_psr@fbc-psr2-primary-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_psr@pr-dpms.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_psr@pr-dpms.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +16 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_psr@psr2-primary-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_psr@psr2-primary-mmap-gtt.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +15 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15949">i915#15949</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation-cropping-top:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk5/igt@kms_rotation_crc@multiplane-rotation-cropping-top.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk9/igt@kms_rotation_crc@multiplane-rotation-cropping-top.html">INCOMPLETE</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15492">i915#15492</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_selftest@drm_framebuffer.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_selftest@drm_framebuffer.html">ABORT</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test ( 2 abort )</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_selftest@drm_framebuffer.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-7/igt@kms_selftest@drm_framebuffer.html">ABORT</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test ( 2 abort )</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_setmode@invalid-clone-exclusive-crtc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_setmode@invalid-clone-exclusive-crtc.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk10/igt@kms_tiled_display@basic-test-pattern.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959">i915#10959</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@kms_vrr@flip-basic-fastset.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@kms_vrr@flip-basic-fastset.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_vrr@flip-dpms.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_vrr@flip-dpms.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_vrr@flipline.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_vrr@flipline.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0 (NEW):</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-3/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-1/igt@perf_pmu@busy-double-start@ccs0.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@perf_pmu@event-wait@rcs0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@perf_pmu@event-wait@rcs0.html">SKIP</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@perf_pmu@module-unload.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029">i915#13029</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778">i915#15778</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@perf_pmu@module-unload.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@perf_pmu@module-unload.html">ABORT</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029">i915#13029</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778">i915#15778</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-2/igt@perf_pmu@rc6-all-gts.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-6/igt@perf_pmu@rc6-all-gts.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@prime_vgem@fence-flip-hang.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@prime_vgem@fence-flip-hang.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@create-ext:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-2/igt@gem_eio@create-ext.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15511">i915#15511</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-6/igt@gem_eio@create-ext.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-3/igt@gem_exec_whisper@basic-contexts-priority-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15569">i915#15569</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_workarounds@suspend-resume.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_workarounds@suspend-resume.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560">i915#15560</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@i915_selftest@live.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@i915_selftest@live.html">PASS</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-4/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560">i915#15560</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-8/igt@i915_selftest@live.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-2/igt@i915_selftest@live.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15433">i915#15433</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@i915_selftest@live@gem_contexts.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@i915_selftest@live@gem_contexts.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-4/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-8/igt@i915_selftest@live@workarounds.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-2/igt@i915_selftest@live@workarounds.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-4/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@i915_suspend@fence-restore-untiled.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@i915_suspend@fence-restore-untiled.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-tglu-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15662">i915#15662</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-tglu-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-14/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-16/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html">PASS</a>) +3 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html">PASS</a>) +3 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-glk4/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk8/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-cur-indfb-onoff.html">PASS</a> +19 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_lease@simple-lease:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@kms_lease@simple-lease.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_lease@simple-lease.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_lease@simple-lease.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-8/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-10/igt@perf_pmu@rc6-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i915#15131</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@perf_pmu@rc6-suspend.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@perf_pmu@rc6-suspend.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_ccs@block-copy-compressed.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_exec_reloc@basic-concurrent0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_exec_reloc@basic-concurrent0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_exec_reloc@basic-concurrent0.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@gem_exec_reloc@basic-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_exec_reloc@basic-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_exec_reloc@basic-wc.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@gem_lmem_swapping@verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_lmem_swapping@verify.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_lmem_swapping@verify.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_media_vme.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_media_vme.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_pwrite@basic-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_pwrite@basic-random.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_pwrite@basic-random.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">i915#13717</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">i915#13717</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">i915#13717</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@gem_readwrite@write-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@gem_readwrite@write-bad-handle.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gem_userptr_blits@coherency-sync.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@gen9_exec_parse@shadow-peek.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-3/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_big_fb@linear-16bpp-rotate-270.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_big_fb@linear-16bpp-rotate-270.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a>) +24 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-glk1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694">i915#14694</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-2.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-2.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_chamelium_frames@hdmi-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-frame-dump.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_chamelium_frames@hdmi-frame-dump.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_content_protection@content-type-change.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_content_protection@content-type-change.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_content_protection@legacy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_content_protection@legacy.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-7/igt@kms_content_protection@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-10/igt@kms_content_protection@suspend-resume.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@kms_content_protection@suspend-resume.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-10/igt@kms_content_protection@uevent.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339">i915#1339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_content_protection@uevent.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_content_protection@uevent.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +33 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-13/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15999">i915#15999</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-14/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-16/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15999">i915#15999</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_feature_discovery@chamelium.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_feature_discovery@chamelium.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_feature_discovery@dp-mst.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_feature_discovery@psr2.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_feature_discovery@psr2.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_flip@flip-vs-suspend.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-glk5/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk9/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-wc.html">PASS</a>) +8 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-14/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +4 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-2/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-7/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-mmap-cpu.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +2 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +15 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +8 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +17 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +11 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-8/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_hdr@invalid-hdr.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_hdr@invalid-hdr.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460">i915#15460</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-18/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-16/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-14/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_plane_multiple@tiling-yf.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_pm_backlight@basic-brightness.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_pm_backlight@basic-brightness.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-19/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-14/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-18/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-16/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-idle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_pm_rpm@system-suspend-idle.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419">i915#14419</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_pm_rpm@system-suspend-idle.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-5/igt@kms_pm_rpm@system-suspend-idle.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419">i915#14419</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_prime@basic-crc-hybrid.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_psr@fbc-pr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_psr@fbc-pr-sprite-plane-onoff.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_psr@fbc-pr-sprite-plane-onoff.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-move:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg1-15/igt@kms_psr@pr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-13/igt@kms_psr@pr-cursor-plane-move.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg1-19/igt@kms_psr@pr-cursor-plane-move.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-4/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@kms_vrr@lobf.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@kms_vrr@lobf.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-mtlp-3/igt@perf_pmu@busy-double-start.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-5/igt@perf_pmu@busy-double-start.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-mtlp-1/igt@perf_pmu@busy-double-start.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-7/igt@prime_vgem@basic-read.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@prime_vgem@basic-read.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/shard-rkl-8/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18438 -&gt; Patchwork_166105v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18438: 30f8a0629f6924f24369cac9161b1a9741880259 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8899: 3e5747e536f148bf232049e49a00e2b683f91a83 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_166105v1: 30f8a0629f6924f24369cac9161b1a9741880259 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5317212068844260603==--
