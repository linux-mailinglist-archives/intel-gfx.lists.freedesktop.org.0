Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C39611C838
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 09:30:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D6676ECA7;
	Thu, 12 Dec 2019 08:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A0D86ECA7
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 08:30:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 00:30:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; d="scan'208";a="265143527"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.9.125])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Dec 2019 00:30:23 -0800
MIME-Version: 1.0
From: Chris Wilson <chris.p.wilson@intel.com>
User-Agent: alot/0.6
To: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191212073522.27785-1-venkata.s.dhanalakota@intel.com>
 <20191212073522.27785-2-venkata.s.dhanalakota@intel.com>
In-Reply-To: <20191212073522.27785-2-venkata.s.dhanalakota@intel.com>
Message-ID: <157613942048.31893.17488412529372010865@skylake-alporthouse-com>
Date: Thu, 12 Dec 2019 08:30:20 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Tag GEM_TRACE with device name
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

Quoting Venkata Sandeep Dhanalakota (2019-12-12 07:35:22)
> Adding device name to trace makes debugging easier,
> when dealing with multiple gpus.

I'm not going to type that by hand, so let's try a little bit of
ingenuity.

---
 drivers/gpu/drm/i915/gt/intel_engine.h        |   8 ++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   6 +-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |   6 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 106 ++++++++----------
 drivers/gpu/drm/i915/gt/intel_reset.c         |   2 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  11 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   8 +-
 7 files changed, 72 insertions(+), 75 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index c294ea80605e..d9c7121fa09e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -29,6 +29,14 @@ struct intel_gt;
 #define CACHELINE_BYTES 64
 #define CACHELINE_DWORDS (CACHELINE_BYTES / sizeof(u32))
 
