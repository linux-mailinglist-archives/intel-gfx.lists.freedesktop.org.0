Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2805015BFF3
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 15:01:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B0A56F5E1;
	Thu, 13 Feb 2020 14:01:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B066F5E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 14:01:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20211699-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 14:01:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Feb 2020 14:01:50 +0000
Message-Id: <20200213140150.3639027-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/selftests: Exercise timeslice rewinding
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

Originally, I did not expect having to rewind a context upon
timeslicing: the point was to replace the executing context with a
non-executing one! However, given a second context that depends on
requests from the first, we may have to split the requests along the
first context to execute the second, causing us to partially replay the
first context and so have to rewind its RING_TAIL.

References: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 215 ++++++++++++++++++++++++-
 1 file changed, 214 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 26d39c111d16..6037bcadf847 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -76,8 +76,11 @@ static int wait_for_submit(struct intel_engine_cs *engine,
 	do {
 		cond_resched();
 		intel_engine_flush_submission(engine);
-		if (i915_request_is_active(rq))
+		if (i915_request_is_active(rq) &&
+		    !READ_ONCE(engine->execlists.pending[0])) {
+			tasklet_unlock_wait(&engine->execlists.tasklet);
 			return 0;
+		}
 	} while (time_before(jiffies, timeout));
 
 	return -ETIME;
@@ -857,6 +860,215 @@ static int live_timeslice_preempt(void *arg)
 	return err;
 }
 
