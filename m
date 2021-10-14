Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB2A42E074
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 19:49:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D566EB27;
	Thu, 14 Oct 2021 17:49:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3BD96E811;
 Thu, 14 Oct 2021 17:49:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="225208229"
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="225208229"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 10:25:03 -0700
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="481360440"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 10:25:00 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <john.c.harrison@intel.com>
Date: Thu, 14 Oct 2021 10:19:52 -0700
Message-Id: <20211014172005.27155-13-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211014172005.27155-1-matthew.brost@intel.com>
References: <20211014172005.27155-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/25] drm/i915/guc: Implement multi-lrc
 submission
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement multi-lrc submission via a single workqueue entry and single
H2G. The workqueue entry contains an updated tail value for each
request, of all the contexts in the multi-lrc submission, and updates
these values simultaneously. As such, the tasklet and bypass path have
been updated to coalesce requests into a single submission.

v2:
 (John Harrison)
  - s/wqe/wqi
  - Use FIELD_PREP macros
  - Add GEM_BUG_ONs ensures length fits within field
  - Add comment / white space to intel_guc_write_barrier
 (Kernel test robot)
  - Make need_tasklet a static function
v3:
 (Docs)
  - A comment for submission_stall_reason
v4:
 (Kernel test robot)
  - Initialize return value in bypass tasklt submit function
 (John Harrison)
  - Add comment near work queue defs
  - Add BUILD_BUG_ON to ensure WQ_SIZE is a power of 2
  - Update write_barrier comment to talk about work queue
v5:
 (John Harrison)
  - Fix typo in work queue comment

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  29 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  11 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  24 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  30 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 323 +++++++++++++++---
 drivers/gpu/drm/i915/i915_request.h           |   8 +
 6 files changed, 350 insertions(+), 75 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 8f8182bf7c11..6e228343e8cb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -756,3 +756,32 @@ void intel_guc_load_status(struct intel_guc *guc, struct drm_printer *p)
 		}
 	}
 }
+
+void intel_guc_write_barrier(struct intel_guc *guc)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+
+	if (i915_gem_object_is_lmem(guc->ct.vma->obj)) {
+		/*
+		 * Ensure intel_uncore_write_fw can be used rather than
+		 * intel_uncore_write.
+		 */
+		GEM_BUG_ON(guc->send_regs.fw_domains);
+
+		/*
+		 * This register is used by the i915 and GuC for MMIO based
+		 * communication. Once we are in this code CTBs are the only
+		 * method the i915 uses to communicate with the GuC so it is
+		 * safe to write to this register (a value of 0 is NOP for MMIO
+		 * communication). If we ever start mixing CTBs and MMIOs a new
+		 * register will have to be chosen. This function is also used
+		 * to enforce ordering of a work queue item write and an update
+		 * to the process descriptor. When a work queue is being used,
+		 * CTBs are also the only mechanism of communication.
+		 */
+		intel_uncore_write_fw(gt->uncore, GEN11_SOFT_SCRATCH(0), 0);
+	} else {
+		/* wmb() sufficient for a barrier if in smem */
+		wmb();
+	}
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 4ca197f400ba..31cf9fb48c7e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -46,6 +46,15 @@ struct intel_guc {
 	 * submitted until the stalled request is processed.
 	 */
 	struct i915_request *stalled_request;
+	/**
+	 * @submission_stall_reason: reason why submission is stalled
+	 */
+	enum {
+		STALL_NONE,
+		STALL_REGISTER_CONTEXT,
+		STALL_MOVE_LRC_TAIL,
+		STALL_ADD_REQUEST,
+	} submission_stall_reason;
 
 	/* intel_guc_recv interrupt related state */
 	/** @irq_lock: protects GuC irq state */
@@ -367,4 +376,6 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc);
 
 void intel_guc_load_status(struct intel_guc *guc, struct drm_printer *p);
 
