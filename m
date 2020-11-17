Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D97F2B6DE5
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 19:54:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B915989F9F;
	Tue, 17 Nov 2020 18:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C6F8189F33;
 Tue, 17 Nov 2020 18:54:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE265A0003;
 Tue, 17 Nov 2020 18:54:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Nov 2020 18:54:56 -0000
Message-ID: <160563929675.25709.12340460356339129600@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201117113103.21480-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201117113103.21480-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/28=5D_drm/i915/selftests=3A_Impr?=
 =?utf-8?q?ove_granularity_for_mocs_reset_checks?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/28] drm/i915/selftests: Improve granularity for mocs reset checks
URL   : https://patchwork.freedesktop.org/series/83951/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ae32abe5ed3c drm/i915/selftests: Improve granularity for mocs reset checks
d305f0a2eb8d drm/i915/selftests: Small tweak to put the termination conditions together
b441a9d6dec3 drm/i915/gem: Drop free_work for GEM contexts
3d97fa02b2bd drm/i915/gt: Ignore dt==0 for reporting underflows
f6559ba4c7c5 drm/i915/gt: Track the overall busy time
40da0fecec81 drm/i915/gt: Include semaphore status in print_request()
8e85dabc534e drm/i915: Lift i915_request_show()
38470cc9596c drm/i915/gt: Show all active timelines for debugging
471c4d05edc2 drm/i915: Lift waiter/signaler iterators
45a01d0bdc89 drm/i915: Show timeline dependencies for debug
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
Timeline 886: { count 1, ready: 0, inflight: 0, seqno: { current: 664, last: 666 }, engine: rcs0 }

total: 0 errors, 1 warnings, 0 checks, 68 lines checked
5ed9a448fb02 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
49b7cb3fb2de drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
b9ab5ba2ea2d drm/i915/gt: Don't cancel the interrupt shadow too early
edd68892ac79 drm/i915/gt: Free stale request on destroying the virtual engine
25ee818fe9c7 drm/i915/gt: Protect context lifetime with RCU
7ef7a16bb08c drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
<4>[  416.208555] list_add corruption. prev->next should be next (ffff8881951d5910), but was dead000000000100. (prev=ffff8882781bb870).

total: 0 errors, 1 warnings, 0 checks, 354 lines checked
a9d88246410b drm/i915/gt: Move the breadcrumb to the signaler if completed upon cancel
299dfa2c30b7 drm/i915/gt: Decouple completed requests on unwind
80ee04c69c11 drm/i915/gt: Check for a completed last request once
c43eabedf48d drm/i915/gt: Replace direct submit with direct call to tasklet
414c9d2c58db drm/i915/gt: ce->inflight updates are now serialised
14776ee687ac drm/i915/gt: Use virtual_engine during execlists_dequeue
3af258c2b1e2 drm/i915/gt: Decouple inflight virtual engines
56b37beddaa4 drm/i915/gt: Defer schedule_out until after the next dequeue
3ed0a652501e drm/i915/gt: Remove virtual breadcrumb before transfer
063c2759bd5c drm/i915/gt: Shrink the critical section for irq signaling
5440ca67d640 drm/i915/gt: Resubmit the virtual engine on schedule-out
239e47e2f688 drm/i915/gt: Simplify virtual engine handling for execlists_hold()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