+static struct i915_request *
+create_rewinder(struct intel_context *ce,
+		struct i915_request *wait,
+		void *slot, int idx)
+{
+	const u32 offset =
+		i915_ggtt_offset(ce->engine->status_page.vma) +
+		offset_in_page(slot);
+	struct i915_request *rq;
+	u32 *cs;
+	int err;
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq))
+		return rq;
+
+	if (wait) {
+		err = i915_request_await_dma_fence(rq, &wait->fence);
+		if (err)
+			goto err;
+	}
+
+	cs = intel_ring_begin(rq, 10);
+	if (IS_ERR(cs)) {
+		err = PTR_ERR(cs);
+		goto err;
+	}
+
+	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
+	*cs++ = MI_NOOP;
+
+	*cs++ = MI_SEMAPHORE_WAIT |
+		MI_SEMAPHORE_GLOBAL_GTT |
+		MI_SEMAPHORE_POLL |
+		MI_SEMAPHORE_SAD_NEQ_SDD;
+	*cs++ = 0;
+	*cs++ = offset;
+	*cs++ = 0;
+
+	*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+	*cs++ = i915_mmio_reg_offset(RING_TIMESTAMP(rq->engine->mmio_base));
+	*cs++ = offset + idx * sizeof(u32);
+	*cs++ = 0;
+
+	intel_ring_advance(rq, cs);
+
+	rq->sched.attr.priority = I915_PRIORITY_MASK;
+	err = 0;
+err:
+	i915_request_get(rq);
+	i915_request_add(rq);
+	if (err) {
+		i915_request_put(rq);
+		return ERR_PTR(err);
+	}
+
+	return rq;
+}
+
+static int live_timeslice_rewind(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+
+	/*
+	 * The usual presumption on timeslice expiration is that we replace
+	 * the active context with another. However, given a chain of
+	 * dependencies we may end up with replacing the context with itself,
+	 * but only a few of those requests, forcing us to rewind the
+	 * RING_TAIL of the original request.
+	 */
+	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
+		return 0;
+
+	for_each_engine(engine, gt, id) {
+		enum { A1, A2, B1 };
+		enum { X=1, Y, Z };
+		struct i915_request *rq[3] = {};
+		struct intel_context *ce;
+		unsigned long heartbeat;
+		unsigned long timeslice;
+		int i, err = 0;
+		u32 *slot;
+
+		if (!intel_engine_has_timeslices(engine))
+			continue;
+
+		/*
+		 * A:rq1 -- semaphore wait, timestamp X
+		 * A:rq2 -- write timestamp Y
+		 *
+		 * B:rq1 [await A:rq1] -- write timestamp Z
+		 *
+		 * Force timeslice, release semaphore.
+		 *
+		 * Expect execution/evaluation order XZY
+		 */
+
+		engine_heartbeat_disable(engine, &heartbeat);
+		timeslice = xchg(&engine->props.timeslice_duration_ms, 1);
+
+		slot = memset32(engine->status_page.addr + 1000, 0, 4);
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			goto err;
+		}
+
+		rq[0] = create_rewinder(ce, NULL, slot, 1);
+		if (IS_ERR(rq[0])) {
+			intel_context_put(ce);
+			goto err;
+		}
+
+		rq[1] = create_rewinder(ce, NULL, slot, 2);
+		intel_context_put(ce);
+		if (IS_ERR(rq[1]))
+			goto err;
+
+		err = wait_for_submit(engine, rq[1], HZ / 2);
+		if (err) {
+			pr_err("%s: failed to submit first context\n",
+			       engine->name);
+			goto err;
+		}
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			goto err;
+		}
+
+		rq[2] = create_rewinder(ce, rq[0], slot, 3);
+		intel_context_put(ce);
+		if (IS_ERR(rq[2]))
+			goto err;
+
+		err = wait_for_submit(engine, rq[2], HZ / 2);
+		if (err) {
+			pr_err("%s: failed to submit second context\n",
+			       engine->name);
+			goto err;
+		}
+		GEM_BUG_ON(!timer_pending(&engine->execlists.timer));
+
+		/* ELSP[] = { { A:rq1, A:rq2 }, { B:rq1 } } */
+		GEM_BUG_ON(!i915_request_is_active(rq[A1]));
+		GEM_BUG_ON(!i915_request_is_active(rq[A2]));
+		GEM_BUG_ON(!i915_request_is_active(rq[B1]));
+
+		/* Wait for the timeslice to kick in */
+		del_timer(&engine->execlists.timer);
+		tasklet_hi_schedule(&engine->execlists.tasklet);
+		intel_engine_flush_submission(engine);
+
+		/* -> ELSP[] = { { A:rq1 }, { B:rq1 } } */
+		GEM_BUG_ON(!i915_request_is_active(rq[A1]));
+		GEM_BUG_ON( i915_request_is_active(rq[A2]));
+		GEM_BUG_ON(!i915_request_is_active(rq[B1]));
+
+		/* Release the hounds! */
+		slot[0] = 1;
+		wmb(); /* "pairs" with GPU; paranoid kick of internal CPU$ */
+
+		for (i = 1; i <= 3; i++) {
+			unsigned long timeout = jiffies + HZ / 2;
+
+			while (!READ_ONCE(slot[i]) &&
+			       time_before(jiffies, timeout))
+				;
+
+			if (!time_before(jiffies, timeout)) {
+				pr_err("%s: rq[%d] timed out\n",
+				       engine->name, i - 1);
+				err = -ETIME;
+				goto err;
+			}
+
+			pr_debug("%s: slot[%d]:%x\n", engine->name, i, slot[i]);
+		}
+
+		/* XZY: XZ < XY */
+		if (slot[Z] - slot[X] >= slot[Y] - slot[X]) {
+			pr_err("%s: timeslicing did not run context B [%u] before A [%u]!\n",
+			       engine->name,
+			       slot[Z] - slot[X],
+			       slot[Y] - slot[X]);
+			err = -EINVAL;
+		}
+
+err:
+		memset32(&slot[0], -1, 4);
+		wmb();
+
+		engine->props.timeslice_duration_ms = timeslice;
+		engine_heartbeat_enable(engine, heartbeat);
+		for (i = 0; i < 3; i++)
+			i915_request_put(rq[i]);
+		if (igt_flush_test(gt->i915))
+			err = -EIO;
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 static struct i915_request *nop_request(struct intel_engine_cs *engine)
 {
 	struct i915_request *rq;
@@ -3711,6 +3923,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_hold_reset),
 		SUBTEST(live_error_interrupt),
 		SUBTEST(live_timeslice_preempt),
+		SUBTEST(live_timeslice_rewind),
 		SUBTEST(live_timeslice_queue),
 		SUBTEST(live_busywait_preempt),
 		SUBTEST(live_preempt),
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
