Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF512F4188
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 03:14:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCDBF89B84;
	Wed, 13 Jan 2021 02:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64D4489B95
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 02:14:00 +0000 (UTC)
IronPort-SDR: YBtxJmoU8kcH9p+7XL5djrSpuYxyyFwluCkUoLSVItDBOI5rYHfFrdEOJV5+97odMWwzSPwlqe
 OxupdH8ketww==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="165815286"
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="165815286"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 18:14:00 -0800
IronPort-SDR: 0/MIrEvZBM+Ze7YjHyOR92I+pF7WTByKk9SBO99pMhcYsX9OI8yjW6WpN1PyF9h2wMtK+zXTgJ
 pNQ3FcEMrkQQ==
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="464739726"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 18:13:59 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Jan 2021 18:12:33 -0800
Message-Id: <20210113021236.8164-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210113021236.8164-1-daniele.ceraolospurio@intel.com>
References: <20210113021236.8164-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/guc: Delete GuC code unused in
 future patches
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matthew Brost <matthew.brost@intel.com>

Delete GuC code unused in future patches that rewrite the GuC interface
to work with the new firmware. Most of the code deleted relates to
workqueues or execlist port. The code is safe to remove because we still
don't allow GuC submission to be enabled, even when overriding the
modparam, so it currently can't be reached.

The defines + structs for the process descriptor and workqueue remain.
Although the new GuC interface does not require either of these for the
normal submission path multi-lrc submission does. The usage of the
process descriptor and workqueue for multi-lrc will be quite different
from the code that is deleted in this patch. A future patch will
implement multi-lrc submission.