+#define ENGINE_TRACE(e__, fmt, ...) do {				\
+	typecheck(struct intel_engine_cs, *(e__));			\
+	GEM_TRACE("%s %s: " fmt, 					\
+		  dev_name((e__)->i915->drm.dev),			\
+		  (e__)->name,						\
+		  ##__VA_ARGS__);					\
+} while (0)
+
 /*
  * The register defines to be used with the following macros need to accept a
  * base param, e.g:
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 49473c25916c..3d1d48bf90cf 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -912,7 +912,7 @@ int intel_engine_stop_cs(struct intel_engine_cs *engine)
 	if (INTEL_GEN(engine->i915) < 3)
 		return -ENODEV;
 
-	GEM_TRACE("%s\n", engine->name);
+	ENGINE_TRACE(engine, "\n");
 
 	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
 
@@ -921,7 +921,7 @@ int intel_engine_stop_cs(struct intel_engine_cs *engine)
 					 mode, MODE_IDLE, MODE_IDLE,
 					 1000, stop_timeout(engine),
 					 NULL)) {
-		GEM_TRACE("%s: timed out on STOP_RING -> IDLE\n", engine->name);
+		ENGINE_TRACE(engine, "timed out on STOP_RING -> IDLE\n");
 		err = -ETIMEDOUT;
 	}
 
@@ -933,7 +933,7 @@ int intel_engine_stop_cs(struct intel_engine_cs *engine)
 
 void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine)
 {
-	GEM_TRACE("%s\n", engine->name);
+	ENGINE_TRACE(engine, "\n");
 
 	ENGINE_WRITE_FW(engine, RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 889eb37e386a..bcbda8e52d41 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -21,7 +21,7 @@ static int __engine_unpark(struct intel_wakeref *wf)
 		container_of(wf, typeof(*engine), wakeref);
 	void *map;
 
-	GEM_TRACE("%s\n", engine->name);
+	ENGINE_TRACE(engine, "\n");
 
 	intel_gt_pm_get(engine->gt);
 
@@ -80,7 +80,7 @@ __queue_and_release_pm(struct i915_request *rq,
 {
 	struct intel_gt_timelines *timelines = &engine->gt->timelines;
 
-	GEM_TRACE("%s\n", engine->name);
+	ENGINE_TRACE(engine, "\n");
 
 	/*
 	 * We have to serialise all potential retirement paths with our
@@ -204,7 +204,7 @@ static int __engine_park(struct intel_wakeref *wf)
 	if (!switch_to_kernel_context(engine))
 		return -EBUSY;
 
-	GEM_TRACE("%s\n", engine->name);
+	ENGINE_TRACE(engine, "\n");
 
 	call_idle_barriers(engine); /* cleanup after wedging */
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 929f6bae4eba..e402b3b28150 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1069,8 +1069,8 @@ static void reset_active(struct i915_request *rq,
 	 * remain correctly ordered. And we defer to __i915_request_submit()
 	 * so that all asynchronous waits are correctly handled.
 	 */
-	GEM_TRACE("%s(%s): { rq=%llx:%lld }\n",
-		  __func__, engine->name, rq->fence.context, rq->fence.seqno);
+	ENGINE_TRACE(engine, "{ rq=%llx:%lld }\n",
+		     rq->fence.context, rq->fence.seqno);
 
 	/* On resubmission of the active request, payload will be scrubbed */
 	if (i915_request_completed(rq))
@@ -1274,15 +1274,14 @@ trace_ports(const struct intel_engine_execlists *execlists,
 	if (!ports[0])
 		return;
 
-	GEM_TRACE("%s: %s { %llx:%lld%s, %llx:%lld }\n",
-		  engine->name, msg,
-		  ports[0]->fence.context,
-		  ports[0]->fence.seqno,
-		  i915_request_completed(ports[0]) ? "!" :
-		  i915_request_started(ports[0]) ? "*" :
-		  "",
-		  ports[1] ? ports[1]->fence.context : 0,
-		  ports[1] ? ports[1]->fence.seqno : 0);
+	ENGINE_TRACE(engine, "%s { %llx:%lld%s, %llx:%lld }\n", msg,
+		     ports[0]->fence.context,
+		     ports[0]->fence.seqno,
+		     i915_request_completed(ports[0]) ? "!" :
+		     i915_request_started(ports[0]) ? "*" :
+		     "",
+		     ports[1] ? ports[1]->fence.context : 0,
+		     ports[1] ? ports[1]->fence.seqno : 0);
 }
 
 static __maybe_unused bool
@@ -1700,12 +1699,11 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	last = last_active(execlists);
 	if (last) {
 		if (need_preempt(engine, last, rb)) {
-			GEM_TRACE("%s: preempting last=%llx:%lld, prio=%d, hint=%d\n",
-				  engine->name,
-				  last->fence.context,
-				  last->fence.seqno,
-				  last->sched.attr.priority,
-				  execlists->queue_priority_hint);
+			ENGINE_TRACE(engine, "preempting last=%llx:%lld, prio=%d, hint=%d\n",
+				     last->fence.context,
+				     last->fence.seqno,
+				     last->sched.attr.priority,
+				     execlists->queue_priority_hint);
 			record_preemption(execlists);
 
 			/*
@@ -1735,12 +1733,12 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			last = NULL;
 		} else if (need_timeslice(engine, last) &&
 			   timer_expired(&engine->execlists.timer)) {
-			GEM_TRACE("%s: expired last=%llx:%lld, prio=%d, hint=%d\n",
-				  engine->name,
-				  last->fence.context,
-				  last->fence.seqno,
-				  last->sched.attr.priority,
-				  execlists->queue_priority_hint);
+			ENGINE_TRACE(engine,
+				     "expired last=%llx:%lld, prio=%d, hint=%d\n",
+				     last->fence.context,
+				     last->fence.seqno,
+				     last->sched.attr.priority,
+				     execlists->queue_priority_hint);
 
 			ring_set_paused(engine, 1);
 			defer_active(engine);
@@ -1817,14 +1815,13 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				return; /* leave this for another */
 			}
 
-			GEM_TRACE("%s: virtual rq=%llx:%lld%s, new engine? %s\n",
-				  engine->name,
-				  rq->fence.context,
-				  rq->fence.seqno,
-				  i915_request_completed(rq) ? "!" :
-				  i915_request_started(rq) ? "*" :
-				  "",
-				  yesno(engine != ve->siblings[0]));
+			ENGINE_TRACE(engine, "virtual rq=%llx:%lld%s, new engine? %s\n",
+				     rq->fence.context,
+				     rq->fence.seqno,
+				     i915_request_completed(rq) ? "!" :
+				     i915_request_started(rq) ? "*" :
+				     "",
+				     yesno(engine != ve->siblings[0]));
 
 			ve->request = NULL;
 			ve->base.execlists.queue_priority_hint = INT_MIN;
@@ -1980,9 +1977,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * interrupt for secondary ports).
 	 */
 	execlists->queue_priority_hint = queue_prio(execlists);
-	GEM_TRACE("%s: queue_priority_hint:%d, submit:%s\n",
-		  engine->name, execlists->queue_priority_hint,
-		  yesno(submit));
 
 	if (submit) {
 		*port = execlists_schedule_in(last, port - execlists->pending);
@@ -2131,7 +2125,7 @@ static void process_csb(struct intel_engine_cs *engine)
 	 */
 	head = execlists->csb_head;
 	tail = READ_ONCE(*execlists->csb_write);
-	GEM_TRACE("%s cs-irq head=%d, tail=%d\n", engine->name, head, tail);
+	ENGINE_TRACE(engine, "cs-irq head=%d, tail=%d\n", head, tail);
 	if (unlikely(head == tail))
 		return;
 
@@ -2169,9 +2163,8 @@ static void process_csb(struct intel_engine_cs *engine)
 		 * status notifier.
 		 */
 
-		GEM_TRACE("%s csb[%d]: status=0x%08x:0x%08x\n",
-			  engine->name, head,
-			  buf[2 * head + 0], buf[2 * head + 1]);
+		ENGINE_TRACE(engine, "csb[%d]: status=0x%08x:0x%08x\n",
+			     head, buf[2 * head + 0], buf[2 * head + 1]);
 
 		if (INTEL_GEN(engine->i915) >= 12)
 			promote = gen12_csb_parse(execlists, buf + 2 * head);
@@ -2262,10 +2255,9 @@ static noinline void preempt_reset(struct intel_engine_cs *engine)
 	/* Mark this tasklet as disabled to avoid waiting for it to complete */
 	tasklet_disable_nosync(&engine->execlists.tasklet);
 
-	GEM_TRACE("%s: preempt timeout %lu+%ums\n",
-		  engine->name,
-		  READ_ONCE(engine->props.preempt_timeout_ms),
-		  jiffies_to_msecs(jiffies - engine->execlists.preempt.expires));
+	ENGINE_TRACE(engine, "preempt timeout %lu+%ums\n",
+		     READ_ONCE(engine->props.preempt_timeout_ms),
+		     jiffies_to_msecs(jiffies - engine->execlists.preempt.expires));
 	intel_engine_reset(engine, "preemption time out");
 
 	tasklet_enable(&engine->execlists.tasklet);
@@ -2971,8 +2963,8 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	unsigned long flags;
 
-	GEM_TRACE("%s: depth<-%d\n", engine->name,
-		  atomic_read(&execlists->tasklet.count));
+	ENGINE_TRACE(engine, "depth<-%d\n",
+		     atomic_read(&execlists->tasklet.count));
 
 	/*
 	 * Prevent request submission to the hardware until we have
@@ -3134,8 +3126,8 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 	restore_default_state(ce, engine);
 
 out_replay:
-	GEM_TRACE("%s replay {head:%04x, tail:%04x}\n",
-		  engine->name, ce->ring->head, ce->ring->tail);
+	ENGINE_TRACE(engine, "replay {head:%04x, tail:%04x}\n",
+		     ce->ring->head, ce->ring->tail);
 	intel_ring_update_space(ce->ring);
 	__execlists_reset_reg_state(ce, engine);
 	__execlists_update_reg_state(ce, engine);
@@ -3151,7 +3143,7 @@ static void execlists_reset(struct intel_engine_cs *engine, bool stalled)
 {
 	unsigned long flags;
 
-	GEM_TRACE("%s\n", engine->name);
+	ENGINE_TRACE(engine, "\n");
 
 	spin_lock_irqsave(&engine->active.lock, flags);
 
@@ -3172,7 +3164,7 @@ static void execlists_cancel_requests(struct intel_engine_cs *engine)
 	struct rb_node *rb;
 	unsigned long flags;
 
-	GEM_TRACE("%s\n", engine->name);
+	ENGINE_TRACE(engine, "\n");
 
 	/*
 	 * Before we call engine->cancel_requests(), we should have exclusive
@@ -3259,8 +3251,8 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
 	if (__tasklet_enable(&execlists->tasklet))
 		/* And kick in case we missed a new request submission. */
 		tasklet_hi_schedule(&execlists->tasklet);
-	GEM_TRACE("%s: depth->%d\n", engine->name,
-		  atomic_read(&execlists->tasklet.count));
+	ENGINE_TRACE(engine, "depth->%d\n",
+		     atomic_read(&execlists->tasklet.count));
 }
 
 static int gen8_emit_bb_start(struct i915_request *rq,
@@ -4309,10 +4301,9 @@ static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
 		mask = ve->siblings[0]->mask;
 	}
 
-	GEM_TRACE("%s: rq=%llx:%lld, mask=%x, prio=%d\n",
-		  ve->base.name,
-		  rq->fence.context, rq->fence.seqno,
-		  mask, ve->base.execlists.queue_priority_hint);
+	ENGINE_TRACE(&ve->base, "rq=%llx:%lld, mask=%x, prio=%d\n",
+		     rq->fence.context, rq->fence.seqno,
+		     mask, ve->base.execlists.queue_priority_hint);
 
 	return mask;
 }
