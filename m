Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2EE1EE37C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 13:36:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DE796E340;
	Thu,  4 Jun 2020 11:36:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 18F346E33F;
 Thu,  4 Jun 2020 11:36:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11EFAA363D;
 Thu,  4 Jun 2020 11:36:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Jun 2020 11:36:28 -0000
Message-ID: <159127058804.14555.941712483607278305@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604103751.18816-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200604103751.18816-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/22=5D_drm/i915/gem=3A_Mark_the_b?=
 =?utf-8?q?uffer_pool_as_active_for_the_cmdparser?=
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

Series: series starting with [01/22] drm/i915/gem: Mark the buffer pool as active for the cmdparser
URL   : https://patchwork.freedesktop.org/series/77996/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
47e5bfbf30e3 drm/i915/gem: Mark the buffer pool as active for the cmdparser
7ec3c01e7a42 drm/i915: Trim set_timer_ms() intervals
00d105eacda7 drm/i915/gt: Set timeslicing priority from queue
7e77d0a206b9 drm/i915/gt: Always check to enable timeslicing if not submitting
b26c3cc35bd3 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
fb7bb70a7283 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
cba96e7cdecf drm/i915/gt: Support creation of 'internal' rings
ce8cae5ec931 drm/i915/gt: Use client timeline address for seqno writes
710e6262e4f4 drm/i915/gt: Infrastructure for ring scheduling
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 842 lines checked
f5112dc2ae3b drm/i915/gt: Enable busy-stats for ring-scheduler
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
d8fa9292586c drm/i915/gt: Track if an engine requires forcewake w/a
2cdc09a8fc16 drm/i915/gt: Implement ring scheduler for gen6/7
-:68: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#68: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:324:
+				*cs++ = i915_mmio_reg_offset(

-:70: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#70: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:326:
+				*cs++ = _MASKED_BIT_ENABLE(

-:105: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#105: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:361:
+				*cs++ = _MASKED_BIT_DISABLE(

total: 0 errors, 0 warnings, 3 checks, 506 lines checked
2ff1bb716df2 drm/i915/gt: Enable ring scheduling for gen6/7
cfed75109fb2 drm/i915/gem: Async GPU relocations only
dd90a9050b61 drm/i915: Add list_for_each_entry_safe_continue_reverse
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
a5768b96efc5 drm/i915/gem: Separate reloc validation into an earlier step
-:101: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#101: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1408:
+				return (int)offset;
+			} else {

total: 0 errors, 1 warnings, 0 checks, 217 lines checked
37ab424926eb drm/i915/gem: Lift GPU relocation allocation
38ad7f8804a1 drm/i915/gem: Build the reloc request first
7cb671e36bbd drm/i915/gem: Add all GPU reloc awaits/signals en masse
1f32dc179ff3 dma-buf: Proxy fence, an unsignaled fence placeholder
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:438: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#438: FILE: drivers/dma-buf/st-dma-fence-proxy.c:20:
+	spinlock_t lock;

total: 0 errors, 1 warnings, 1 checks, 1158 lines checked
e665d3e71c75 drm/i915: Unpeel awaits on a proxy fence
f155632b03ef drm/i915/gem: Make relocations atomic within execbuf

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
