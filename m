Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ADE11C66F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 08:35:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B789B6EC6F;
	Thu, 12 Dec 2019 07:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51EE06EC6F
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 07:35:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 23:35:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; d="scan'208";a="413787301"
Received: from linux.fm.intel.com ([10.1.27.42])
 by fmsmga005.fm.intel.com with ESMTP; 11 Dec 2019 23:35:22 -0800
From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 23:35:22 -0800
Message-Id: <20191212073522.27785-2-venkata.s.dhanalakota@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20191212073522.27785-1-venkata.s.dhanalakota@intel.com>
References: <20191212073522.27785-1-venkata.s.dhanalakota@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Tag GEM_TRACE with device name
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
Cc: chris.p.wilson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adding device name to trace makes debugging easier,
when dealing with multiple gpus.

Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |  4 +-
 drivers/gpu/drm/i915/gt/intel_context.c       | 11 ++--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  7 +--
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  6 +--
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         | 12 ++---
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 50 ++++++++++++-------
 drivers/gpu/drm/i915/gt/intel_reset.c         | 23 +++++----
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 11 ++--
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  6 ++-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  8 +--
 drivers/gpu/drm/i915/i915_request.c           | 15 ++++--
 11 files changed, 92 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index f88ee1317bb4..037f2eb0b77b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -13,7 +13,7 @@
 
 void i915_gem_suspend(struct drm_i915_private *i915)
 {
-	GEM_TRACE("\n");
+	GEM_TRACE("[%s]\n", dev_name(i915->drm.dev));
 
 	intel_wakeref_auto(&i915->ggtt.userfault_wakeref, 0);
 	flush_workqueue(i915->wq);
@@ -99,7 +99,7 @@ void i915_gem_suspend_late(struct drm_i915_private *i915)
 
 void i915_gem_resume(struct drm_i915_private *i915)
 {
-	GEM_TRACE("\n");
+	GEM_TRACE("[%s]\n", dev_name(i915->drm.dev));
 
 	intel_uncore_forcewake_get(&i915->uncore, FORCEWAKE_ALL);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 61c39e943f69..5b3f05b29365 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -68,8 +68,9 @@ int __intel_context_do_pin(struct intel_context *ce)
 		if (err)
 			goto err;
 
-		GEM_TRACE("%s context:%llx pin ring:{head:%04x, tail:%04x}\n",
-			  ce->engine->name, ce->timeline->fence_context,
+		GEM_TRACE("[%s] %s context:%llx pin ring:{head:%04x, tail:%04x}\n",
+			  dev_name(ce->engine->i915->drm.dev), ce->engine->name,
+			  ce->timeline->fence_context,
 			  ce->ring->head, ce->ring->tail);
 
 		i915_gem_context_get(ce->gem_context); /* for ctx->ppgtt */
@@ -98,7 +99,8 @@ void intel_context_unpin(struct intel_context *ce)
 	mutex_lock_nested(&ce->pin_mutex, SINGLE_DEPTH_NESTING);
 
 	if (likely(atomic_dec_and_test(&ce->pin_count))) {
-		GEM_TRACE("%s context:%llx retire\n",
+		GEM_TRACE("[%s] %s context:%llx retire\n",
+			  dev_name(ce->engine->i915->drm.dev),
 			  ce->engine->name, ce->timeline->fence_context);
 
 		ce->ops->unpin(ce);
@@ -141,7 +143,8 @@ static void __intel_context_retire(struct i915_active *active)
 {
 	struct intel_context *ce = container_of(active, typeof(*ce), active);
 
-	GEM_TRACE("%s context:%llx retire\n",
+	GEM_TRACE("[%s] %s context:%llx retire\n",
+		  dev_name(ce->engine->i915->drm.dev),
 		  ce->engine->name, ce->timeline->fence_context);
 
 	set_bit(CONTEXT_VALID_BIT, &ce->flags);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 49473c25916c..a25947e8026f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -912,7 +912,7 @@ int intel_engine_stop_cs(struct intel_engine_cs *engine)
 	if (INTEL_GEN(engine->i915) < 3)
 		return -ENODEV;
 
-	GEM_TRACE("%s\n", engine->name);
+	GEM_TRACE("[%s] %s\n",dev_name(engine->i915->drm.dev), engine->name);
 
 	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
 
@@ -921,7 +921,8 @@ int intel_engine_stop_cs(struct intel_engine_cs *engine)
 					 mode, MODE_IDLE, MODE_IDLE,
 					 1000, stop_timeout(engine),
 					 NULL)) {
-		GEM_TRACE("%s: timed out on STOP_RING -> IDLE\n", engine->name);
+		GEM_TRACE("[%s] %s: timed out on STOP_RING -> IDLE\n",
+			  dev_name(engine->i915->drm.dev), engine->name);
 		err = -ETIMEDOUT;
 	}
 
@@ -933,7 +934,7 @@ int intel_engine_stop_cs(struct intel_engine_cs *engine)
 
 void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine)
 {
-	GEM_TRACE("%s\n", engine->name);
+	GEM_TRACE("[%s] %s\n",dev_name(engine->i915->drm.dev), engine->name);
 
 	ENGINE_WRITE_FW(engine, RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 889eb37e386a..e355b29eb21d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -21,7 +21,7 @@ static int __engine_unpark(struct intel_wakeref *wf)
 		container_of(wf, typeof(*engine), wakeref);
 	void *map;
 
-	GEM_TRACE("%s\n", engine->name);
+	GEM_TRACE("[%s] %s\n", dev_name(engine->i915->drm.dev), engine->name);
 
 	intel_gt_pm_get(engine->gt);
 
@@ -80,7 +80,7 @@ __queue_and_release_pm(struct i915_request *rq,
 {
 	struct intel_gt_timelines *timelines = &engine->gt->timelines;
 
-	GEM_TRACE("%s\n", engine->name);
+	GEM_TRACE("[%s] %s\n", dev_name(engine->i915->drm.dev), engine->name);
 
 	/*
 	 * We have to serialise all potential retirement paths with our
@@ -204,7 +204,7 @@ static int __engine_park(struct intel_wakeref *wf)
 	if (!switch_to_kernel_context(engine))
 		return -EBUSY;
 
-	GEM_TRACE("%s\n", engine->name);
+	GEM_TRACE("[%s] %s\n", dev_name(engine->i915->drm.dev), engine->name);
 
 	call_idle_barriers(engine); /* cleanup after wedging */
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index ecde67a75e32..e8ebb38fdd38 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -43,7 +43,7 @@ static int __gt_unpark(struct intel_wakeref *wf)
 	struct intel_gt *gt = container_of(wf, typeof(*gt), wakeref);
 	struct drm_i915_private *i915 = gt->i915;
 
-	GEM_TRACE("\n");
+	GEM_TRACE("[%s]\n", dev_name(i915->drm.dev));
 
 	i915_globals_unpark();
 
@@ -76,7 +76,7 @@ static int __gt_park(struct intel_wakeref *wf)
 	intel_wakeref_t wakeref = fetch_and_zero(&gt->awake);
 	struct drm_i915_private *i915 = gt->i915;
 
-	GEM_TRACE("\n");
+	GEM_TRACE("[%s]\n", dev_name(i915->drm.dev));
 
 	intel_gt_park_requests(gt);
 
@@ -188,7 +188,7 @@ int intel_gt_resume(struct intel_gt *gt)
 	enum intel_engine_id id;
 	int err = 0;
 
-	GEM_TRACE("\n");
+	GEM_TRACE("[%s] \n", dev_name(gt->i915->drm.dev));
 
 	/*
 	 * After resume, we may need to poke into the pinned kernel
@@ -301,19 +301,19 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 
 	intel_gt_sanitize(gt, false);
 
-	GEM_TRACE("\n");
+	GEM_TRACE("[%s]\n", dev_name(gt->i915->drm.dev));
 }
 
 void intel_gt_runtime_suspend(struct intel_gt *gt)
 {
 	intel_uc_runtime_suspend(&gt->uc);
 
-	GEM_TRACE("\n");
+	GEM_TRACE("[%s]\n", dev_name(gt->i915->drm.dev));
 }
 
 int intel_gt_runtime_resume(struct intel_gt *gt)
 {
-	GEM_TRACE("\n");
+	GEM_TRACE("[%s]\n", dev_name(gt->i915->drm.dev));
 
 	intel_gt_init_swizzling(gt);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 929f6bae4eba..094e42600636 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1069,8 +1069,9 @@ static void reset_active(struct i915_request *rq,
 	 * remain correctly ordered. And we defer to __i915_request_submit()
 	 * so that all asynchronous waits are correctly handled.
 	 */
-	GEM_TRACE("%s(%s): { rq=%llx:%lld }\n",
-		  __func__, engine->name, rq->fence.context, rq->fence.seqno);
+	GEM_TRACE("%s [%s] (%s): { rq=%llx:%lld }\n",
+		  __func__, dev_name(engine->i915->drm.dev), engine->name,
+		  rq->fence.context, rq->fence.seqno);
 
 	/* On resubmission of the active request, payload will be scrubbed */
 	if (i915_request_completed(rq))
@@ -1274,7 +1275,8 @@ trace_ports(const struct intel_engine_execlists *execlists,
 	if (!ports[0])
 		return;
 
-	GEM_TRACE("%s: %s { %llx:%lld%s, %llx:%lld }\n",
+	GEM_TRACE("[%s]%s: %s { %llx:%lld%s, %llx:%lld }\n",
+		  dev_name(engine->i915->drm.dev),
 		  engine->name, msg,
 		  ports[0]->fence.context,
 		  ports[0]->fence.seqno,
@@ -1700,7 +1702,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	last = last_active(execlists);
 	if (last) {
 		if (need_preempt(engine, last, rb)) {
-			GEM_TRACE("%s: preempting last=%llx:%lld, prio=%d, hint=%d\n",
+			GEM_TRACE("[%s] %s: preempting last=%llx:%lld, prio=%d, hint=%d\n",
+				  dev_name(engine->i915->drm.dev),
 				  engine->name,
 				  last->fence.context,
 				  last->fence.seqno,
@@ -1735,7 +1738,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			last = NULL;
 		} else if (need_timeslice(engine, last) &&
 			   timer_expired(&engine->execlists.timer)) {
-			GEM_TRACE("%s: expired last=%llx:%lld, prio=%d, hint=%d\n",
+			GEM_TRACE("[%s] %s: expired last=%llx:%lld, prio=%d, hint=%d\n",
+				  dev_name(engine->i915->drm.dev),
 				  engine->name,
 				  last->fence.context,
 				  last->fence.seqno,
@@ -1817,7 +1821,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				return; /* leave this for another */
 			}
 
-			GEM_TRACE("%s: virtual rq=%llx:%lld%s, new engine? %s\n",
+			GEM_TRACE("[%s] %s: virtual rq=%llx:%lld%s, new engine? %s\n",
+				  dev_name(engine->i915->drm.dev),
 				  engine->name,
 				  rq->fence.context,
 				  rq->fence.seqno,
@@ -1980,7 +1985,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * interrupt for secondary ports).
 	 */
 	execlists->queue_priority_hint = queue_prio(execlists);
-	GEM_TRACE("%s: queue_priority_hint:%d, submit:%s\n",
+	GEM_TRACE("[%s] %s: queue_priority_hint:%d, submit:%s\n",
+		  dev_name(engine->i915->drm.dev),
 		  engine->name, execlists->queue_priority_hint,
 		  yesno(submit));
 
@@ -2131,7 +2137,9 @@ static void process_csb(struct intel_engine_cs *engine)
 	 */
 	head = execlists->csb_head;
 	tail = READ_ONCE(*execlists->csb_write);
-	GEM_TRACE("%s cs-irq head=%d, tail=%d\n", engine->name, head, tail);
+	GEM_TRACE("[%s] %s cs-irq head=%d, tail=%d\n",
+		  dev_name(engine->i915->drm.dev), engine->name,
+		  head, tail);
 	if (unlikely(head == tail))
 		return;
 
@@ -2169,8 +2177,8 @@ static void process_csb(struct intel_engine_cs *engine)
 		 * status notifier.
 		 */
 
-		GEM_TRACE("%s csb[%d]: status=0x%08x:0x%08x\n",
-			  engine->name, head,
+		GEM_TRACE("[%s] %s csb[%d]: status=0x%08x:0x%08x\n",
+			  dev_name(engine->i915->drm.dev), engine->name, head,
 			  buf[2 * head + 0], buf[2 * head + 1]);
 
 		if (INTEL_GEN(engine->i915) >= 12)
@@ -2262,7 +2270,8 @@ static noinline void preempt_reset(struct intel_engine_cs *engine)
 	/* Mark this tasklet as disabled to avoid waiting for it to complete */
 	tasklet_disable_nosync(&engine->execlists.tasklet);
 
-	GEM_TRACE("%s: preempt timeout %lu+%ums\n",
+	GEM_TRACE("[%s] %s: preempt timeout %lu+%ums\n",
+		  dev_name(engine->i915->drm.dev),
 		  engine->name,
 		  READ_ONCE(engine->props.preempt_timeout_ms),
 		  jiffies_to_msecs(jiffies - engine->execlists.preempt.expires));
@@ -2971,8 +2980,8 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	unsigned long flags;
 
-	GEM_TRACE("%s: depth<-%d\n", engine->name,
-		  atomic_read(&execlists->tasklet.count));
+	GEM_TRACE("[%s] %s: depth<-%d\n", dev_name(engine->i915->drm.dev),
+		  engine->name, atomic_read(&execlists->tasklet.count));
 
 	/*
 	 * Prevent request submission to the hardware until we have
@@ -3134,7 +3143,8 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 	restore_default_state(ce, engine);
 
 out_replay:
-	GEM_TRACE("%s replay {head:%04x, tail:%04x}\n",
+	GEM_TRACE("[%s] %s replay {head:%04x, tail:%04x}\n",
+		  dev_name(engine->i915->drm.dev),
 		  engine->name, ce->ring->head, ce->ring->tail);
 	intel_ring_update_space(ce->ring);
 	__execlists_reset_reg_state(ce, engine);
@@ -3151,7 +3161,7 @@ static void execlists_reset(struct intel_engine_cs *engine, bool stalled)
 {
 	unsigned long flags;
 
-	GEM_TRACE("%s\n", engine->name);
+	GEM_TRACE("[%s] %s\n", dev_name(engine->i915->drm.dev), engine->name);
 
 	spin_lock_irqsave(&engine->active.lock, flags);
 
@@ -3172,7 +3182,7 @@ static void execlists_cancel_requests(struct intel_engine_cs *engine)
 	struct rb_node *rb;
 	unsigned long flags;
 
-	GEM_TRACE("%s\n", engine->name);
+	GEM_TRACE("[%s] %s\n", dev_name(engine->i915->drm.dev), engine->name);
 
 	/*
 	 * Before we call engine->cancel_requests(), we should have exclusive
@@ -3259,7 +3269,7 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
 	if (__tasklet_enable(&execlists->tasklet))
 		/* And kick in case we missed a new request submission. */
 		tasklet_hi_schedule(&execlists->tasklet);
-	GEM_TRACE("%s: depth->%d\n", engine->name,
+	GEM_TRACE("[%s] %s: depth->%d\n", dev_name(engine->i915->drm.dev), engine->name,
 		  atomic_read(&execlists->tasklet.count));
 }
 
@@ -4309,7 +4319,8 @@ static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
 		mask = ve->siblings[0]->mask;
 	}
 
-	GEM_TRACE("%s: rq=%llx:%lld, mask=%x, prio=%d\n",
+	GEM_TRACE("[%s] %s: rq=%llx:%lld, mask=%x, prio=%d\n",
+		  dev_name(ve->base.i915->drm.dev),
 		  ve->base.name,
 		  rq->fence.context, rq->fence.seqno,
 		  mask, ve->base.execlists.queue_priority_hint);
@@ -4403,7 +4414,8 @@ static void virtual_submit_request(struct i915_request *rq)
 	struct i915_request *old;
 	unsigned long flags;
 
-	GEM_TRACE("%s: rq=%llx:%lld\n",
+	GEM_TRACE("[%s] %s: rq=%llx:%lld\n",
+		  dev_name(ve->base.i915->drm.dev),
 		  ve->base.name,
 		  rq->fence.context,
 		  rq->fence.seqno);
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 8408cb84e52c..fbf503d5d1ef 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -126,7 +126,8 @@ static void context_mark_innocent(struct i915_gem_context *ctx)
 
 void __i915_request_reset(struct i915_request *rq, bool guilty)
 {
-	GEM_TRACE("%s rq=%llx:%lld, guilty? %s\n",
+	GEM_TRACE("[%s] %s rq=%llx:%lld, guilty? %s\n",
+		  dev_name(rq->engine->i915->drm.dev),
 		  rq->engine->name,
 		  rq->fence.context,
 		  rq->fence.seqno,
@@ -604,7 +605,8 @@ int __intel_gt_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 	 */
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 	for (retry = 0; ret == -ETIMEDOUT && retry < retries; retry++) {
-		GEM_TRACE("engine_mask=%x\n", engine_mask);
+		GEM_TRACE("[%s] engine_mask=%x\n", dev_name(gt->i915->drm.dev),
+			  engine_mask);
 		preempt_disable();
 		ret = reset(gt, engine_mask, retry);
 		preempt_enable();
@@ -762,7 +764,8 @@ static void nop_submit_request(struct i915_request *request)
 	struct intel_engine_cs *engine = request->engine;
 	unsigned long flags;
 
-	GEM_TRACE("%s fence %llx:%lld -> -EIO\n",
+	GEM_TRACE("[%s] %s fence %llx:%lld -> -EIO\n",
+		  dev_name(engine->i915->drm.dev),
 		  engine->name, request->fence.context, request->fence.seqno);
 	dma_fence_set_error(&request->fence, -EIO);
 
@@ -790,7 +793,7 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
 			intel_engine_dump(engine, &p, "%s\n", engine->name);
 	}
 
-	GEM_TRACE("start\n");
+	GEM_TRACE("[%s] start\n", dev_name(gt->i915->drm.dev));
 
 	/*
 	 * First, stop submission to hw, but do not yet complete requests by
@@ -820,7 +823,7 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
 
 	reset_finish(gt, awake);
 
-	GEM_TRACE("end\n");
+	GEM_TRACE("[%s] end\n", dev_name(gt->i915->drm.dev));
 }
 
 void intel_gt_set_wedged(struct intel_gt *gt)
@@ -846,7 +849,7 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
 	if (test_bit(I915_WEDGED_ON_INIT, &gt->reset.flags))
 		return false;
 
-	GEM_TRACE("start\n");
+	GEM_TRACE("[%s] start\n", dev_name(gt->i915->drm.dev));
 
 	/*
 	 * Before unwedging, make sure that all pending operations
@@ -908,7 +911,7 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
 	 */
 	intel_engines_reset_default_submission(gt);
 
-	GEM_TRACE("end\n");
+	GEM_TRACE("[%s] end\n", dev_name(gt->i915->drm.dev));
 
 	smp_mb__before_atomic(); /* complete takeover before enabling execbuf */
 	clear_bit(I915_WEDGED, &gt->reset.flags);
@@ -983,7 +986,8 @@ void intel_gt_reset(struct intel_gt *gt,
 	intel_engine_mask_t awake;
 	int ret;
 
-	GEM_TRACE("flags=%lx\n", gt->reset.flags);
+	GEM_TRACE("[%s] flags=%lx\n", dev_name(gt->i915->drm.dev),
+		  gt->reset.flags);
 
 	might_sleep();
 	GEM_BUG_ON(!test_bit(I915_RESET_BACKOFF, &gt->reset.flags));
@@ -1089,7 +1093,8 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
 	bool uses_guc = intel_engine_in_guc_submission_mode(engine);
 	int ret;
 
-	GEM_TRACE("%s flags=%lx\n", engine->name, gt->reset.flags);
+	GEM_TRACE("[%s] %s flags=%lx\n", dev_name(engine->i915->drm.dev),
+		  engine->name, gt->reset.flags);
 	GEM_BUG_ON(!test_bit(I915_RESET_ENGINE + engine->id, &gt->reset.flags));
 
 	if (!intel_engine_pm_get_if_awake(engine))
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 5c22ca6f998a..90cf5eedc228 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -632,7 +632,8 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	struct intel_ring *ring = engine->legacy.ring;
 	int ret = 0;
 
-	GEM_TRACE("%s: ring:{HEAD:%04x, TAIL:%04x}\n",
+	GEM_TRACE("[%s] %s: ring:{HEAD:%04x, TAIL:%04x}\n",
+		  dev_name(engine->i915->drm.dev),
 		  engine->name, ring->head, ring->tail);
 
 	intel_uncore_forcewake_get(engine->uncore, FORCEWAKE_ALL);
@@ -746,10 +747,11 @@ static void reset_prepare(struct intel_engine_cs *engine)
 	 *
 	 * FIXME: Wa for more modern gens needs to be validated
 	 */
-	GEM_TRACE("%s\n", engine->name);
+	GEM_TRACE("[%s] %s\n", dev_name(engine->i915->drm.dev), engine->name);
 
 	if (intel_engine_stop_cs(engine))
-		GEM_TRACE("%s: timed out on STOP_RING\n", engine->name);
+		GEM_TRACE("[%s] %s: timed out on STOP_RING\n", dev_name(engine->i915->drm.dev),
+			  engine->name);
 
 	intel_uncore_write_fw(uncore,
 			      RING_HEAD(base),
@@ -765,7 +767,8 @@ static void reset_prepare(struct intel_engine_cs *engine)
 
 	/* Check acts as a post */
 	if (intel_uncore_read_fw(uncore, RING_HEAD(base)))
-		GEM_TRACE("%s: ring head [%x] not parked\n",
+		GEM_TRACE("[%s] %s: ring head [%x] not parked\n",
+			  dev_name(engine->i915->drm.dev),
 			  engine->name,
 			  intel_uncore_read_fw(uncore, RING_HEAD(base)));
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index d155c9374453..b6cd26eaca08 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -678,7 +678,8 @@ static int active_request_put(struct i915_request *rq)
 		return 0;
 
 	if (i915_request_wait(rq, 0, 5 * HZ) < 0) {
-		GEM_TRACE("%s timed out waiting for completion of fence %llx:%lld\n",
+		GEM_TRACE("[%s] %s timed out waiting for completion of fence %llx:%lld\n",
+			  dev_name(rq->engine->i915->drm.dev),
 			  rq->engine->name,
 			  rq->fence.context,
 			  rq->fence.seqno);
@@ -1568,7 +1569,8 @@ static int __igt_atomic_reset_engine(struct intel_engine_cs *engine,
 	struct tasklet_struct * const t = &engine->execlists.tasklet;
 	int err;
 
-	GEM_TRACE("i915_reset_engine(%s:%s) under %s\n",
+	GEM_TRACE("[%s] i915_reset_engine(%s:%s) under %s\n",
+		  dev_name(engine->i915->drm.dev),
 		  engine->name, mode, p->name);
 
 	tasklet_disable(t);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 172220e83079..e184746dc370 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -375,7 +375,7 @@ static void guc_reset_prepare(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 
-	GEM_TRACE("%s\n", engine->name);
+	GEM_TRACE("[%s] %s\n", dev_name(engine->i915->drm.dev), engine->name);
 
 	/*
 	 * Prevent request submission to the hardware until we have
@@ -434,7 +434,7 @@ static void guc_cancel_requests(struct intel_engine_cs *engine)
 	struct rb_node *rb;
 	unsigned long flags;
 
-	GEM_TRACE("%s\n", engine->name);
+	GEM_TRACE("[%s] %s\n", dev_name(engine->i915->drm.dev), engine->name);
 
 	/*
 	 * Before we call engine->cancel_requests(), we should have exclusive
@@ -495,8 +495,8 @@ static void guc_reset_finish(struct intel_engine_cs *engine)
 		/* And kick in case we missed a new request submission. */
 		tasklet_hi_schedule(&execlists->tasklet);
 
-	GEM_TRACE("%s: depth->%d\n", engine->name,
-		  atomic_read(&execlists->tasklet.count));
+	GEM_TRACE("[%s] %s: depth->%d\n", dev_name(engine->i915->drm.dev),
+		  engine->name, atomic_read(&execlists->tasklet.count));
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index a6238c626a16..14242a14d9f9 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -223,7 +223,8 @@ bool i915_request_retire(struct i915_request *rq)
 	if (!i915_request_completed(rq))
 		return false;
 
-	GEM_TRACE("%s fence %llx:%lld, current %d\n",
+	GEM_TRACE("[%s] %s fence %llx:%lld, current %d\n",
+		  dev_name(rq->engine->i915->drm.dev),
 		  rq->engine->name,
 		  rq->fence.context, rq->fence.seqno,
 		  hwsp_seqno(rq));
@@ -287,7 +288,8 @@ void i915_request_retire_upto(struct i915_request *rq)
 	struct intel_timeline * const tl = i915_request_timeline(rq);
 	struct i915_request *tmp;
 
-	GEM_TRACE("%s fence %llx:%lld, current %d\n",
+	GEM_TRACE("[%s] %s fence %llx:%lld, current %d\n",
+		  dev_name(rq->engine->i915->drm.dev),
 		  rq->engine->name,
 		  rq->fence.context, rq->fence.seqno,
 		  hwsp_seqno(rq));
@@ -351,7 +353,8 @@ bool __i915_request_submit(struct i915_request *request)
 	struct intel_engine_cs *engine = request->engine;
 	bool result = false;
 
-	GEM_TRACE("%s fence %llx:%lld, current %d\n",
+	GEM_TRACE("[%s] %s fence %llx:%lld, current %d\n",
+		  dev_name(engine->i915->drm.dev),
 		  engine->name,
 		  request->fence.context, request->fence.seqno,
 		  hwsp_seqno(request));
@@ -443,7 +446,8 @@ void __i915_request_unsubmit(struct i915_request *request)
 {
 	struct intel_engine_cs *engine = request->engine;
 
-	GEM_TRACE("%s fence %llx:%lld, current %d\n",
+	GEM_TRACE("[%s] %s fence %llx:%lld, current %d\n",
+		  dev_name(engine->i915->drm.dev),
 		  engine->name,
 		  request->fence.context, request->fence.seqno,
 		  hwsp_seqno(request));
@@ -1261,7 +1265,8 @@ struct i915_request *__i915_request_commit(struct i915_request *rq)
 	struct intel_ring *ring = rq->ring;
 	u32 *cs;
 
-	GEM_TRACE("%s fence %llx:%lld\n",
+	GEM_TRACE("[%s] %s fence %llx:%lld\n",
+		  dev_name(engine->i915->drm.dev),
 		  engine->name, rq->fence.context, rq->fence.seqno);
 
 	/*
-- 
2.21.0.5.gaeb582a983

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