@@ -4403,10 +4394,9 @@ static void virtual_submit_request(struct i915_request *rq)
 	struct i915_request *old;
 	unsigned long flags;
 
-	GEM_TRACE("%s: rq=%llx:%lld\n",
-		  ve->base.name,
-		  rq->fence.context,
-		  rq->fence.seqno);
+	ENGINE_TRACE(&ve->base, "rq=%llx:%lld\n",
+		     rq->fence.context,
+		     rq->fence.seqno);
 
 	GEM_BUG_ON(ve->base.submit_request != virtual_submit_request);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 8408cb84e52c..f5b2e7c7e6c8 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1089,7 +1089,7 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
 	bool uses_guc = intel_engine_in_guc_submission_mode(engine);
 	int ret;
 
-	GEM_TRACE("%s flags=%lx\n", engine->name, gt->reset.flags);
+	ENGINE_TRACE(engine, "flags=%lx\n", gt->reset.flags);
 	GEM_BUG_ON(!test_bit(I915_RESET_ENGINE + engine->id, &gt->reset.flags));
 
 	if (!intel_engine_pm_get_if_awake(engine))
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 5c22ca6f998a..32334476cd77 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -632,8 +632,8 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	struct intel_ring *ring = engine->legacy.ring;
 	int ret = 0;
 
