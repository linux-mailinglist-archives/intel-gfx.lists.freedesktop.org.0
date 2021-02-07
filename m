Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3B93120EC
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Feb 2021 03:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F23DA6E524;
	Sun,  7 Feb 2021 02:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B58676E524
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Feb 2021 02:31:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23808341-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sun, 07 Feb 2021 02:31:05 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Feb 2021 02:31:02 +0000
Message-Id: <20210207023103.691-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210207023103.691-1-chris@chris-wilson.co.uk>
References: <20210207023103.691-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/4] drm/i915: Show execlists queues when dumping
 state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the scheduler pretty printer from out of the execlists register
state to and push it to the schduler.

v2: It's not common to all, so shove it out of intel_engine_cs and
split it between scheduler front/back ends

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 296 +++---------------
 .../drm/i915/gt/intel_execlists_submission.c  | 180 +++++++----
 drivers/gpu/drm/i915/i915_request.c           |   6 +
 drivers/gpu/drm/i915/i915_scheduler.c         | 172 ++++++++++
 drivers/gpu/drm/i915/i915_scheduler.h         |   8 +
 drivers/gpu/drm/i915/i915_scheduler_types.h   |   9 +
 6 files changed, 356 insertions(+), 315 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 14b37b8645df..577ebd4a324f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1265,49 +1265,6 @@ bool intel_engine_can_store_dword(struct intel_engine_cs *engine)
 	}
 }
 
-static struct intel_timeline *get_timeline(const struct i915_request *rq)
-{
-	struct intel_timeline *tl;
-
-	/*
-	 * Even though we are holding the engine->active.lock here, there
-	 * is no control over the submission queue per-se and we are
-	 * inspecting the active state at a random point in time, with an
-	 * unknown queue. Play safe and make sure the timeline remains valid.
-	 * (Only being used for pretty printing, one extra kref shouldn't
-	 * cause a camel stampede!)
-	 */
-	rcu_read_lock();
-	tl = rcu_dereference(rq->timeline);
-	if (!kref_get_unless_zero(&tl->kref))
-		tl = NULL;
-	rcu_read_unlock();
-
-	return tl;
-}
-
-static int print_ring(char *buf, int sz, struct i915_request *rq)
-{
-	int len = 0;
-
-	if (!i915_request_signaled(rq)) {
-		struct intel_timeline *tl = get_timeline(rq);
-
-		len = scnprintf(buf, sz,
-				"ring:{start:%08x, hwsp:%08x, seqno:%08x, runtime:%llums}, ",
-				i915_ggtt_offset(rq->ring->vma),
-				tl ? tl->hwsp_offset : 0,
-				hwsp_seqno(rq),
-				DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),
-						      1000 * 1000));
-
-		if (tl)
-			intel_timeline_put(tl);
-	}
-
-	return len;
-}
-
 static void hexdump(struct drm_printer *m, const void *buf, size_t len)
 {
 	const size_t rowsize = 8 * sizeof(u32);
@@ -1337,205 +1294,69 @@ static void hexdump(struct drm_printer *m, const void *buf, size_t len)
 	}
 }
 