+void intel_guc_write_barrier(struct intel_guc *guc);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 0a3504bc0b61..a0cc34be7b56 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -383,28 +383,6 @@ static u32 ct_get_next_fence(struct intel_guc_ct *ct)
 	return ++ct->requests.last_fence;
 }
 
-static void write_barrier(struct intel_guc_ct *ct)
-{
-	struct intel_guc *guc = ct_to_guc(ct);
-	struct intel_gt *gt = guc_to_gt(guc);
-
-	if (i915_gem_object_is_lmem(guc->ct.vma->obj)) {
-		GEM_BUG_ON(guc->send_regs.fw_domains);
-		/*
-		 * This register is used by the i915 and GuC for MMIO based
-		 * communication. Once we are in this code CTBs are the only
-		 * method the i915 uses to communicate with the GuC so it is
-		 * safe to write to this register (a value of 0 is NOP for MMIO
-		 * communication). If we ever start mixing CTBs and MMIOs a new
-		 * register will have to be chosen.
-		 */
-		intel_uncore_write_fw(gt->uncore, GEN11_SOFT_SCRATCH(0), 0);
-	} else {
-		/* wmb() sufficient for a barrier if in smem */
-		wmb();
-	}
-}
-
 static int ct_write(struct intel_guc_ct *ct,
 		    const u32 *action,
 		    u32 len /* in dwords */,
@@ -474,7 +452,7 @@ static int ct_write(struct intel_guc_ct *ct,
 	 * make sure H2G buffer update and LRC tail update (if this triggering a
 	 * submission) are visible before updating the descriptor tail
 	 */
-	write_barrier(ct);
+	intel_guc_write_barrier(ct_to_guc(ct));
 
 	/* update local copies */
 	ctb->tail = tail;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 0eeb2a9feeed..18da67cfcd92 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -52,25 +52,27 @@
 
 #define GUC_DOORBELL_INVALID		256
 
-/* Work queue item header definitions */
+/*
+ * Work queue item header definitions
+ *
+ * Work queue is circular buffer used to submit complex (multi-lrc) submissions
+ * to the GuC. A work queue item is an entry in the circular buffer.
+ */
 #define WQ_STATUS_ACTIVE		1
 #define WQ_STATUS_SUSPENDED		2
 #define WQ_STATUS_CMD_ERROR		3
 #define WQ_STATUS_ENGINE_ID_NOT_USED	4
 #define WQ_STATUS_SUSPENDED_FROM_RESET	5
-#define WQ_TYPE_SHIFT			0
-#define   WQ_TYPE_BATCH_BUF		(0x1 << WQ_TYPE_SHIFT)
-#define   WQ_TYPE_PSEUDO		(0x2 << WQ_TYPE_SHIFT)
-#define   WQ_TYPE_INORDER		(0x3 << WQ_TYPE_SHIFT)
-#define   WQ_TYPE_NOOP			(0x4 << WQ_TYPE_SHIFT)
-#define WQ_TARGET_SHIFT			10
-#define WQ_LEN_SHIFT			16
-#define WQ_NO_WCFLUSH_WAIT		(1 << 27)
-#define WQ_PRESENT_WORKLOAD		(1 << 28)
-
-#define WQ_RING_TAIL_SHIFT		20
-#define WQ_RING_TAIL_MAX		0x7FF	/* 2^11 QWords */
-#define WQ_RING_TAIL_MASK		(WQ_RING_TAIL_MAX << WQ_RING_TAIL_SHIFT)
+#define WQ_TYPE_BATCH_BUF		0x1
+#define WQ_TYPE_PSEUDO			0x2
+#define WQ_TYPE_INORDER			0x3
+#define WQ_TYPE_NOOP			0x4
+#define WQ_TYPE_MULTI_LRC		0x5
+#define WQ_TYPE_MASK			GENMASK(7, 0)
+#define WQ_LEN_MASK			GENMASK(26, 16)
+
+#define WQ_GUC_ID_MASK			GENMASK(15, 0)
+#define WQ_RING_TAIL_MASK		GENMASK(28, 18)
 
 #define GUC_STAGE_DESC_ATTR_ACTIVE	BIT(0)
 #define GUC_STAGE_DESC_ATTR_PENDING_DB	BIT(1)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index a412593342db..71ae5eb69849 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -400,6 +400,29 @@ __get_process_desc(struct intel_context *ce)
 		   LRC_STATE_OFFSET) / sizeof(u32)));
 }
 