-	GEM_TRACE("%s: ring:{HEAD:%04x, TAIL:%04x}\n",
-		  engine->name, ring->head, ring->tail);
+	ENGINE_TRACE(engine, "ring:{HEAD:%04x, TAIL:%04x}\n",
+		     ring->head, ring->tail);
 
 	intel_uncore_forcewake_get(engine->uncore, FORCEWAKE_ALL);
 
@@ -746,10 +746,10 @@ static void reset_prepare(struct intel_engine_cs *engine)
 	 *
 	 * FIXME: Wa for more modern gens needs to be validated
 	 */
-	GEM_TRACE("%s\n", engine->name);
+	ENGINE_TRACE(engine, "\n");
 
 	if (intel_engine_stop_cs(engine))
-		GEM_TRACE("%s: timed out on STOP_RING\n", engine->name);
+		ENGINE_TRACE(engine, "timed out on STOP_RING\n");
 
 	intel_uncore_write_fw(uncore,
 			      RING_HEAD(base),
@@ -765,8 +765,7 @@ static void reset_prepare(struct intel_engine_cs *engine)
 
 	/* Check acts as a post */
 	if (intel_uncore_read_fw(uncore, RING_HEAD(base)))
-		GEM_TRACE("%s: ring head [%x] not parked\n",
-			  engine->name,
+		ENGINE_TRACE(engine, "ring head [%x] not parked\n",
 			  intel_uncore_read_fw(uncore, RING_HEAD(base)));
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 172220e83079..af04ed6e48d9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -375,7 +375,7 @@ static void guc_reset_prepare(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 
-	GEM_TRACE("%s\n", engine->name);
+	ENGINE_TRACE(engine, "\n");
 
 	/*
 	 * Prevent request submission to the hardware until we have
@@ -434,7 +434,7 @@ static void guc_cancel_requests(struct intel_engine_cs *engine)
 	struct rb_node *rb;
 	unsigned long flags;
 
-	GEM_TRACE("%s\n", engine->name);
+	ENGINE_TRACE(engine, "\n");
 
 	/*
 	 * Before we call engine->cancel_requests(), we should have exclusive
@@ -495,8 +495,8 @@ static void guc_reset_finish(struct intel_engine_cs *engine)
 		/* And kick in case we missed a new request submission. */
 		tasklet_hi_schedule(&execlists->tasklet);
 
-	GEM_TRACE("%s: depth->%d\n", engine->name,
-		  atomic_read(&execlists->tasklet.count));
+	ENGINE_TRACE(engine, "depth->%d\n",
+		     atomic_read(&execlists->tasklet.count));
 }
 
 /*
-- 
2.24.0

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
