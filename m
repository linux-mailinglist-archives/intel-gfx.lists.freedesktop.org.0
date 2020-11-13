Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4112B191D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 11:34:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0089A6E49D;
	Fri, 13 Nov 2020 10:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B2BB46E49A;
 Fri, 13 Nov 2020 10:33:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB6BAA8169;
 Fri, 13 Nov 2020 10:33:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 13 Nov 2020 10:33:59 -0000
Message-ID: <160526363969.20637.11512710385524313136@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201113094128.8740-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201113094128.8740-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/33=5D_drm/i915/gt=3A_Include_sem?=
 =?utf-8?q?aphore_status_in_print=5Frequest=28=29?=
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

Series: series starting with [01/33] drm/i915/gt: Include semaphore status in print_request()
URL   : https://patchwork.freedesktop.org/series/83798/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
36ccd48abff7 drm/i915/gt: Include semaphore status in print_request()
e37578d3a4d2 drm/i915: Lift i915_request_show()
757c2d9e5864 drm/i915/gt: Show all active timelines for debugging
4b16df5d9acf drm/i915: Lift waiter/signaler iterators
8ec25a51fc38 drm/i915: Show timeline dependencies for debug
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
Timeline 886: { count 1, ready: 0, inflight: 0, seqno: { current: 664, last: 666 }, engine: rcs0 }

total: 0 errors, 1 warnings, 0 checks, 68 lines checked
0d825e6f9170 drm/i915/selftests: Improve granularity for mocs reset checks
91619d9bcdfd drm/i915/gem: Drop free_work for GEM contexts
8ec97fb01c0c drm/i915/gt: Ignore dt==0 for reporting underflows
1a8ae22b6012 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
e1a92ad74f9a drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
c6edee80f08f drm/i915/gt: Don't cancel the interrupt shadow too early
a0ba8eeec730 drm/i915/gt: Free stale request on destroying the virtual engine
e3bf2ef1f3db drm/i915/gt: Protect context lifetime with RCU
81a0b4e55358 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
<4>[  416.208555] list_add corruption. prev->next should be next (ffff8881951d5910), but was dead000000000100. (prev=ffff8882781bb870).

total: 0 errors, 1 warnings, 0 checks, 354 lines checked
f59ade260b81 drm/i915/gt: Move the breadcrumb to the signaler if completed upon cancel
01d5bd73869d drm/i915/gt: Decouple completed requests on unwind
265871d2f47e drm/i915/gt: Check for a completed last request once
5797a9ebf834 drm/i915/gt: Replace direct submit with direct call to tasklet
96dd257c8712 drm/i915/gt: ce->inflight updates are now serialised
96127a9ff6b2 drm/i915/gt: Use virtual_engine during execlists_dequeue
10332a1cbb40 drm/i915/gt: Decouple inflight virtual engines
bc3bbc7de921 drm/i915/gt: Defer schedule_out until after the next dequeue
8a00348b40f9 drm/i915/gt: Remove virtual breadcrumb before transfer
4e831009ea6c drm/i915/gt: Shrink the critical section for irq signaling
5114ec487460 drm/i915/gt: Resubmit the virtual engine on schedule-out
74b27da24c42 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
33cd30c83bdf drm/i915: Encode fence specific waitqueue behaviour into the wait.flags
ff708538d1d5 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
04a3982f218a drm/i915/gt: Track timeline GGTT offset separately from subpage offset
b6a7563d1d5b drm/i915/gt: Add timeline "mode"
5d40c8bbf6ed drm/i915/gt: Use indices for writing into relative timelines
55decb66868a drm/i915/selftests: Exercise relative timeline modes
c01688ef71a8 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