+static u32 *get_wq_pointer(struct guc_process_desc *desc,
+			   struct intel_context *ce,
+			   u32 wqi_size)
+{
+	/*
+	 * Check for space in work queue. Caching a value of head pointer in
+	 * intel_context structure in order reduce the number accesses to shared
+	 * GPU memory which may be across a PCIe bus.
+	 */
+#define AVAILABLE_SPACE	\
+	CIRC_SPACE(ce->parallel.guc.wqi_tail, ce->parallel.guc.wqi_head, WQ_SIZE)
+	if (wqi_size > AVAILABLE_SPACE) {
+		ce->parallel.guc.wqi_head = READ_ONCE(desc->head);
+
+		if (wqi_size > AVAILABLE_SPACE)
+			return NULL;
+	}
+#undef AVAILABLE_SPACE
+
+	return ((u32 *)__get_process_desc(ce)) +
+		((WQ_OFFSET + ce->parallel.guc.wqi_tail) / sizeof(u32));
+}
+
 static struct guc_lrc_desc *__get_lrc_desc(struct intel_guc *guc, u32 index)
 {
 	struct guc_lrc_desc *base = guc->lrc_desc_pool_vaddr;
@@ -559,10 +582,10 @@ int intel_guc_wait_for_idle(struct intel_guc *guc, long timeout)
 
 static int guc_lrc_desc_pin(struct intel_context *ce, bool loop);
 
-static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
+static int __guc_add_request(struct intel_guc *guc, struct i915_request *rq)
 {
 	int err = 0;
-	struct intel_context *ce = rq->context;
+	struct intel_context *ce = request_to_scheduling_context(rq);
 	u32 action[3];
 	int len = 0;
 	u32 g2h_len_dw = 0;
@@ -583,26 +606,17 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
 	GEM_BUG_ON(!atomic_read(&ce->guc_id.ref));
 	GEM_BUG_ON(context_guc_id_invalid(ce));
 
-	/*
-	 * Corner case where the GuC firmware was blown away and reloaded while
-	 * this context was pinned.
-	 */
-	if (unlikely(!lrc_desc_registered(guc, ce->guc_id.id))) {
-		err = guc_lrc_desc_pin(ce, false);
-		if (unlikely(err))
-			return err;
-	}
-
 	spin_lock(&ce->guc_state.lock);
 
 	/*
 	 * The request / context will be run on the hardware when scheduling
-	 * gets enabled in the unblock.
+	 * gets enabled in the unblock. For multi-lrc we still submit the
+	 * context to move the LRC tails.
 	 */
-	if (unlikely(context_blocked(ce)))
+	if (unlikely(context_blocked(ce) && !intel_context_is_parent(ce)))
 		goto out;
 
-	enabled = context_enabled(ce);
+	enabled = context_enabled(ce) || context_blocked(ce);
 
 	if (!enabled) {
 		action[len++] = INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET;
@@ -621,6 +635,18 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
 		trace_intel_context_sched_enable(ce);
 		atomic_inc(&guc->outstanding_submission_g2h);
 		set_context_enabled(ce);
+
+		/*
+		 * Without multi-lrc KMD does the submission step (moving the
+		 * lrc tail) so enabling scheduling is sufficient to submit the
+		 * context. This isn't the case in multi-lrc submission as the
+		 * GuC needs to move the tails, hence the need for another H2G
+		 * to submit a multi-lrc context after enabling scheduling.
+		 */
+		if (intel_context_is_parent(ce)) {
+			action[0] = INTEL_GUC_ACTION_SCHED_CONTEXT;
+			err = intel_guc_send_nb(guc, action, len - 1, 0);
+		}
 	} else if (!enabled) {
 		clr_context_pending_enable(ce);
 		intel_context_put(ce);
@@ -633,6 +659,18 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
 	return err;
 }
 
+static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
+{
+	int ret = __guc_add_request(guc, rq);
+
+	if (unlikely(ret == -EBUSY)) {
+		guc->stalled_request = rq;
+		guc->submission_stall_reason = STALL_ADD_REQUEST;
+	}
+
+	return ret;
+}
+
 static inline void guc_set_lrc_tail(struct i915_request *rq)
 {
 	rq->context->lrc_reg_state[CTX_RING_TAIL] =
@@ -644,6 +682,136 @@ static inline int rq_prio(const struct i915_request *rq)
 	return rq->sched.attr.priority;
 }
 
+static bool is_multi_lrc_rq(struct i915_request *rq)
+{
+	return intel_context_is_child(rq->context) ||
+		intel_context_is_parent(rq->context);
+}
+
+static bool can_merge_rq(struct i915_request *rq,
+			 struct i915_request *last)
+{
+	return request_to_scheduling_context(rq) ==
+		request_to_scheduling_context(last);
+}
+
+static u32 wq_space_until_wrap(struct intel_context *ce)
+{
+	return (WQ_SIZE - ce->parallel.guc.wqi_tail);
+}
+
+static void write_wqi(struct guc_process_desc *desc,
+		      struct intel_context *ce,
+		      u32 wqi_size)
+{
+	BUILD_BUG_ON(!is_power_of_2(WQ_SIZE));
+
+	/*
+	 * Ensure WQI are visible before updating tail
+	 */
+	intel_guc_write_barrier(ce_to_guc(ce));
+
+	ce->parallel.guc.wqi_tail = (ce->parallel.guc.wqi_tail + wqi_size) &
+		(WQ_SIZE - 1);
+	WRITE_ONCE(desc->tail, ce->parallel.guc.wqi_tail);
+}
+
+static int guc_wq_noop_append(struct intel_context *ce)
+{
+	struct guc_process_desc *desc = __get_process_desc(ce);
+	u32 *wqi = get_wq_pointer(desc, ce, wq_space_until_wrap(ce));
+	u32 len_dw = wq_space_until_wrap(ce) / sizeof(u32) - 1;
+
+	if (!wqi)
+		return -EBUSY;
+
+	GEM_BUG_ON(!FIELD_FIT(WQ_LEN_MASK, len_dw));
+
+	*wqi = FIELD_PREP(WQ_TYPE_MASK, WQ_TYPE_NOOP) |
+		FIELD_PREP(WQ_LEN_MASK, len_dw);
+	ce->parallel.guc.wqi_tail = 0;
+
+	return 0;
+}
+
+static int __guc_wq_item_append(struct i915_request *rq)
+{
+	struct intel_context *ce = request_to_scheduling_context(rq);
+	struct intel_context *child;
+	struct guc_process_desc *desc = __get_process_desc(ce);
+	unsigned int wqi_size = (ce->parallel.number_children + 4) *
+		sizeof(u32);
+	u32 *wqi;
+	u32 len_dw = (wqi_size / sizeof(u32)) - 1;
+	int ret;
+
+	/* Ensure context is in correct state updating work queue */
+	GEM_BUG_ON(!atomic_read(&ce->guc_id.ref));
+	GEM_BUG_ON(context_guc_id_invalid(ce));
+	GEM_BUG_ON(context_wait_for_deregister_to_register(ce));
+	GEM_BUG_ON(!lrc_desc_registered(ce_to_guc(ce), ce->guc_id.id));
+
+	/* Insert NOOP if this work queue item will wrap the tail pointer. */
+	if (wqi_size > wq_space_until_wrap(ce)) {
+		ret = guc_wq_noop_append(ce);
+		if (ret)
+			return ret;
+	}
+
+	wqi = get_wq_pointer(desc, ce, wqi_size);
+	if (!wqi)
+		return -EBUSY;
+
+	GEM_BUG_ON(!FIELD_FIT(WQ_LEN_MASK, len_dw));
+
+	*wqi++ = FIELD_PREP(WQ_TYPE_MASK, WQ_TYPE_MULTI_LRC) |
+		FIELD_PREP(WQ_LEN_MASK, len_dw);
+	*wqi++ = ce->lrc.lrca;
+	*wqi++ = FIELD_PREP(WQ_GUC_ID_MASK, ce->guc_id.id) |
+	       FIELD_PREP(WQ_RING_TAIL_MASK, ce->ring->tail / sizeof(u64));
+	*wqi++ = 0;	/* fence_id */
+	for_each_child(ce, child)
+		*wqi++ = child->ring->tail / sizeof(u64);
+
+	write_wqi(desc, ce, wqi_size);
+
+	return 0;
+}
+
+static int guc_wq_item_append(struct intel_guc *guc,
+			      struct i915_request *rq)
+{
+	struct intel_context *ce = request_to_scheduling_context(rq);
+	int ret = 0;
+
+	if (likely(!intel_context_is_banned(ce))) {
+		ret = __guc_wq_item_append(rq);
+
+		if (unlikely(ret == -EBUSY)) {
+			guc->stalled_request = rq;
+			guc->submission_stall_reason = STALL_MOVE_LRC_TAIL;
+		}
+	}
+
+	return ret;
+}
+
+static bool multi_lrc_submit(struct i915_request *rq)
+{
+	struct intel_context *ce = request_to_scheduling_context(rq);
+
+	intel_ring_set_tail(rq->ring, rq->tail);
+
+	/*
+	 * We expect the front end (execbuf IOCTL) to set this flag on the last
+	 * request generated from a multi-BB submission. This indicates to the
+	 * backend (GuC interface) that we should submit this context thus
+	 * submitting all the requests generated in parallel.
+	 */
+	return test_bit(I915_FENCE_FLAG_SUBMIT_PARALLEL, &rq->fence.flags) ||
+		intel_context_is_banned(ce);
+}
+
 static int guc_dequeue_one_context(struct intel_guc *guc)
 {
 	struct i915_sched_engine * const sched_engine = guc->sched_engine;
@@ -657,7 +825,17 @@ static int guc_dequeue_one_context(struct intel_guc *guc)
 	if (guc->stalled_request) {
 		submit = true;
 		last = guc->stalled_request;
-		goto resubmit;
+
+		switch (guc->submission_stall_reason) {
+		case STALL_REGISTER_CONTEXT:
+			goto register_context;
+		case STALL_MOVE_LRC_TAIL:
+			goto move_lrc_tail;
+		case STALL_ADD_REQUEST:
+			goto add_request;
+		default:
+			MISSING_CASE(guc->submission_stall_reason);
+		}
 	}
 
 	while ((rb = rb_first_cached(&sched_engine->queue))) {
@@ -665,8 +843,8 @@ static int guc_dequeue_one_context(struct intel_guc *guc)
 		struct i915_request *rq, *rn;
 
 		priolist_for_each_request_consume(rq, rn, p) {
-			if (last && rq->context != last->context)
-				goto done;
+			if (last && !can_merge_rq(rq, last))
+				goto register_context;
 
 			list_del_init(&rq->sched.link);
 
@@ -674,33 +852,84 @@ static int guc_dequeue_one_context(struct intel_guc *guc)
 
 			trace_i915_request_in(rq, 0);
 			last = rq;
-			submit = true;
+
+			if (is_multi_lrc_rq(rq)) {
+				/*
+				 * We need to coalesce all multi-lrc requests in
+				 * a relationship into a single H2G. We are
+				 * guaranteed that all of these requests will be
+				 * submitted sequentially.
+				 */
+				if (multi_lrc_submit(rq)) {
+					submit = true;
+					goto register_context;
+				}
+			} else {
+				submit = true;
+			}
 		}
 
 		rb_erase_cached(&p->node, &sched_engine->queue);
 		i915_priolist_free(p);
 	}
-done:
+
+register_context:
 	if (submit) {
-		guc_set_lrc_tail(last);
-resubmit:
+		struct intel_context *ce = request_to_scheduling_context(last);
+
+		if (unlikely(!lrc_desc_registered(guc, ce->guc_id.id) &&
+			     !intel_context_is_banned(ce))) {
+			ret = guc_lrc_desc_pin(ce, false);
+			if (unlikely(ret == -EPIPE)) {
+				goto deadlk;
+			} else if (ret == -EBUSY) {
+				guc->stalled_request = last;
+				guc->submission_stall_reason =
+					STALL_REGISTER_CONTEXT;
+				goto schedule_tasklet;
+			} else if (ret != 0) {
+				GEM_WARN_ON(ret);	/* Unexpected */
+				goto deadlk;
+			}
+		}
+
+move_lrc_tail:
+		if (is_multi_lrc_rq(last)) {
+			ret = guc_wq_item_append(guc, last);
+			if (ret == -EBUSY) {
+				goto schedule_tasklet;
+			} else if (ret != 0) {
+				GEM_WARN_ON(ret);	/* Unexpected */
+				goto deadlk;
+			}
+		} else {
+			guc_set_lrc_tail(last);
+		}
+
+add_request:
 		ret = guc_add_request(guc, last);
-		if (unlikely(ret == -EPIPE))
+		if (unlikely(ret == -EPIPE)) {
+			goto deadlk;
+		} else if (ret == -EBUSY) {
+			goto schedule_tasklet;
+		} else if (ret != 0) {
+			GEM_WARN_ON(ret);	/* Unexpected */
 			goto deadlk;
-		else if (ret == -EBUSY) {
-			tasklet_schedule(&sched_engine->tasklet);
-			guc->stalled_request = last;
-			return false;
 		}
 	}
 
 	guc->stalled_request = NULL;
+	guc->submission_stall_reason = STALL_NONE;
 	return submit;
 
 deadlk:
 	sched_engine->tasklet.callback = NULL;
 	tasklet_disable_nosync(&sched_engine->tasklet);
 	return false;
+
+schedule_tasklet:
+	tasklet_schedule(&sched_engine->tasklet);
+	return false;
 }
 
 static void guc_submission_tasklet(struct tasklet_struct *t)
@@ -1250,16 +1479,22 @@ static inline void queue_request(struct i915_sched_engine *sched_engine,
 static int guc_bypass_tasklet_submit(struct intel_guc *guc,
 				     struct i915_request *rq)
 {
-	int ret;
+	int ret = 0;
 
 	__i915_request_submit(rq);
 
 	trace_i915_request_in(rq, 0);
 
-	guc_set_lrc_tail(rq);
-	ret = guc_add_request(guc, rq);
-	if (ret == -EBUSY)
-		guc->stalled_request = rq;
+	if (is_multi_lrc_rq(rq)) {
+		if (multi_lrc_submit(rq)) {
+			ret = guc_wq_item_append(guc, rq);
+			if (!ret)
+				ret = guc_add_request(guc, rq);
+		}
+	} else {
+		guc_set_lrc_tail(rq);
+		ret = guc_add_request(guc, rq);
+	}
 
 	if (unlikely(ret == -EPIPE))
 		disable_submission(guc);
@@ -1267,6 +1502,16 @@ static int guc_bypass_tasklet_submit(struct intel_guc *guc,
 	return ret;
 }
 
+static bool need_tasklet(struct intel_guc *guc, struct i915_request *rq)
+{
+	struct i915_sched_engine *sched_engine = rq->engine->sched_engine;
+	struct intel_context *ce = request_to_scheduling_context(rq);
+
+	return submission_disabled(guc) || guc->stalled_request ||
+		!i915_sched_engine_is_empty(sched_engine) ||
+		!lrc_desc_registered(guc, ce->guc_id.id);
+}
+
 static void guc_submit_request(struct i915_request *rq)
 {
 	struct i915_sched_engine *sched_engine = rq->engine->sched_engine;
@@ -1276,8 +1521,7 @@ static void guc_submit_request(struct i915_request *rq)
 	/* Will be called from irq-context when using foreign fences. */
 	spin_lock_irqsave(&sched_engine->lock, flags);
 
-	if (submission_disabled(guc) || guc->stalled_request ||
-	    !i915_sched_engine_is_empty(sched_engine))
+	if (need_tasklet(guc, rq))
 		queue_request(sched_engine, rq, rq_prio(rq));
 	else if (guc_bypass_tasklet_submit(guc, rq) == -EBUSY)
 		tasklet_hi_schedule(&sched_engine->tasklet);
@@ -2259,9 +2503,10 @@ static inline bool new_guc_prio_higher(u8 old_guc_prio, u8 new_guc_prio)
 
 static void add_to_context(struct i915_request *rq)
 {
-	struct intel_context *ce = rq->context;
+	struct intel_context *ce = request_to_scheduling_context(rq);
 	u8 new_guc_prio = map_i915_prio_to_guc_prio(rq_prio(rq));
 
+	GEM_BUG_ON(intel_context_is_child(ce));
 	GEM_BUG_ON(rq->guc_prio == GUC_PRIO_FINI);
 
 	spin_lock(&ce->guc_state.lock);
@@ -2294,7 +2539,9 @@ static void guc_prio_fini(struct i915_request *rq, struct intel_context *ce)
 
 static void remove_from_context(struct i915_request *rq)
 {
-	struct intel_context *ce = rq->context;
+	struct intel_context *ce = request_to_scheduling_context(rq);
+
+	GEM_BUG_ON(intel_context_is_child(ce));
 
 	spin_lock_irq(&ce->guc_state.lock);
 
@@ -2713,7 +2960,7 @@ static void guc_init_breadcrumbs(struct intel_engine_cs *engine)
 static void guc_bump_inflight_request_prio(struct i915_request *rq,
 					   int prio)
 {
-	struct intel_context *ce = rq->context;
+	struct intel_context *ce = request_to_scheduling_context(rq);
 	u8 new_guc_prio = map_i915_prio_to_guc_prio(prio);
 
 	/* Short circuit function */
@@ -2736,7 +2983,7 @@ static void guc_bump_inflight_request_prio(struct i915_request *rq,
 
 static void guc_retire_inflight_request_prio(struct i915_request *rq)
 {
-	struct intel_context *ce = rq->context;
+	struct intel_context *ce = request_to_scheduling_context(rq);
 
 	spin_lock(&ce->guc_state.lock);
 	guc_prio_fini(rq, ce);
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 7bd9ed20623e..8950785e55d6 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -139,6 +139,14 @@ enum {
 	 * the GPU. Here we track such boost requests on a per-request basis.
 	 */
 	I915_FENCE_FLAG_BOOST,
+
+	/*
+	 * I915_FENCE_FLAG_SUBMIT_PARALLEL - request with a context in a
+	 * parent-child relationship (parallel submission, multi-lrc) should
+	 * trigger a submission to the GuC rather than just moving the context
+	 * tail.
+	 */
+	I915_FENCE_FLAG_SUBMIT_PARALLEL,
 };
 
 /**
-- 
2.32.0

