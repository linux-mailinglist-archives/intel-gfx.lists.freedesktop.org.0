Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9E425306F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 15:53:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2FC26E957;
	Wed, 26 Aug 2020 13:53:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 53D686E384;
 Wed, 26 Aug 2020 13:53:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E3F0A3ECB;
 Wed, 26 Aug 2020 13:53:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 26 Aug 2020 13:53:08 -0000
Message-ID: <159844998828.21252.9219833259062211434@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200826132811.17577-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/39=5D_drm/i915/gem=3A_Avoid_impl?=
 =?utf-8?q?icit_vmap_for_highmem_on_x86-32?=
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

Series: series starting with [01/39] drm/i915/gem: Avoid implicit vmap for highmem on x86-32
URL   : https://patchwork.freedesktop.org/series/81064/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4d11ca4aabc3 drm/i915/gem: Avoid implicit vmap for highmem on x86-32
-:18: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#18: 
References: e87666b52f00 ("drm/i915/shrinker: Hook up vmap allocation failure notifier")

-:18: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e87666b52f00 ("drm/i915/shrinker: Hook up vmap allocation failure notifier")'
#18: 
References: e87666b52f00 ("drm/i915/shrinker: Hook up vmap allocation failure notifier")

total: 1 errors, 1 warnings, 0 checks, 32 lines checked
2da2b39afc76 drm/i915/gem: Use set_pte_at() for assigning the vmapped PTE
30590df29a8d drm/i915/gem: Prevent using pgprot_writecombine() if PAT is not supported
0dfcb8899225 drm/i915/gt: Clear the buffer pool age before use
57381cfc1d88 drm/i915/gt: Widen CSB pointer to u64 for the parsers
536206d193db drm/i915/gt: Wait for CSB entries on Tigerlake
-:24: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")'
#24: 
References: d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")

-:50: ERROR:ASSIGN_IN_IF: do not use assignment in if condition
#50: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:2509:
+		if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))

total: 2 errors, 0 warnings, 0 checks, 33 lines checked
82f82623922e drm/i915/gt: Apply the CSB w/a for all
-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")'
#12: 
References: d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")

-:93: ERROR:ASSIGN_IN_IF: do not use assignment in if condition
#93: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:2548:
+		if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))

total: 2 errors, 0 warnings, 0 checks, 115 lines checked
19df6f774f8f drm/i915/gt: Show engine properties in the pretty printer
-:48: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#48: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1618:
+}
+		P(heartbeat_interval_ms),

total: 0 errors, 0 warnings, 1 checks, 48 lines checked
a37d770b0cfe drm/i915/gem: Hold request reference for canceling an active context
-:16: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#16: 
<4> [582.745252] general protection fault, probably for non-canonical address 0xcccccccccccccd5c: 0000 [#1] PREEMPT SMP PTI

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
75b9fbba0fbb drm/i915: Cancel outstanding work after disabling heartbeats on an engine
c44aed4680a7 drm/i915/gt: Always send a pulse down the engine after disabling heartbeat
0afa1a535c74 drm/i915/gem: Always test execution status on closing the context
1bbff171d997 drm/i915/gt: Signal cancelled requests
0da106fcbd2a drm/i915/selftests: Finish pending mock requests on cancellation.
1d3e743a294e drm/i915/gt: Retire cancelled requests on unload
b549527fccdb drm/i915/gt: Remove defunct intel_virtual_engine_get_sibling()
13c4f6affac1 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
a91f4c9f1716 drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
5cf5de2a0510 drm/i915/gt: Don't cancel the interrupt shadow too early
95b18580a943 drm/i915/gt: Free stale request on destroying the virtual engine
4677dfe83ecf drm/i915/gt: Protect context lifetime with RCU
1b5b69bce739 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
<4>[  416.208555] list_add corruption. prev->next should be next (ffff8881951d5910), but was dead000000000100. (prev=ffff8882781bb870).

total: 0 errors, 1 warnings, 0 checks, 354 lines checked
2402fe2e390e drm/i915/gt: Move the breadcrumb to the signaler if completed upon cancel
b622fb3a7ea1 drm/i915/gt: Decouple completed requests on unwind
d2a5b17f11f8 drm/i915/gt: Check for a completed last request once
d8c09ebb8832 drm/i915/gt: Replace direct submit with direct call to tasklet
27e3ad18e225 drm/i915/gt: ce->inflight updates are now serialised
1c34cf8eff85 drm/i915/gt: Use virtual_engine during execlists_dequeue
8c9c5e79fefc drm/i915/gt: Decouple inflight virtual engines
29827c6800f0 drm/i915/gt: Defer schedule_out until after the next dequeue
a9e4e457612d drm/i915/gt: Remove virtual breadcrumb before transfer
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
<4> [412.623150] list_add corruption. prev->next should be next (ffff888284a98470), but was dead000000000100. (prev=ffff8882586fb870).

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
78a4eb721642 drm/i915/gt: Shrink the critical section for irq signaling
fd06edcbfd09 drm/i915/gt: Resubmit the virtual engine on schedule-out
248b37a17e0a drm/i915/gt: Simplify virtual engine handling for execlists_hold()
c21667ad9925 drm/i915: Encode fence specific waitqueue behaviour into the wait.flags
b351630e2023 drm/i915/selftests: Confirm RING_TIMESTAMP / CTX_TIMESTAMP share a clock
-:88: WARNING:MEMORY_BARRIER: memory barrier without comment
#88: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:68:
+	wmb();

-:136: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#136: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:116:
+	udelay(100);

total: 0 errors, 1 warnings, 1 checks, 221 lines checked
a27ed62350ef drm/i915/gt: Consolidate the CS timestamp clocks
cd003a3c264f drm/i915: Break up error capture compression loops with cond_resched()
66fe3636cbdd drm/i915: Reduce GPU error capture mutex hold time
-:36: WARNING:MEMORY_BARRIER: memory barrier without comment
#36: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1040:
+			mb();

total: 0 errors, 1 warnings, 0 checks, 58 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