v2: add a code in the commit message about the code being safe to
remove (Chris)

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  16 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   7 -
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 170 +-----------------
 3 files changed, 3 insertions(+), 190 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 2a343a977987..4545e90e3bf1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -579,20 +579,8 @@ int intel_guc_reset_engine(struct intel_guc *guc,
  */
 int intel_guc_resume(struct intel_guc *guc)
 {
-	u32 action[] = {
-		INTEL_GUC_ACTION_EXIT_S_STATE,
-		GUC_POWER_D0,
-	};
-
-	/*
-	 * If GuC communication is enabled but submission is not supported,
-	 * we do not need to resume the GuC but we do need to enable the
-	 * GuC communication on resume (above).
-	 */
-	if (!intel_guc_submission_is_used(guc) || !intel_guc_is_ready(guc))
-		return 0;
-
-	return intel_guc_send(guc, action, ARRAY_SIZE(action));
+	/* XXX: to be implemented with submission interface rework */
+	return 0;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index e84ab67b317d..bc2ba7d0626c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -47,13 +47,6 @@ struct intel_guc {
 	struct i915_vma *stage_desc_pool;
 	void *stage_desc_pool_vaddr;
 
-	struct i915_vma *workqueue;
-	void *workqueue_vaddr;
-	spinlock_t wq_lock;
-
-	struct i915_vma *proc_desc;
-	void *proc_desc_vaddr;
-
 	/* Control params for fw initialization */
 	u32 params[GUC_CTL_MAX_DWORDS];
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 694ee424b4ee..d4f88d2379e9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -67,58 +67,6 @@ static struct guc_stage_desc *__get_stage_desc(struct intel_guc *guc, u32 id)
 	return &base[id];
 }
 
-static int guc_workqueue_create(struct intel_guc *guc)
-{
-	return intel_guc_allocate_and_map_vma(guc, GUC_WQ_SIZE, &guc->workqueue,
-					      &guc->workqueue_vaddr);
-}
-
-static void guc_workqueue_destroy(struct intel_guc *guc)
-{
-	i915_vma_unpin_and_release(&guc->workqueue, I915_VMA_RELEASE_MAP);
-}
-
-/*
- * Initialise the process descriptor shared with the GuC firmware.
- */
-static int guc_proc_desc_create(struct intel_guc *guc)
-{
-	const u32 size = PAGE_ALIGN(sizeof(struct guc_process_desc));
-
-	return intel_guc_allocate_and_map_vma(guc, size, &guc->proc_desc,
-					      &guc->proc_desc_vaddr);
-}
-
-static void guc_proc_desc_destroy(struct intel_guc *guc)
-{
-	i915_vma_unpin_and_release(&guc->proc_desc, I915_VMA_RELEASE_MAP);
-}
-
-static void guc_proc_desc_init(struct intel_guc *guc)
-{
-	struct guc_process_desc *desc;
-
-	desc = memset(guc->proc_desc_vaddr, 0, sizeof(*desc));
-
-	/*
-	 * XXX: pDoorbell and WQVBaseAddress are pointers in process address
-	 * space for ring3 clients (set them as in mmap_ioctl) or kernel
-	 * space for kernel clients (map on demand instead? May make debug
-	 * easier to have it mapped).
-	 */
-	desc->wq_base_addr = 0;
-	desc->db_base_addr = 0;
-
-	desc->wq_size_bytes = GUC_WQ_SIZE;
-	desc->wq_status = WQ_STATUS_ACTIVE;
-	desc->priority = GUC_CLIENT_PRIORITY_KMD_NORMAL;
-}
-
-static void guc_proc_desc_fini(struct intel_guc *guc)
-{
-	memset(guc->proc_desc_vaddr, 0, sizeof(struct guc_process_desc));
-}
-
 static int guc_stage_desc_pool_create(struct intel_guc *guc)
 {
 	u32 size = PAGE_ALIGN(sizeof(struct guc_stage_desc) *
@@ -154,8 +102,6 @@ static void guc_stage_desc_init(struct intel_guc *guc)
 	desc->stage_id = 0;
 	desc->priority = GUC_CLIENT_PRIORITY_KMD_NORMAL;
 
-	desc->process_desc = intel_guc_ggtt_offset(guc, guc->proc_desc);
-	desc->wq_addr = intel_guc_ggtt_offset(guc, guc->workqueue);
 	desc->wq_size = GUC_WQ_SIZE;
 }
 
@@ -167,62 +113,9 @@ static void guc_stage_desc_fini(struct intel_guc *guc)
 	memset(desc, 0, sizeof(*desc));
 }
 
-/* Construct a Work Item and append it to the GuC's Work Queue */
-static void guc_wq_item_append(struct intel_guc *guc,
-			       u32 target_engine, u32 context_desc,
-			       u32 ring_tail, u32 fence_id)
-{
-	/* wqi_len is in DWords, and does not include the one-word header */
-	const size_t wqi_size = sizeof(struct guc_wq_item);
-	const u32 wqi_len = wqi_size / sizeof(u32) - 1;
-	struct guc_process_desc *desc = guc->proc_desc_vaddr;
-	struct guc_wq_item *wqi;
-	u32 wq_off;
-
-	lockdep_assert_held(&guc->wq_lock);
-
-	/* For now workqueue item is 4 DWs; workqueue buffer is 2 pages. So we
-	 * should not have the case where structure wqi is across page, neither
-	 * wrapped to the beginning. This simplifies the implementation below.
-	 *
-	 * XXX: if not the case, we need save data to a temp wqi and copy it to
-	 * workqueue buffer dw by dw.
-	 */
-	BUILD_BUG_ON(wqi_size != 16);
-
-	/* We expect the WQ to be active if we're appending items to it */
-	GEM_BUG_ON(desc->wq_status != WQ_STATUS_ACTIVE);
-
-	/* Free space is guaranteed. */
-	wq_off = READ_ONCE(desc->tail);
-	GEM_BUG_ON(CIRC_SPACE(wq_off, READ_ONCE(desc->head),
-			      GUC_WQ_SIZE) < wqi_size);
-	GEM_BUG_ON(wq_off & (wqi_size - 1));
-
-	wqi = guc->workqueue_vaddr + wq_off;
-
-	/* Now fill in the 4-word work queue item */
-	wqi->header = WQ_TYPE_INORDER |
-		      (wqi_len << WQ_LEN_SHIFT) |
-		      (target_engine << WQ_TARGET_SHIFT) |
-		      WQ_NO_WCFLUSH_WAIT;
-	wqi->context_desc = context_desc;
-	wqi->submit_element_info = ring_tail << WQ_RING_TAIL_SHIFT;
-	GEM_BUG_ON(ring_tail > WQ_RING_TAIL_MAX);
-	wqi->fence_id = fence_id;
-
-	/* Make the update visible to GuC */
-	WRITE_ONCE(desc->tail, (wq_off + wqi_size) & (GUC_WQ_SIZE - 1));
-}
-
 static void guc_add_request(struct intel_guc *guc, struct i915_request *rq)
 {
-	struct intel_engine_cs *engine = rq->engine;
-	u32 ctx_desc = rq->context->lrc.ccid;
-	u32 ring_tail = intel_ring_set_tail(rq->ring, rq->tail) / sizeof(u64);
-
-	guc_wq_item_append(guc, engine->guc_id, ctx_desc,
-			   ring_tail, rq->fence.seqno);
+	/* Leaving stub as this function will be used in future patches */
 }
 
 /*
@@ -245,16 +138,12 @@ static void guc_submit(struct intel_engine_cs *engine,
 {
 	struct intel_guc *guc = &engine->gt->uc.guc;
 
-	spin_lock(&guc->wq_lock);
-
 	do {
 		struct i915_request *rq = *out++;
 
 		flush_ggtt_writes(rq->ring->vma);
 		guc_add_request(guc, rq);
 	} while (out != end);
-
-	spin_unlock(&guc->wq_lock);
 }
 
 static inline int rq_prio(const struct i915_request *rq)
@@ -389,19 +278,6 @@ static void guc_reset_prepare(struct intel_engine_cs *engine)
 	__tasklet_disable_sync_once(&execlists->tasklet);
 }
 
-static void
-cancel_port_requests(struct intel_engine_execlists * const execlists)
-{
-	struct i915_request * const *port, *rq;
-
-	/* Note we are only using the inflight and not the pending queue */
-
-	for (port = execlists->active; (rq = *port); port++)
-		schedule_out(rq);
-	execlists->active =
-		memset(execlists->inflight, 0, sizeof(execlists->inflight));
-}
-
 static void guc_reset_state(struct intel_context *ce,
 			    struct intel_engine_cs *engine,
 			    u32 head,
@@ -432,8 +308,6 @@ static void guc_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 
 	spin_lock_irqsave(&engine->active.lock, flags);
 
-	cancel_port_requests(execlists);
-
 	/* Push back any incomplete requests for replay after the reset. */
 	rq = execlists_unwind_incomplete_requests(execlists);
 	if (!rq)
@@ -474,9 +348,6 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 	 */
 	spin_lock_irqsave(&engine->active.lock, flags);
 
-	/* Cancel the requests on the HW and clear the ELSP tracker. */
-	cancel_port_requests(execlists);
-
 	/* Mark all executing requests as skipped. */
 	list_for_each_entry(rq, &engine->active.requests, sched.link) {
 		i915_request_set_error_once(rq, -EIO);
@@ -519,12 +390,6 @@ static void guc_reset_finish(struct intel_engine_cs *engine)
 		     atomic_read(&execlists->tasklet.count));
 }
 
-/*
- * Everything below here is concerned with setup & teardown, and is
- * therefore not part of the somewhat time-critical batch-submission
- * path of guc_submit() above.
- */
-
 /*
  * Set up the memory resources to be shared with the GuC (via the GGTT)
  * at firmware loading time.
@@ -545,30 +410,12 @@ int intel_guc_submission_init(struct intel_guc *guc)
 	 */
 	GEM_BUG_ON(!guc->stage_desc_pool);
 
-	ret = guc_workqueue_create(guc);
-	if (ret)
-		goto err_pool;
-
-	ret = guc_proc_desc_create(guc);
-	if (ret)
-		goto err_workqueue;
-
-	spin_lock_init(&guc->wq_lock);
-
 	return 0;
-
-err_workqueue:
-	guc_workqueue_destroy(guc);
-err_pool:
-	guc_stage_desc_pool_destroy(guc);
-	return ret;
 }
 
 void intel_guc_submission_fini(struct intel_guc *guc)
 {
 	if (guc->stage_desc_pool) {
-		guc_proc_desc_destroy(guc);
-		guc_workqueue_destroy(guc);
 		guc_stage_desc_pool_destroy(guc);
 	}
 }
@@ -642,20 +489,6 @@ void intel_guc_submission_enable(struct intel_guc *guc)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 
-	/*
-	 * We're using GuC work items for submitting work through GuC. Since
-	 * we're coalescing multiple requests from a single context into a
-	 * single work item prior to assigning it to execlist_port, we can
-	 * never have more work items than the total number of ports (for all
-	 * engines). The GuC firmware is controlling the HEAD of work queue,
-	 * and it is guaranteed that it will remove the work item from the
-	 * queue before our request is completed.
-	 */
-	BUILD_BUG_ON(ARRAY_SIZE(engine->execlists.inflight) *
-		     sizeof(struct guc_wq_item) *
-		     I915_NUM_ENGINES > GUC_WQ_SIZE);
-
-	guc_proc_desc_init(guc);
 	guc_stage_desc_init(guc);
 
 	/* Take over from manual control of ELSP (execlists) */
@@ -678,7 +511,6 @@ void intel_guc_submission_disable(struct intel_guc *guc)
 	guc_interrupts_release(gt);
 
 	guc_stage_desc_fini(guc);
-	guc_proc_desc_fini(guc);
 }
 
 static bool __guc_submission_selected(struct intel_guc *guc)
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