-static const char *repr_timer(const struct timer_list *t)
-{
-	if (!READ_ONCE(t->expires))
-		return "inactive";
-
-	if (timer_pending(t))
-		return "active";
-
-	return "expired";
-}
-
 static void intel_engine_print_registers(struct intel_engine_cs *engine,
 					 struct drm_printer *m)
 {
-	struct drm_i915_private *dev_priv = engine->i915;
-	struct intel_engine_execlists * const execlists = &engine->execlists;
+	struct drm_i915_private *i915 = engine->i915;
 	u64 addr;
 
-	if (engine->id == RENDER_CLASS && IS_GEN_RANGE(dev_priv, 4, 7))
-		drm_printf(m, "\tCCID: 0x%08x\n", ENGINE_READ(engine, CCID));
-	if (HAS_EXECLISTS(dev_priv)) {
-		drm_printf(m, "\tEL_STAT_HI: 0x%08x\n",
+	if (engine->id == RENDER_CLASS && IS_GEN_RANGE(i915, 4, 7))
+		drm_printf(m, "CCID: 0x%08x\n", ENGINE_READ(engine, CCID));
+	if (HAS_EXECLISTS(i915)) {
+		drm_printf(m, "EL_STAT_HI: 0x%08x\n",
 			   ENGINE_READ(engine, RING_EXECLIST_STATUS_HI));
-		drm_printf(m, "\tEL_STAT_LO: 0x%08x\n",
+		drm_printf(m, "EL_STAT_LO: 0x%08x\n",
 			   ENGINE_READ(engine, RING_EXECLIST_STATUS_LO));
 	}
-	drm_printf(m, "\tRING_START: 0x%08x\n",
+	drm_printf(m, "RING_START: 0x%08x\n",
 		   ENGINE_READ(engine, RING_START));
-	drm_printf(m, "\tRING_HEAD:  0x%08x\n",
+	drm_printf(m, "RING_HEAD:  0x%08x\n",
 		   ENGINE_READ(engine, RING_HEAD) & HEAD_ADDR);
-	drm_printf(m, "\tRING_TAIL:  0x%08x\n",
+	drm_printf(m, "RING_TAIL:  0x%08x\n",
 		   ENGINE_READ(engine, RING_TAIL) & TAIL_ADDR);
-	drm_printf(m, "\tRING_CTL:   0x%08x%s\n",
+	drm_printf(m, "RING_CTL:   0x%08x%s\n",
 		   ENGINE_READ(engine, RING_CTL),
 		   ENGINE_READ(engine, RING_CTL) & (RING_WAIT | RING_WAIT_SEMAPHORE) ? " [waiting]" : "");
 	if (INTEL_GEN(engine->i915) > 2) {
-		drm_printf(m, "\tRING_MODE:  0x%08x%s\n",
+		drm_printf(m, "RING_MODE:  0x%08x%s\n",
 			   ENGINE_READ(engine, RING_MI_MODE),
 			   ENGINE_READ(engine, RING_MI_MODE) & (MODE_IDLE) ? " [idle]" : "");
 	}
 
-	if (INTEL_GEN(dev_priv) >= 6) {
-		drm_printf(m, "\tRING_IMR:   0x%08x\n",
+	if (INTEL_GEN(i915) >= 6) {
+		drm_printf(m, "RING_IMR:   0x%08x\n",
 			   ENGINE_READ(engine, RING_IMR));
-		drm_printf(m, "\tRING_ESR:   0x%08x\n",
+		drm_printf(m, "RING_ESR:   0x%08x\n",
 			   ENGINE_READ(engine, RING_ESR));
-		drm_printf(m, "\tRING_EMR:   0x%08x\n",
+		drm_printf(m, "RING_EMR:   0x%08x\n",
 			   ENGINE_READ(engine, RING_EMR));
-		drm_printf(m, "\tRING_EIR:   0x%08x\n",
+		drm_printf(m, "RING_EIR:   0x%08x\n",
 			   ENGINE_READ(engine, RING_EIR));
 	}
 
 	addr = intel_engine_get_active_head(engine);
-	drm_printf(m, "\tACTHD:  0x%08x_%08x\n",
+	drm_printf(m, "ACTHD:  0x%08x_%08x\n",
 		   upper_32_bits(addr), lower_32_bits(addr));
 	addr = intel_engine_get_last_batch_head(engine);
-	drm_printf(m, "\tBBADDR: 0x%08x_%08x\n",
+	drm_printf(m, "BBADDR: 0x%08x_%08x\n",
 		   upper_32_bits(addr), lower_32_bits(addr));
-	if (INTEL_GEN(dev_priv) >= 8)
+	if (INTEL_GEN(i915) >= 8)
 		addr = ENGINE_READ64(engine, RING_DMA_FADD, RING_DMA_FADD_UDW);
-	else if (INTEL_GEN(dev_priv) >= 4)
+	else if (INTEL_GEN(i915) >= 4)
 		addr = ENGINE_READ(engine, RING_DMA_FADD);
 	else
 		addr = ENGINE_READ(engine, DMA_FADD_I8XX);
-	drm_printf(m, "\tDMA_FADDR: 0x%08x_%08x\n",
+	drm_printf(m, "DMA_FADDR: 0x%08x_%08x\n",
 		   upper_32_bits(addr), lower_32_bits(addr));
-	if (INTEL_GEN(dev_priv) >= 4) {
-		drm_printf(m, "\tIPEIR: 0x%08x\n",
+	if (INTEL_GEN(i915) >= 4) {
+		drm_printf(m, "IPEIR: 0x%08x\n",
 			   ENGINE_READ(engine, RING_IPEIR));
-		drm_printf(m, "\tIPEHR: 0x%08x\n",
+		drm_printf(m, "IPEHR: 0x%08x\n",
 			   ENGINE_READ(engine, RING_IPEHR));
 	} else {
-		drm_printf(m, "\tIPEIR: 0x%08x\n", ENGINE_READ(engine, IPEIR));
-		drm_printf(m, "\tIPEHR: 0x%08x\n", ENGINE_READ(engine, IPEHR));
+		drm_printf(m, "IPEIR: 0x%08x\n", ENGINE_READ(engine, IPEIR));
+		drm_printf(m, "IPEHR: 0x%08x\n", ENGINE_READ(engine, IPEHR));
 	}
-
-	if (intel_engine_uses_guc(engine)) {
-		/* nothing to print yet */
-	} else if (HAS_EXECLISTS(dev_priv)) {
-		struct i915_sched *se = intel_engine_get_scheduler(engine);
-		struct i915_request * const *port, *rq;
-		const u32 *hws =
-			&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
-		const u8 num_entries = execlists->csb_size;
-		unsigned int idx;
-		u8 read, write;
-
-		drm_printf(m, "\tExeclist tasklet queued? %s (%s), preempt? %s, timeslice? %s\n",
-			   yesno(test_bit(TASKLET_STATE_SCHED,
-					  &se->tasklet.state)),
-			   enableddisabled(!atomic_read(&se->tasklet.count)),
-			   repr_timer(&engine->execlists.preempt),
-			   repr_timer(&engine->execlists.timer));
-
-		read = execlists->csb_head;
-		write = READ_ONCE(*execlists->csb_write);
-
-		drm_printf(m, "\tExeclist status: 0x%08x %08x; CSB read:%d, write:%d, entries:%d\n",
-			   ENGINE_READ(engine, RING_EXECLIST_STATUS_LO),
-			   ENGINE_READ(engine, RING_EXECLIST_STATUS_HI),
-			   read, write, num_entries);
-
-		if (read >= num_entries)
-			read = 0;
-		if (write >= num_entries)
-			write = 0;
-		if (read > write)
-			write += num_entries;
-		while (read < write) {
-			idx = ++read % num_entries;
-			drm_printf(m, "\tExeclist CSB[%d]: 0x%08x, context: %d\n",
-				   idx, hws[idx * 2], hws[idx * 2 + 1]);
-		}
-
-		i915_sched_lock_bh(se);
-		rcu_read_lock();
-		for (port = execlists->active; (rq = *port); port++) {
-			char hdr[160];
-			int len;
-
-			len = scnprintf(hdr, sizeof(hdr),
-					"\t\tActive[%d]:  ccid:%08x%s%s, ",
-					(int)(port - execlists->active),
-					rq->context->lrc.ccid,
-					intel_context_is_closed(rq->context) ? "!" : "",
-					intel_context_is_banned(rq->context) ? "*" : "");
-			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
-			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
-			i915_request_show(m, rq, hdr, 0);
-		}
-		for (port = execlists->pending; (rq = *port); port++) {
-			char hdr[160];
-			int len;
-
-			len = scnprintf(hdr, sizeof(hdr),
-					"\t\tPending[%d]: ccid:%08x%s%s, ",
-					(int)(port - execlists->pending),
-					rq->context->lrc.ccid,
-					intel_context_is_closed(rq->context) ? "!" : "",
-					intel_context_is_banned(rq->context) ? "*" : "");
-			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
-			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
-			i915_request_show(m, rq, hdr, 0);
-		}
-		rcu_read_unlock();
-		i915_sched_unlock_bh(se);
-	} else if (INTEL_GEN(dev_priv) > 6) {
-		drm_printf(m, "\tPP_DIR_BASE: 0x%08x\n",
-			   ENGINE_READ(engine, RING_PP_DIR_BASE));
-		drm_printf(m, "\tPP_DIR_BASE_READ: 0x%08x\n",
-			   ENGINE_READ(engine, RING_PP_DIR_BASE_READ));
-		drm_printf(m, "\tPP_DIR_DCLV: 0x%08x\n",
-			   ENGINE_READ(engine, RING_PP_DIR_DCLV));
-	}
-}
-
-static void
-print_request_ring(struct drm_printer *m, const struct i915_request *rq)
-{
-	void *ring;
-	int size;
-
-	drm_printf(m,
-		   "[head %04x, postfix %04x, tail %04x, batch 0x%08x_%08x]:\n",
-		   rq->head, rq->postfix, rq->tail,
-		   rq->batch ? upper_32_bits(rq->batch->node.start) : ~0u,
-		   rq->batch ? lower_32_bits(rq->batch->node.start) : ~0u);
-
-	size = rq->tail - rq->head;
-	if (rq->tail < rq->head)
-		size += rq->ring->size;
-
-	ring = kmalloc(size, GFP_ATOMIC);
-	if (ring) {
-		const void *vaddr = rq->ring->vaddr;
-		unsigned int head = rq->head;
-		unsigned int len = 0;
-
-		if (rq->tail < head) {
-			len = rq->ring->size - head;
-			memcpy(ring, vaddr + head, len);
-			head = 0;
-		}
-		memcpy(ring + len, vaddr + head, size - len);
-
-		hexdump(m, ring, size);
-		kfree(ring);
-	}
-}
-
-static unsigned long list_count(struct list_head *list)
-{
-	struct list_head *pos;
-	unsigned long count = 0;
-
-	list_for_each(pos, list)
-		count++;
-
-	return count;
 }
 
 static unsigned long read_ul(void *p, size_t x)
@@ -1565,9 +1386,9 @@ static void print_properties(struct intel_engine_cs *engine,
 	};
 	const struct pmap *p;
 
-	drm_printf(m, "\tProperties:\n");
+	drm_printf(m, "Properties:\n");
 	for (p = props; p->name; p++)
-		drm_printf(m, "\t\t%s: %lu [default %lu]\n",
+		drm_printf(m, "\t%s: %lu [default %lu]\n",
 			   p->name,
 			   read_ul(&engine->props, p->offset),
 			   read_ul(&engine->defaults, p->offset));
@@ -1578,10 +1399,8 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 		       const char *header, ...)
 {
 	struct i915_gpu_error * const error = &engine->i915->gpu_error;
-	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	const struct i915_request *rq;
 	intel_wakeref_t wakeref;
-	unsigned long flags;
 	ktime_t dummy;
 
 	if (header) {
@@ -1595,78 +1414,41 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 	if (intel_gt_is_wedged(engine->gt))
 		drm_printf(m, "*** WEDGED ***\n");
 
-	drm_printf(m, "\tAwake? %d\n", atomic_read(&engine->wakeref.count));
-	drm_printf(m, "\tBarriers?: %s\n",
+	drm_printf(m, "Awake? %d\n", atomic_read(&engine->wakeref.count));
+	drm_printf(m, "Barriers?: %s\n",
 		   yesno(!llist_empty(&engine->barrier_tasks)));
-	drm_printf(m, "\tLatency: %luus\n",
+	drm_printf(m, "Latency: %luus\n",
 		   ewma__engine_latency_read(&engine->latency));
 	if (intel_engine_supports_stats(engine))
-		drm_printf(m, "\tRuntime: %llums\n",
+		drm_printf(m, "Runtime: %llums\n",
 			   ktime_to_ms(intel_engine_get_busy_time(engine,
 								  &dummy)));
-	drm_printf(m, "\tForcewake: %x domains, %d active\n",
+	drm_printf(m, "Forcewake: %x domains, %d active\n",
 		   engine->fw_domain, READ_ONCE(engine->fw_active));
 
 	rcu_read_lock();
 	rq = READ_ONCE(engine->heartbeat.systole);
 	if (rq)
-		drm_printf(m, "\tHeartbeat: %d ms ago\n",
+		drm_printf(m, "Heartbeat: %d ms ago\n",
 			   jiffies_to_msecs(jiffies - rq->emitted_jiffies));
 	rcu_read_unlock();
-	drm_printf(m, "\tReset count: %d (global %d)\n",
+	drm_printf(m, "Reset count: %d (global %d)\n",
 		   i915_reset_engine_count(error, engine),
 		   i915_reset_count(error));
 	print_properties(engine, m);
 
-	drm_printf(m, "\tRequests:\n");
+	i915_sched_show(m, intel_engine_get_scheduler(engine),
+			i915_request_show, 8);
 
-	rcu_read_lock();
-	spin_lock_irqsave(&se->lock, flags);
-	i915_sched_get_active_request(se);
-	if (rq) {
-		struct intel_timeline *tl = get_timeline(rq);
-
-		i915_request_show(m, rq, "\t\tactive ", 0);
-
-		drm_printf(m, "\t\tring->start:  0x%08x\n",
-			   i915_ggtt_offset(rq->ring->vma));
-		drm_printf(m, "\t\tring->head:   0x%08x\n",
-			   rq->ring->head);
-		drm_printf(m, "\t\tring->tail:   0x%08x\n",
-			   rq->ring->tail);
-		drm_printf(m, "\t\tring->emit:   0x%08x\n",
-			   rq->ring->emit);
-		drm_printf(m, "\t\tring->space:  0x%08x\n",
-			   rq->ring->space);
-
-		if (tl) {
-			drm_printf(m, "\t\tring->hwsp:   0x%08x\n",
-				   tl->hwsp_offset);
-			intel_timeline_put(tl);
-		}
-
-		print_request_ring(m, rq);
-
-		if (rq->context->lrc_reg_state) {
-			drm_printf(m, "Logical Ring Context:\n");
-			hexdump(m, rq->context->lrc_reg_state, PAGE_SIZE);
-		}
-	}
-	drm_printf(m, "\tOn hold?: %lu\n", list_count(&se->hold));
-	spin_unlock_irqrestore(&se->lock, flags);
-	rcu_read_unlock();
-
-	drm_printf(m, "\tMMIO base:  0x%08x\n", engine->mmio_base);
+	drm_printf(m, "MMIO base:  0x%08x\n", engine->mmio_base);
 	wakeref = intel_runtime_pm_get_if_in_use(engine->uncore->rpm);
 	if (wakeref) {
 		intel_engine_print_registers(engine, m);
 		intel_runtime_pm_put(engine->uncore->rpm, wakeref);
 	} else {
-		drm_printf(m, "\tDevice is asleep; skipping register dump\n");
+		drm_printf(m, "Device is asleep; skipping register dump\n");
 	}
 
-	intel_execlists_show_requests(engine, m, i915_request_show, 8);
-
 	drm_printf(m, "HWSP:\n");
 	hexdump(m, engine->status_page.addr, PAGE_SIZE);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 4fb3a51ed063..c0b99ba6e233 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -199,6 +199,14 @@ struct virtual_engine {
 	struct intel_engine_cs *siblings[];
 };
 
+static void execlists_show(struct drm_printer *m,
+			   struct i915_sched *se,
+			   void (*show_request)(struct drm_printer *m,
+						const struct i915_request *rq,
+						const char *prefix,
+						int indent),
+			   unsigned int max);
+
 static struct virtual_engine *to_virtual_engine(struct intel_engine_cs *engine)
 {
 	GEM_BUG_ON(!intel_engine_is_virtual(engine));
@@ -2902,6 +2910,7 @@ static void init_execlists(struct intel_engine_cs *engine)
 	u32 base = engine->mmio_base;
 
 	engine->sched.active_request = execlists_active_request;
+	engine->sched.show = execlists_show;
 	tasklet_setup(&engine->sched.tasklet, execlists_submission_tasklet);
 
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
@@ -3518,75 +3527,72 @@ int intel_virtual_engine_attach_bond(struct intel_engine_cs *engine,
 	return 0;
 }
 
-void intel_execlists_show_requests(struct intel_engine_cs *engine,
-				   struct drm_printer *m,
-				   void (*show_request)(struct drm_printer *m,
-							const struct i915_request *rq,
-							const char *prefix,
-							int indent),
-				   unsigned int max)
+static const char *repr_timer(const struct timer_list *t)
 {
-	const struct intel_engine_execlists *execlists = &engine->execlists;
-	struct i915_sched *se = intel_engine_get_scheduler(engine);
+	if (!READ_ONCE(t->expires))
+		return "inactive";
+
+	if (timer_pending(t))
+		return "active";
+
+	return "expired";
+}
+
+static int print_ring(char *buf, int sz, struct i915_request *rq)
+{
+	int len = 0;
+
+	rcu_read_lock();
+	if (!i915_request_signaled(rq)) {
+		struct intel_timeline *tl = rcu_dereference(rq->timeline);
+
+		len = scnprintf(buf, sz,
+				"ring:{start:%08x, hwsp:%08x, seqno:%08x, runtime:%llums}, ",
+				i915_ggtt_offset(rq->ring->vma),
+				tl ? tl->hwsp_offset : 0,
+				hwsp_seqno(rq),
+				DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),
+						      1000 * 1000));
+	}
+	rcu_read_unlock();
+
+	return len;
+}
+
+static void execlists_show(struct drm_printer *m,
+			   struct i915_sched *se,
+			   void (*show_request)(struct drm_printer *m,
+						const struct i915_request *rq,
+						const char *prefix,
+						int indent),
+			   unsigned int max)
+{
+	const struct intel_engine_cs *engine =
+		container_of(se, typeof(*engine), sched);
+	const struct intel_engine_execlists *el = &engine->execlists;
+	const u64 *hws = el->csb_status;
+	const u8 num_entries = el->csb_size;
+	struct i915_request * const *port;
 	struct i915_request *rq, *last;
-	unsigned long flags;
+	intel_wakeref_t wakeref;
 	unsigned int count;
 	struct rb_node *rb;
+	unsigned int idx;
+	u8 read, write;
 
-	spin_lock_irqsave(&se->lock, flags);
+	wakeref = intel_runtime_pm_get(engine->uncore->rpm);
+	rcu_read_lock();
 
 	last = NULL;
 	count = 0;
-	list_for_each_entry(rq, &se->requests, sched.link) {
-		if (count++ < max - 1)
-			show_request(m, rq, "\t\t", 0);
-		else
-			last = rq;
-	}
-	if (last) {
-		if (count > max) {
-			drm_printf(m,
-				   "\t\t...skipping %d executing requests...\n",
-				   count - max);
-		}
-		show_request(m, last, "\t\t", 0);
-	}
-
-	if (execlists->queue_priority_hint != INT_MIN)
-		drm_printf(m, "\t\tQueue priority hint: %d\n",
-			   READ_ONCE(execlists->queue_priority_hint));
-
-	last = NULL;
-	count = 0;
-	for (rb = rb_first_cached(&se->queue); rb; rb = rb_next(rb)) {
-		struct i915_priolist *p = rb_entry(rb, typeof(*p), node);
-
-		priolist_for_each_request(rq, p) {
-			if (count++ < max - 1)
-				show_request(m, rq, "\t\t", 0);
-			else
-				last = rq;
-		}
-	}
-	if (last) {
-		if (count > max) {
-			drm_printf(m,
-				   "\t\t...skipping %d queued requests...\n",
-				   count - max);
-		}
-		show_request(m, last, "\t\t", 0);
-	}
-
-	last = NULL;
-	count = 0;
-	for (rb = rb_first_cached(&execlists->virtual); rb; rb = rb_next(rb)) {
+	for (rb = rb_first_cached(&el->virtual); rb; rb = rb_next(rb)) {
 		struct virtual_engine *ve =
 			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
 		struct i915_request *rq = READ_ONCE(ve->request);
 
 		if (rq) {
 			if (count++ < max - 1)
-				show_request(m, rq, "\t\t", 0);
+				show_request(m, rq, "\t", 0);
 			else
 				last = rq;
 		}
@@ -3594,13 +3600,71 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 	if (last) {
 		if (count > max) {
 			drm_printf(m,
-				   "\t\t...skipping %d virtual requests...\n",
+				   "\t...skipping %d virtual requests...\n",
 				   count - max);
 		}
-		show_request(m, last, "\t\t", 0);
+		show_request(m, last, "\t", 0);
 	}
 
-	spin_unlock_irqrestore(&se->lock, flags);
+	read = el->csb_head;
+	write = READ_ONCE(*el->csb_write);
+
+	drm_printf(m, "Execlist status: 0x%08x %08x; CSB read:%d, write:%d, entries:%d\n",
+		   ENGINE_READ(engine, RING_EXECLIST_STATUS_LO),
+		   ENGINE_READ(engine, RING_EXECLIST_STATUS_HI),
+		   read, write, num_entries);
+
+	if (read >= num_entries)
+		read = 0;
+	if (write >= num_entries)
+		write = 0;
+	if (read > write)
+		write += num_entries;
+	while (read < write) {
+		idx = ++read % num_entries;
+		drm_printf(m, "Execlist CSB[%d]: 0x%08x, context: %d\n",
+			   idx,
+			   lower_32_bits(hws[idx]),
+			   upper_32_bits(hws[idx]));
+	}
+
+	i915_sched_lock_bh(se);
+	for (port = el->active; (rq = *port); port++) {
+		char hdr[160];
+		int len;
+
+		len = scnprintf(hdr, sizeof(hdr),
+				"Active[%d]:  ccid:%08x%s%s, ",
+				(int)(port - el->active),
+				rq->context->lrc.ccid,
+				intel_context_is_closed(rq->context) ? "!" : "",
+				intel_context_is_banned(rq->context) ? "*" : "");
+		len += print_ring(hdr + len, sizeof(hdr) - len, rq);
+		scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
+		i915_request_show(m, rq, hdr, 0);
+	}
+	for (port = el->pending; (rq = *port); port++) {
+		char hdr[160];
+		int len;
+
+		len = scnprintf(hdr, sizeof(hdr),
+				"Pending[%d]: ccid:%08x%s%s, ",
+				(int)(port - el->pending),
+				rq->context->lrc.ccid,
+				intel_context_is_closed(rq->context) ? "!" : "",
+				intel_context_is_banned(rq->context) ? "*" : "");
+		len += print_ring(hdr + len, sizeof(hdr) - len, rq);
+		scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
+		i915_request_show(m, rq, hdr, 0);
+	}
+	i915_sched_unlock_bh(se);
+
+	drm_printf(m, "Execlists preempt? %s, timeslice? %s\n",
+		   repr_timer(&el->preempt),
+		   repr_timer(&el->timer));
+
+	rcu_read_unlock();
+	intel_runtime_pm_put(engine->uncore->rpm, wakeref);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 792dd0bbea3b..459f727b03cd 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1827,6 +1827,9 @@ static char queue_status(const struct i915_request *rq)
 	if (i915_request_is_active(rq))
 		return 'E';
 
+	if (i915_request_on_hold(rq))
+		return 'S';
+
 	if (i915_request_is_ready(rq))
 		return intel_engine_is_virtual(rq->engine) ? 'V' : 'R';
 
@@ -1895,6 +1898,9 @@ void i915_request_show(struct drm_printer *m,
 	 *    - a completed request may still be regarded as executing, its
 	 *      status may not be updated until it is retired and removed
 	 *      from the lists
+	 *
+	 *  S [Suspended]
+	 *    - the request has been temporarily suspended from execution
 	 */
 
 	x = print_sched_attr(&rq->sched.attr, buf, x, sizeof(buf));
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 351ec6773041..f9477c48d3dc 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -1120,6 +1120,178 @@ void i915_request_show_with_schedule(struct drm_printer *m,
 	rcu_read_unlock();
 }
 
+static void hexdump(struct drm_printer *m, const void *buf, size_t len)
+{
+	const size_t rowsize = 8 * sizeof(u32);
+	const void *prev = NULL;
+	bool skip = false;
+	size_t pos;
+
+	for (pos = 0; pos < len; pos += rowsize) {
+		char line[128];
+
+		if (prev && !memcmp(prev, buf + pos, rowsize)) {
+			if (!skip) {
+				drm_printf(m, "*\n");
+				skip = true;
+			}
+			continue;
+		}
+
+		WARN_ON_ONCE(hex_dump_to_buffer(buf + pos, len - pos,
+						rowsize, sizeof(u32),
+						line, sizeof(line),
+						false) >= sizeof(line));
+		drm_printf(m, "[%04zx] %s\n", pos, line);
+
+		prev = buf + pos;
+		skip = false;
+	}
+}
+
+static void
+print_request_ring(struct drm_printer *m, const struct i915_request *rq)
+{
+	void *ring;
+	int size;
+
+	drm_printf(m,
+		   "[head %04x, postfix %04x, tail %04x, batch 0x%08x_%08x]:\n",
+		   rq->head, rq->postfix, rq->tail,
+		   rq->batch ? upper_32_bits(rq->batch->node.start) : ~0u,
+		   rq->batch ? lower_32_bits(rq->batch->node.start) : ~0u);
+
+	size = rq->tail - rq->head;
+	if (rq->tail < rq->head)
+		size += rq->ring->size;
+
+	ring = kmalloc(size, GFP_ATOMIC);
+	if (ring) {
+		const void *vaddr = rq->ring->vaddr;
+		unsigned int head = rq->head;
+		unsigned int len = 0;
+
+		if (rq->tail < head) {
+			len = rq->ring->size - head;
+			memcpy(ring, vaddr + head, len);
+			head = 0;
+		}
+		memcpy(ring + len, vaddr + head, size - len);
+
+		hexdump(m, ring, size);
+		kfree(ring);
+	}
+}
+
+void i915_sched_show(struct drm_printer *m,
+		     struct i915_sched *se,
+		     void (*show_request)(struct drm_printer *m,
+					  const struct i915_request *rq,
+					  const char *prefix,
+					  int indent),
+		     unsigned int max)
+{
+	const struct i915_request *rq, *last;
+	unsigned long flags;
+	unsigned int count;
+	struct rb_node *rb;
+
+	rcu_read_lock();
+	spin_lock_irqsave(&se->lock, flags);
+
+	rq = i915_sched_get_active_request(se);
+	if (rq) {
+		i915_request_show(m, rq, "Active ", 0);
+
+		drm_printf(m, "\tring->start:  0x%08x\n",
+			   i915_ggtt_offset(rq->ring->vma));
+		drm_printf(m, "\tring->head:   0x%08x\n",
+			   rq->ring->head);
+		drm_printf(m, "\tring->tail:   0x%08x\n",
+			   rq->ring->tail);
+		drm_printf(m, "\tring->emit:   0x%08x\n",
+			   rq->ring->emit);
+		drm_printf(m, "\tring->space:  0x%08x\n",
+			   rq->ring->space);
+		drm_printf(m, "\tring->hwsp:   0x%08x\n",
+			   i915_request_active_timeline(rq)->hwsp_offset);
+
+		print_request_ring(m, rq);
+
+		if (rq->context->lrc_reg_state) {
+			drm_printf(m, "Logical Ring Context:\n");
+			hexdump(m, rq->context->lrc_reg_state, PAGE_SIZE);
+		}
+	}
+
+	drm_printf(m, "Tasklet queued? %s (%s)\n",
+		   yesno(test_bit(TASKLET_STATE_SCHED, &se->tasklet.state)),
+		   enableddisabled(!atomic_read(&se->tasklet.count)));
+
+	drm_printf(m, "Requests:\n");
+
+	last = NULL;
+	count = 0;
+	list_for_each_entry(rq, &se->requests, sched.link) {
+		if (count++ < max - 1)
+			show_request(m, rq, "\t", 0);
+		else
+			last = rq;
+	}
+	if (last) {
+		if (count > max) {
+			drm_printf(m,
+				   "\t...skipping %d executing requests...\n",
+				   count - max);
+		}
+		show_request(m, last, "\t", 0);
+	}
+
+	last = NULL;
+	count = 0;
+	for (rb = rb_first_cached(&se->queue); rb; rb = rb_next(rb)) {
+		struct i915_priolist *p = rb_entry(rb, typeof(*p), node);
+
+		priolist_for_each_request(rq, p) {
+			if (count++ < max - 1)
+				show_request(m, rq, "\t", 0);
+			else
+				last = rq;
+		}
+	}
+	if (last) {
+		if (count > max) {
+			drm_printf(m,
+				   "\t...skipping %d queued requests...\n",
+				   count - max);
+		}
+		show_request(m, last, "\t", 0);
+	}
+
+	last = NULL;
+	count = 0;
+	list_for_each_entry(rq, &se->hold, sched.link) {
+		if (count++ < max - 1)
+			show_request(m, rq, "\t", 0);
+		else
+			last = rq;
+	}
+	if (last) {
+		if (count > max) {
+			drm_printf(m,
+				   "\t...skipping %d suspended requests...\n",
+				   count - max);
+		}
+		show_request(m, last, "\t", 0);
+	}
+
+	spin_unlock_irqrestore(&se->lock, flags);
+	rcu_read_unlock();
+
+	if (se->show)
+		se->show(m, se, show_request, max);
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/i915_scheduler.c"
 #endif
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index d6a7f15b953f..53c80294a063 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -151,4 +151,12 @@ void i915_request_show_with_schedule(struct drm_printer *m,
 				     const char *prefix,
 				     int indent);
 
+void i915_sched_show(struct drm_printer *m,
+		     struct i915_sched *se,
+		     void (*show_request)(struct drm_printer *m,
+					  const struct i915_request *rq,
+					  const char *prefix,
+					  int indent),
+		     unsigned int max);
+
 #endif /* _I915_SCHEDULER_H_ */
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 2c2abe5f5a43..0433a1785f6e 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -13,6 +13,7 @@
 
 #include "i915_priolist_types.h"
 
+struct drm_printer;
 struct i915_request;
 
 /**
@@ -39,6 +40,14 @@ struct i915_sched {
 
 	struct i915_request *(*active_request)(struct i915_sched *se);
 
+	void (*show)(struct drm_printer *m,
+		     struct i915_sched *se,
+		     void (*show_request)(struct drm_printer *m,
+					  const struct i915_request *rq,
+					  const char *prefix,
+					  int indent),
+		     unsigned int max);
+
 	struct list_head requests; /* active request, on HW */
 	struct list_head hold; /* ready requests, but on hold */
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
