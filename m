Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D181235975
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 19:14:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13106E150;
	Sun,  2 Aug 2020 17:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4CD1C6E0D8;
 Sun,  2 Aug 2020 17:14:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46919A47DB;
 Sun,  2 Aug 2020 17:14:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 02 Aug 2020 17:14:07 -0000
Message-ID: <159638844726.1949.280440294034359384@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200802164412.2738-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200802164412.2738-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/42=5D_drm/i915=3A_Fix_wrong_retu?=
 =?utf-8?q?rn_value?=
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

Series: series starting with [01/42] drm/i915: Fix wrong return value
URL   : https://patchwork.freedesktop.org/series/80179/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
641fe3760e7f drm/i915/gem: Don't drop the timeline lock during execbuf
1eace725c392 drm/i915/gem: Reduce context termination list iteration guard to RCU
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
References: d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits") # rcu protection of timeline->requests

-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits")'
#20: 
References: d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits") # rcu protection of timeline->requests

total: 1 errors, 1 warnings, 0 checks, 65 lines checked
f418a1a9323c drm/i915/gt: Protect context lifetime with RCU
ed19011a3244 drm/i915/gt: Free stale request on destroying the virtual engine
b7deae3dd990 drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
9dfbca235567 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:299: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#299: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:54:
+	spinlock_t signal_lock;

total: 0 errors, 0 warnings, 1 checks, 260 lines checked
d64649d5b06d drm/i915: Drop i915_request.lock serialisation around await_start
5b3023be5688 drm/i915: Drop i915_request.lock requirement for intel_rps_boost()
4cc1911d1e27 drm/i915/gem: Reduce ctx->engine_mutex for reading the clone source
a5c7155455bf drm/i915/gem: Reduce ctx->engines_mutex for get_engines()
84b6ff2b8884 drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()
0fcdf7a5cdb8 drm/i915/gt: Decouple completed requests on unwind
fa84ed47c393 drm/i915/gt: Check for a completed last request once
61ede9a148ba drm/i915/gt: Refactor heartbeat request construction and submission
570c67a58ab7 drm/i915/gt: Replace direct submit with direct call to tasklet
769442507dcd drm/i915/gt: Use virtual_engine during execlists_dequeue
122fabf291d6 drm/i915/gt: Decouple inflight virtual engines
515575064cb7 drm/i915/gt: Defer schedule_out until after the next dequeue
4adeb0f9dbfe drm/i915/gt: Resubmit the virtual engine on schedule-out
4f73843fd816 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
3d5f28c98ebe drm/i915/gt: ce->inflight updates are now serialised
6cb4a83d25f2 drm/i915/gt: Drop atomic for engine->fw_active tracking
a28b1bd35d4e drm/i915/gt: Extract busy-stats for ring-scheduler
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
323ff915d375 drm/i915/gt: Convert stats.active to plain unsigned int
9bdc1f8119ab drm/i915: Lift waiter/signaler iterators
b1e01ae8f345 drm/i915: Strip out internal priorities
fc2d75819d99 drm/i915: Remove I915_USER_PRIORITY_SHIFT
51c3bc9b7f8f drm/i915/gt: Defer the kmem_cache_free() until after the HW submit
8b5974e86d02 drm/i915: Prune empty priolists
508fbfb2fa86 drm/i915: Replace engine->schedule() with a known request operation
acef80fd74c7 drm/i915/gt: Do not suspend bonded requests if one hangs
c472b142c7b9 drm/i915: Teach the i915_dependency to use a double-lock
cdad85c1538f drm/i915: Restructure priority inheritance
fba4ba812a76 drm/i915/selftests: Measure set-priority duration
-:52: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#52: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 553 lines checked
521577d83d5b drm/i915: Improve DFS for priority inheritance
d61ada4e881a drm/i915/gt: Remove timeslice suppression
713774df6186 drm/i915: Fair low-latency scheduling
341457ff92bf drm/i915/gt: Specify a deadline for the heartbeat
a32ab75c19ba drm/i915: Replace the priority boosting for the display with a deadline
a445af000bcb drm/i915: Move saturated workload detection back to the context
-:29: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:29: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 69 lines checked
87199b330ee5 drm/i915/gt: Another tweak for flushing the tasklets


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
