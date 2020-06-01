Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A60E71E9F55
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 09:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94E656E1B5;
	Mon,  1 Jun 2020 07:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 476716E1B2;
 Mon,  1 Jun 2020 07:34:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 41CE3A47EB;
 Mon,  1 Jun 2020 07:34:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 01 Jun 2020 07:34:55 -0000
Message-ID: <159099689524.14890.11404278274057905125@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200601072446.19548-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/36=5D_drm/i915=3A_Handle_very_ea?=
 =?utf-8?q?rly_engine_initialisation_failure?=
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

Series: series starting with [01/36] drm/i915: Handle very early engine initialisation failure
URL   : https://patchwork.freedesktop.org/series/77857/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
96d738818236 drm/i915: Handle very early engine initialisation failure
284e5e82f9e8 drm/i915/gt: Split low level gen2-7 CS emitters
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
8f9e2ddc2328 drm/i915/gt: Move legacy context wa to intel_workarounds
5b9d253c3510 drm/i915: Trim the ironlake+ irq handler
cf0807656a76 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
ce9a7aebf8d2 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
eacfbfb97087 drm/i915/gt: Support creation of 'internal' rings
58305c0b593a drm/i915/gt: Use client timeline address for seqno writes
703dea6710a7 drm/i915: Support inter-engine semaphores on gen6/7
15787ec4da9d drm/i915/gt: Infrastructure for ring scheduling
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 842 lines checked
0760ab97f627 drm/i915/gt: Enable busy-stats for ring-scheduler
-:13: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#13: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 232 lines checked
118524c684c6 drm/i915/gt: Track if an engine requires forcewake w/a
99a81a3f55b0 drm/i915: Relinquish forcewake immediately after manual grouping
8c829f7c5554 drm/i915/gt: Implement ring scheduler for gen6/7
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
3148cd01132a drm/i915/gt: Enable ring scheduling for gen6/7
143d1995d466 drm/i915/gem: Mark the buffer pool as active for the cmdparser
033b56b47071 drm/i915/gem: Async GPU relocations only
9b9d4aa5ab50 drm/i915: Add list_for_each_entry_safe_continue_reverse
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
b2abfeed9589 drm/i915/gem: Separate reloc validation into an earlier step
-:101: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#101: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1408:
+				return (int)offset;
+			} else {

total: 0 errors, 1 warnings, 0 checks, 217 lines checked
c26758f43cfe drm/i915/gem: Lift GPU relocation allocation
6f01210067aa drm/i915/gem: Build the reloc request first
710af09a4672 drm/i915/gem: Add all GPU reloc awaits/signals en masse
6b9cc101590e dma-buf: Proxy fence, an unsignaled fence placeholder
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:438: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#438: FILE: drivers/dma-buf/st-dma-fence-proxy.c:20:
+	spinlock_t lock;

total: 0 errors, 1 warnings, 1 checks, 1158 lines checked
06d2116fd5f4 drm/i915: Unpeel awaits on a proxy fence
f3cd5ea0ff2c drm/i915/gem: Make relocations atomic within execbuf
dda5123316b5 drm/syncobj: Allow use of dma-fence-proxy
d03f86e3977c drm/i915/gem: Teach execbuf how to wait on future syncobj
9b560a7e6079 drm/i915/gem: Allow combining submit-fences with syncobj
9675274fc27c drm/i915/gt: Declare when we enabled timeslicing
7cf3aad63437 drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
308d42d80cb3 drm/i915: Always defer fenced work to the worker
b253079dbe95 drm/i915/gem: Assign context id for async work
68f85c40ff48 drm/i915: Export a preallocate variant of i915_active_acquire()
d90d92d26c5c drm/i915/gem: Separate the ww_mutex walker into its own list
9c2cdb286a07 drm/i915/gem: Asynchronous GTT unbinding
ac90fd42eb1d drm/i915/gem: Bind the fence async for execbuf

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
