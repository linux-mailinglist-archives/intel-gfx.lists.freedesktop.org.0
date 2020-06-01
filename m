Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C071EA009
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 10:30:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9262089E1B;
	Mon,  1 Jun 2020 08:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1292A89E1A;
 Mon,  1 Jun 2020 08:30:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 030F1A00E7;
 Mon,  1 Jun 2020 08:30:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 01 Jun 2020 08:30:04 -0000
Message-ID: <159100020498.14889.16427392041989155909@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200601072446.19548-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/36=5D_drm/i915=3A_Handle_very_ea?=
 =?utf-8?q?rly_engine_initialisation_failure_=28rev2=29?=
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

Series: series starting with [01/36] drm/i915: Handle very early engine initialisation failure (rev2)
URL   : https://patchwork.freedesktop.org/series/77857/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b0896ff73ea4 drm/i915: Handle very early engine initialisation failure
28f59054aa9e drm/i915/gt: Split low level gen2-7 CS emitters
-:9: WARNING:TYPO_SPELLING: 'wnat' may be misspelled - perhaps 'want'?
#9: 
with requests, and we will wnat to reuse them outside of this context.

-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

-:179: WARNING:LONG_LINE: line over 100 characters
#179: FILE: drivers/gpu/drm/i915/gt/gen2_engine_cs.c:148:
+	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);

-:202: WARNING:LONG_LINE: line over 100 characters
#202: FILE: drivers/gpu/drm/i915/gt/gen2_engine_cs.c:171:
+	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);

-:220: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#220: FILE: drivers/gpu/drm/i915/gt/gen2_engine_cs.c:189:
+}
+#undef GEN5_WA_STORES

-:798: WARNING:LONG_LINE: line over 100 characters
#798: FILE: drivers/gpu/drm/i915/gt/gen6_engine_cs.c:377:
+	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);

-:818: WARNING:LONG_LINE: line over 100 characters
#818: FILE: drivers/gpu/drm/i915/gt/gen6_engine_cs.c:397:
+	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);

-:843: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#843: FILE: drivers/gpu/drm/i915/gt/gen6_engine_cs.c:422:
+}
+#undef GEN7_XCS_WA

total: 0 errors, 6 warnings, 2 checks, 1812 lines checked
84fb5312e69a drm/i915/gt: Move legacy context wa to intel_workarounds
51c5e9106b00 drm/i915: Trim the ironlake+ irq handler
db08f3a83b7d Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
ee444a1c9757 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
a186650cc2c0 drm/i915/gt: Support creation of 'internal' rings
ad2ec515e737 drm/i915/gt: Use client timeline address for seqno writes
75a19e638ad6 drm/i915: Support inter-engine semaphores on gen6/7
9c8572c7a931 drm/i915/gt: Infrastructure for ring scheduling
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 842 lines checked
5354a72cf88c drm/i915/gt: Enable busy-stats for ring-scheduler
-:13: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#13: 
new file mode 100644

-:200: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#200: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:47:
+		udelay(100);

-:230: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#230: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:77:
+		udelay(100);

total: 0 errors, 1 warnings, 2 checks, 236 lines checked
ad2a6b63bf64 drm/i915/gt: Track if an engine requires forcewake w/a
e43d3f056a59 drm/i915: Relinquish forcewake immediately after manual grouping
e4172f511dc0 drm/i915/gt: Implement ring scheduler for gen6/7
-:68: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#68: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:324:
+				*cs++ = i915_mmio_reg_offset(

-:70: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#70: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:326:
+				*cs++ = _MASKED_BIT_ENABLE(

-:105: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#105: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:361:
+				*cs++ = _MASKED_BIT_DISABLE(

total: 0 errors, 0 warnings, 3 checks, 512 lines checked
8f4228e0458d drm/i915/gt: Enable ring scheduling for gen6/7
4223614bdbed drm/i915/gem: Mark the buffer pool as active for the cmdparser
043a8c092764 drm/i915/gem: Async GPU relocations only
d6bb9bf39a67 drm/i915: Add list_for_each_entry_safe_continue_reverse
-:20: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#20: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:20: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#20: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:20: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#20: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

total: 0 errors, 0 warnings, 3 checks, 12 lines checked
bf626d095a0a drm/i915/gem: Separate reloc validation into an earlier step
-:101: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#101: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1408:
+				return (int)offset;
+			} else {

total: 0 errors, 1 warnings, 0 checks, 217 lines checked
a5a8005dc0d5 drm/i915/gem: Lift GPU relocation allocation
cf3caf6ea48e drm/i915/gem: Build the reloc request first
b5ed91ed9028 drm/i915/gem: Add all GPU reloc awaits/signals en masse
3d075ea5bad9 dma-buf: Proxy fence, an unsignaled fence placeholder
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:438: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#438: FILE: drivers/dma-buf/st-dma-fence-proxy.c:20:
+	spinlock_t lock;

total: 0 errors, 1 warnings, 1 checks, 1158 lines checked
ce15d9f7f287 drm/i915: Unpeel awaits on a proxy fence
7f48f9f9cabb drm/i915/gem: Make relocations atomic within execbuf
59c00fdc9150 drm/syncobj: Allow use of dma-fence-proxy
9f06244959ca drm/i915/gem: Teach execbuf how to wait on future syncobj
fe5ce9a4c96f drm/i915/gem: Allow combining submit-fences with syncobj
0f995d2bfbe2 drm/i915/gt: Declare when we enabled timeslicing
796d8967ce3e drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
30672d041d30 drm/i915: Always defer fenced work to the worker
f86a694d1a36 drm/i915/gem: Assign context id for async work
e8d99d37c64d drm/i915: Export a preallocate variant of i915_active_acquire()
8ed22b7514d8 drm/i915/gem: Separate the ww_mutex walker into its own list
55b772ca8526 drm/i915/gem: Asynchronous GTT unbinding
d2ba95a40d8a drm/i915/gem: Bind the fence async for execbuf

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
