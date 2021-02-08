Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E43313850
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 16:43:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9950E6E90D;
	Mon,  8 Feb 2021 15:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 483486E1B3;
 Mon,  8 Feb 2021 15:43:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 423E2A882E;
 Mon,  8 Feb 2021 15:43:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 08 Feb 2021 15:43:22 -0000
Message-ID: <161279900226.27712.14184206842626128132@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/31=5D_drm/i915/gt=3A_Ratelimit_h?=
 =?utf-8?q?eartbeat_completion_probing?=
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

Series: series starting with [01/31] drm/i915/gt: Ratelimit heartbeat completion probing
URL   : https://patchwork.freedesktop.org/series/86841/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
206aa3c9677c drm/i915/gt: Ratelimit heartbeat completion probing
2494ed145240 drm/i915: Move context revocation to scheduler
3dbe5f872455 drm/i915: Introduce the scheduling mode
5b350d2836cf drm/i915: Move timeslicing flag to scheduler
4ab52e53c2c0 drm/i915/gt: Declare when we enabled timeslicing
-:15: WARNING:BAD_SIGN_OFF: Duplicate signature
#15: 
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
483235989602 drm/i915: Move busywaiting control to the scheduler
7a092999c7b2 drm/i915: Move preempt-reset flag to the scheduler
b5a1080e1523 drm/i915: Fix the iterative dfs for defering requests
029c20aa2d56 drm/i915: Replace priolist rbtree with a skiplist
-:439: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#439: FILE: drivers/gpu/drm/i915/i915_priolist_types.h:98:
+#define for_each_priolist(p, root) \
+	for ((p) = (root)->sentinel.next[0]; \
+	     (p) != &(root)->sentinel; \
+	     (p) = (p)->next[0])

-:439: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'root' - possible side-effects?
#439: FILE: drivers/gpu/drm/i915/i915_priolist_types.h:98:
+#define for_each_priolist(p, root) \
+	for ((p) = (root)->sentinel.next[0]; \
+	     (p) != &(root)->sentinel; \
+	     (p) = (p)->next[0])

-:906: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'se' - possible side-effects?
#906: FILE: drivers/gpu/drm/i915/i915_scheduler.h:167:
+#define i915_sched_dequeue(se, pl, rq, rn) \
+	for ((pl) = (se)->queue.sentinel.next[0]; \
+	     (pl) != &(se)->queue.sentinel; \
+	     (pl) = __i915_sched_dequeue_next(se)) \
+		priolist_for_each_request_safe(rq, rn, pl)

-:906: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pl' - possible side-effects?
#906: FILE: drivers/gpu/drm/i915/i915_scheduler.h:167:
+#define i915_sched_dequeue(se, pl, rq, rn) \
+	for ((pl) = (se)->queue.sentinel.next[0]; \
+	     (pl) != &(se)->queue.sentinel; \
+	     (pl) = __i915_sched_dequeue_next(se)) \
+		priolist_for_each_request_safe(rq, rn, pl)

-:952: WARNING:LINE_SPACING: Missing a blank line after declarations
#952: FILE: drivers/gpu/drm/i915/selftests/i915_scheduler.c:19:
+	struct i915_priolist *pl = &root.sentinel;
+	IGT_TIMEOUT(end_time);

total: 0 errors, 1 warnings, 4 checks, 904 lines checked
dbfb352bf7b0 drm/i915: Fair low-latency scheduling
9a611ddd1f7a drm/i915/gt: Specify a deadline for the heartbeat
022c4065c1a9 drm/i915: Extend the priority boosting for the display with a deadline
d8b43dca33f0 drm/i915/gt: Support virtual engine queues
27f940af2d22 drm/i915: Move saturated workload detection back to the context
-:29: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:29: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 78 lines checked
4109a26f879f drm/i915: Bump default timeslicing quantum to 5ms
2091c45fb062 drm/i915/gt: Delay taking irqoff for execlists submission
8b8ee05f1953 drm/i915/gt: Convert the legacy ring submission to use the scheduling interface
b8c672225e3d drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
186491248d9b drm/i915/gt: Track timeline GGTT offset separately from subpage offset
cbdded299ad1 drm/i915/gt: Add timeline "mode"
75d076c67057 drm/i915/gt: Use indices for writing into relative timelines
b755887ce2eb drm/i915/selftests: Exercise relative timeline modes
3510121480a9 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
1f38aec71c0a Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
681705c8f00d drm/i915/gt: Support creation of 'internal' rings
a1edb8d6fe76 drm/i915/gt: Use client timeline address for seqno writes
d11da5d6110b drm/i915/gt: Infrastructure for ring scheduling
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 844 lines checked
282aad02df82 drm/i915/gt: Implement ring scheduler for gen4-7
-:70: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#70: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:221:
+				*cs++ = i915_mmio_reg_offset(

-:72: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#72: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:223:
+				*cs++ = _MASKED_BIT_ENABLE(

-:107: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#107: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:258:
+				*cs++ = _MASKED_BIT_DISABLE(

total: 0 errors, 0 warnings, 3 checks, 585 lines checked
ce6065610e18 drm/i915/gt: Enable ring scheduling for gen5-7
-:32: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#32: 
References: 0f46832fab77 ("drm/i915: Mask USER interrupts on gen6 (until required)")

-:32: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 0f46832fab77 ("drm/i915: Mask USER interrupts on gen6 (until required)")'
#32: 
References: 0f46832fab77 ("drm/i915: Mask USER interrupts on gen6 (until required)")

total: 1 errors, 1 warnings, 0 checks, 45 lines checked
8412a0fc0ad0 drm/i915: Support secure dispatch on gen6/gen7
c652a65f34ac drm/i915/gt: Limit C-states while waiting for requests


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
