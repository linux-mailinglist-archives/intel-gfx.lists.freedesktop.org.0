Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA094FEA34
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 00:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E08510ECA1;
	Tue, 12 Apr 2022 22:59:57 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44E2810EC9B;
 Tue, 12 Apr 2022 22:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649804396; x=1681340396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i/HxPX/LmjqKwqEeURhj7mEvEhWFzVp+ODGg4fhEUoQ=;
 b=Ta+m2nTvYTFqUXNtq4g45ZYhCXoDD+VORsbNBPgcK8A45G563rfcbHz3
 IbinwdI/60Bx1fg7LR/5pcFdbhEku3/7Flj8ZQHCverBs7LewbxSg3Nv5
 OW5Mhkr9zGt4CcuUYeXu6zO/zQmJ72O/PeSfrzvmeonR5VW8YsLwcF0P0
 39hLhIz9MH8u5svsyXsiC5pNzCmlC+UOf/Gim14jpLNQupQZjrkRLpW15
 NdFvdHJlkASh/KWukKOsHdYKxmSK9Ro7OS43onVZTZ9v61qlvSu/FnUMp
 E2B805KdQ4aRBhZySTv7kIY29fMX3WYWCmm0PWO/fO+v/R7TC64bWFh/w Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="287547851"
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="287547851"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 15:59:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="854557809"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga005.fm.intel.com with ESMTP; 12 Apr 2022 15:59:55 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue, 12 Apr 2022 15:59:55 -0700
Message-Id: <20220412225955.1802543-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220412225955.1802543-1-John.C.Harrison@Intel.com>
References: <20220412225955.1802543-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Update to GuC version 70.1.1
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The latest GuC firmware drops the context descriptor pool in favour of
passing all creation data in the create H2G. It also greatly simplifies
the work queue and removes the process descriptor used for multi-LRC
submission. So, remove all mention of LRC and process descriptors and
update the registration code accordingly.

Unfortunately, the new API also removes the ability to set default
values for the scheduling policies at context registration time.
Instead, a follow up H2G must be sent. The individual scheduling
policy update H2G commands are also dropped in favour of a single KLV
based H2G. So, change the update wrappers accordingly and call this
during context registration..

Of course, this second H2G per registration might fail due to being
backed up. The registration code has a complicated state machine to
cope with the actual registration call failing. However, if that works
then there is no support for unwinding if a further call should fail.
Unwinding would require sending a H2G to de-register - but that can't
be done because the CTB is already backed up.

So instead, add a new flag to say whether the context has a pending
policy update. This is set if the policy H2G fails at registration
time. The submission code checks for this flag and retries the policy
update if set. If that call fails, the submission path early exists
with a retry error. This is something that is already supported for
other reasons.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   4 +-
 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h |  15 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   5 -
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  67 ++--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 375 +++++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  32 +-
 6 files changed, 294 insertions(+), 204 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index 9ad6df1b6fbc..be9ac47fa9d0 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -122,11 +122,9 @@ enum intel_guc_action {
 	INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE = 0x1002,
 	INTEL_GUC_ACTION_SCHED_ENGINE_MODE_SET = 0x1003,
 	INTEL_GUC_ACTION_SCHED_ENGINE_MODE_DONE = 0x1004,
-	INTEL_GUC_ACTION_SET_CONTEXT_PRIORITY = 0x1005,
-	INTEL_GUC_ACTION_SET_CONTEXT_EXECUTION_QUANTUM = 0x1006,
-	INTEL_GUC_ACTION_SET_CONTEXT_PREEMPTION_TIMEOUT = 0x1007,
 	INTEL_GUC_ACTION_CONTEXT_RESET_NOTIFICATION = 0x1008,
 	INTEL_GUC_ACTION_ENGINE_FAILURE_NOTIFICATION = 0x1009,
+	INTEL_GUC_ACTION_HOST2GUC_UPDATE_CONTEXT_POLICIES = 0x100B,
 	INTEL_GUC_ACTION_SETUP_PC_GUCRC = 0x3004,
 	INTEL_GUC_ACTION_AUTHENTICATE_HUC = 0x4000,
 	INTEL_GUC_ACTION_GET_HWCONFIG = 0x4100,
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
index f0814a57c191..4a59478c3b5c 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
@@ -6,6 +6,8 @@
 #ifndef _ABI_GUC_KLVS_ABI_H
 #define _ABI_GUC_KLVS_ABI_H
 
+#include <linux/types.h>
+
 /**
  * DOC: GuC KLV
  *
@@ -79,4 +81,17 @@
 #define GUC_KLV_SELF_CFG_G2H_CTB_SIZE_KEY		0x0907
 #define GUC_KLV_SELF_CFG_G2H_CTB_SIZE_LEN		1u
 
+/*
+ * Per context scheduling policy update keys.
+ */
+enum  {
+	GUC_CONTEXT_POLICIES_KLV_ID_EXECUTION_QUANTUM			= 0x2001,
+	GUC_CONTEXT_POLICIES_KLV_ID_PREEMPTION_TIMEOUT			= 0x2002,
+	GUC_CONTEXT_POLICIES_KLV_ID_SCHEDULING_PRIORITY			= 0x2003,
+	GUC_CONTEXT_POLICIES_KLV_ID_PREEMPT_TO_IDLE_ON_QUANTUM_EXPIRY	= 0x2004,
+	GUC_CONTEXT_POLICIES_KLV_ID_SLPM_GT_FREQUENCY			= 0x2005,
+
+	GUC_CONTEXT_POLICIES_KLV_NUM_IDS = 5,
+};
+
 #endif /* _ABI_GUC_KLVS_ABI_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 4e431c14b118..3f3373f68123 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -170,11 +170,6 @@ struct intel_guc {
 	/** @ads_engine_usage_size: size of engine usage in the ADS */
 	u32 ads_engine_usage_size;
 
-	/** @lrc_desc_pool: object allocated to hold the GuC LRC descriptor pool */
-	struct i915_vma *lrc_desc_pool;
-	/** @lrc_desc_pool_vaddr: contents of the GuC LRC descriptor pool */
-	void *lrc_desc_pool_vaddr;
-
 	/**
 	 * @context_lookup: used to resolve intel_context from guc_id, if a
 	 * context is present in this structure it is registered with the GuC
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index f21b6de46a99..c154b5efccde 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -197,54 +197,45 @@ struct guc_wq_item {
 	u32 fence_id;
 } __packed;
 
-struct guc_process_desc {
-	u32 stage_id;
-	u64 db_base_addr;
+struct guc_sched_wq_desc {
 	u32 head;
 	u32 tail;
 	u32 error_offset;
-	u64 wq_base_addr;
-	u32 wq_size_bytes;
 	u32 wq_status;
-	u32 engine_presence;
-	u32 priority;
-	u32 reserved[36];
+	u32 reserved[28];
 } __packed;
 
+/* Helper for context registration H2G */
+struct guc_ctxt_registration_info {
+	u32 flags;
+	u32 context_idx;
+	u32 engine_class;
+	u32 engine_submit_mask;
+	u32 wq_desc_lo;
+	u32 wq_desc_hi;
+	u32 wq_base_lo;
+	u32 wq_base_hi;
+	u32 wq_size;
+	u32 hwlrca_lo;
+	u32 hwlrca_hi;
+};
 #define CONTEXT_REGISTRATION_FLAG_KMD	BIT(0)
 
-#define CONTEXT_POLICY_DEFAULT_EXECUTION_QUANTUM_US 1000000
-#define CONTEXT_POLICY_DEFAULT_PREEMPTION_TIME_US 500000
+/* 32-bit KLV structure as used by policy updates and others */
+struct guc_klv_generic_dw_t {
+	u32 kl;
+	u32 value;
+} __packed;
 
-/* Preempt to idle on quantum expiry */
-#define CONTEXT_POLICY_FLAG_PREEMPT_TO_IDLE	BIT(0)
+/* Format of the UPDATE_CONTEXT_POLICIES H2G data packet */
+struct guc_update_context_policy_header {
+	u32 action;
+	u32 ctx_id;
+} __packed;
 
-/*
- * GuC Context registration descriptor.
- * FIXME: This is only required to exist during context registration.
- * The current 1:1 between guc_lrc_desc and LRCs for the lifetime of the LRC
- * is not required.
- */
-struct guc_lrc_desc {
-	u32 hw_context_desc;
-	u32 slpm_perf_mode_hint;	/* SPLC v1 only */
-	u32 slpm_freq_hint;
-	u32 engine_submit_mask;		/* In logical space */
-	u8 engine_class;
-	u8 reserved0[3];
-	u32 priority;
-	u32 process_desc;
-	u32 wq_addr;
-	u32 wq_size;
-	u32 context_flags;		/* CONTEXT_REGISTRATION_* */
-	/* Time for one workload to execute. (in micro seconds) */
-	u32 execution_quantum;
-	/* Time to wait for a preemption request to complete before issuing a
-	 * reset. (in micro seconds).
-	 */
-	u32 preemption_timeout;
-	u32 policy_flags;		/* CONTEXT_POLICY_* */
-	u32 reserved1[19];
+struct guc_update_context_policy {
+	struct guc_update_context_policy_header header;
+	struct guc_klv_generic_dw_t klv[GUC_CONTEXT_POLICIES_KLV_NUM_IDS];
 } __packed;
 
 #define GUC_POWER_UNSPECIFIED	0
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index e1612c393781..ee45fdb67f32 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -162,7 +162,8 @@ guc_create_parallel(struct intel_engine_cs **engines,
 #define SCHED_STATE_ENABLED				BIT(4)
 #define SCHED_STATE_PENDING_ENABLE			BIT(5)
 #define SCHED_STATE_REGISTERED				BIT(6)
-#define SCHED_STATE_BLOCKED_SHIFT			7
+#define SCHED_STATE_POLICY_REQUIRED			BIT(7)
+#define SCHED_STATE_BLOCKED_SHIFT			8
 #define SCHED_STATE_BLOCKED		BIT(SCHED_STATE_BLOCKED_SHIFT)
 #define SCHED_STATE_BLOCKED_MASK	(0xfff << SCHED_STATE_BLOCKED_SHIFT)
 
@@ -301,6 +302,23 @@ static inline void clr_context_registered(struct intel_context *ce)
 	ce->guc_state.sched_state &= ~SCHED_STATE_REGISTERED;
 }
 
+static inline bool context_policy_required(struct intel_context *ce)
+{
+	return ce->guc_state.sched_state & SCHED_STATE_POLICY_REQUIRED;
+}
+
+static inline void set_context_policy_required(struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
+	ce->guc_state.sched_state |= SCHED_STATE_POLICY_REQUIRED;
+}
+
+static inline void clr_context_policy_required(struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
+	ce->guc_state.sched_state &= ~SCHED_STATE_POLICY_REQUIRED;
+}
+
 static inline u32 context_blocked(struct intel_context *ce)
 {
 	return (ce->guc_state.sched_state & SCHED_STATE_BLOCKED_MASK) >>
@@ -396,12 +414,12 @@ struct sync_semaphore {
 };
 
 struct parent_scratch {
-	struct guc_process_desc pdesc;
+	struct guc_sched_wq_desc wq_desc;
 
 	struct sync_semaphore go;
 	struct sync_semaphore join[MAX_ENGINE_INSTANCE + 1];
 
-	u8 unused[WQ_OFFSET - sizeof(struct guc_process_desc) -
+	u8 unused[WQ_OFFSET - sizeof(struct guc_sched_wq_desc) -
 		sizeof(struct sync_semaphore) * (MAX_ENGINE_INSTANCE + 2)];
 
 	u32 wq[WQ_SIZE / sizeof(u32)];
@@ -438,15 +456,15 @@ __get_parent_scratch(struct intel_context *ce)
 		   LRC_STATE_OFFSET) / sizeof(u32)));
 }
 
-static struct guc_process_desc *
-__get_process_desc(struct intel_context *ce)
+static struct guc_sched_wq_desc *
+__get_wq_desc(struct intel_context *ce)
 {
 	struct parent_scratch *ps = __get_parent_scratch(ce);
 
-	return &ps->pdesc;
+	return &ps->wq_desc;
 }
 
-static u32 *get_wq_pointer(struct guc_process_desc *desc,
+static u32 *get_wq_pointer(struct guc_sched_wq_desc *wq_desc,
 			   struct intel_context *ce,
 			   u32 wqi_size)
 {
@@ -458,7 +476,7 @@ static u32 *get_wq_pointer(struct guc_process_desc *desc,
 #define AVAILABLE_SPACE	\
 	CIRC_SPACE(ce->parallel.guc.wqi_tail, ce->parallel.guc.wqi_head, WQ_SIZE)
 	if (wqi_size > AVAILABLE_SPACE) {
-		ce->parallel.guc.wqi_head = READ_ONCE(desc->head);
+		ce->parallel.guc.wqi_head = READ_ONCE(wq_desc->head);
 
 		if (wqi_size > AVAILABLE_SPACE)
 			return NULL;
@@ -468,15 +486,6 @@ static u32 *get_wq_pointer(struct guc_process_desc *desc,
 	return &__get_parent_scratch(ce)->wq[ce->parallel.guc.wqi_tail / sizeof(u32)];
 }
 
-static struct guc_lrc_desc *__get_lrc_desc(struct intel_guc *guc, u32 index)
-{
-	struct guc_lrc_desc *base = guc->lrc_desc_pool_vaddr;
-
-	GEM_BUG_ON(index >= GUC_MAX_CONTEXT_ID);
-
-	return &base[index];
-}
-
 static inline struct intel_context *__get_context(struct intel_guc *guc, u32 id)
 {
 	struct intel_context *ce = xa_load(&guc->context_lookup, id);
@@ -486,39 +495,11 @@ static inline struct intel_context *__get_context(struct intel_guc *guc, u32 id)
 	return ce;
 }
 
-static int guc_lrc_desc_pool_create(struct intel_guc *guc)
-{
-	u32 size;
-	int ret;
-
-	size = PAGE_ALIGN(sizeof(struct guc_lrc_desc) *
-			  GUC_MAX_CONTEXT_ID);
-	ret = intel_guc_allocate_and_map_vma(guc, size, &guc->lrc_desc_pool,
-					     (void **)&guc->lrc_desc_pool_vaddr);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
-static void guc_lrc_desc_pool_destroy(struct intel_guc *guc)
-{
-	guc->lrc_desc_pool_vaddr = NULL;
-	i915_vma_unpin_and_release(&guc->lrc_desc_pool, I915_VMA_RELEASE_MAP);
-}
-
 static inline bool guc_submission_initialized(struct intel_guc *guc)
 {
 	return guc->submission_initialized;
 }
 
-static inline void _reset_lrc_desc(struct intel_guc *guc, u32 id)
-{
-	struct guc_lrc_desc *desc = __get_lrc_desc(guc, id);
-
-	memset(desc, 0, sizeof(*desc));
-}
-
 static inline bool ctx_id_mapped(struct intel_guc *guc, u32 id)
 {
 	return __get_context(guc, id);
@@ -545,8 +526,6 @@ static inline void clr_ctx_id_mapping(struct intel_guc *guc, u32 id)
 	if (unlikely(!guc_submission_initialized(guc)))
 		return;
 
-	_reset_lrc_desc(guc, id);
-
 	/*
 	 * xarray API doesn't have xa_erase_irqsave wrapper, so calling
 	 * the lower level functions directly.
@@ -632,6 +611,7 @@ int intel_guc_wait_for_idle(struct intel_guc *guc, long timeout)
 					      true, timeout);
 }
 
+static int guc_context_policy_init(struct intel_context *ce, bool loop);
 static int try_context_registration(struct intel_context *ce, bool loop);
 
 static int __guc_add_request(struct intel_guc *guc, struct i915_request *rq)
@@ -658,6 +638,12 @@ static int __guc_add_request(struct intel_guc *guc, struct i915_request *rq)
 	GEM_BUG_ON(!atomic_read(&ce->guc_id.ref));
 	GEM_BUG_ON(context_guc_id_invalid(ce));
 
+	if (context_policy_required(ce)) {
+		err = guc_context_policy_init(ce, false);
+		if (err)
+			return err;
+	}
+
 	spin_lock(&ce->guc_state.lock);
 
 	/*
@@ -751,7 +737,7 @@ static u32 wq_space_until_wrap(struct intel_context *ce)
 	return (WQ_SIZE - ce->parallel.guc.wqi_tail);
 }
 
-static void write_wqi(struct guc_process_desc *desc,
+static void write_wqi(struct guc_sched_wq_desc *wq_desc,
 		      struct intel_context *ce,
 		      u32 wqi_size)
 {
@@ -764,13 +750,13 @@ static void write_wqi(struct guc_process_desc *desc,
 
 	ce->parallel.guc.wqi_tail = (ce->parallel.guc.wqi_tail + wqi_size) &
 		(WQ_SIZE - 1);
-	WRITE_ONCE(desc->tail, ce->parallel.guc.wqi_tail);
+	WRITE_ONCE(wq_desc->tail, ce->parallel.guc.wqi_tail);
 }
 
 static int guc_wq_noop_append(struct intel_context *ce)
 {
-	struct guc_process_desc *desc = __get_process_desc(ce);
-	u32 *wqi = get_wq_pointer(desc, ce, wq_space_until_wrap(ce));
+	struct guc_sched_wq_desc *wq_desc = __get_wq_desc(ce);
+	u32 *wqi = get_wq_pointer(wq_desc, ce, wq_space_until_wrap(ce));
 	u32 len_dw = wq_space_until_wrap(ce) / sizeof(u32) - 1;
 
 	if (!wqi)
@@ -789,7 +775,7 @@ static int __guc_wq_item_append(struct i915_request *rq)
 {
 	struct intel_context *ce = request_to_scheduling_context(rq);
 	struct intel_context *child;
-	struct guc_process_desc *desc = __get_process_desc(ce);
+	struct guc_sched_wq_desc *wq_desc = __get_wq_desc(ce);
 	unsigned int wqi_size = (ce->parallel.number_children + 4) *
 		sizeof(u32);
 	u32 *wqi;
@@ -809,7 +795,7 @@ static int __guc_wq_item_append(struct i915_request *rq)
 			return ret;
 	}
 
-	wqi = get_wq_pointer(desc, ce, wqi_size);
+	wqi = get_wq_pointer(wq_desc, ce, wqi_size);
 	if (!wqi)
 		return -EBUSY;
 
@@ -824,7 +810,7 @@ static int __guc_wq_item_append(struct i915_request *rq)
 	for_each_child(ce, child)
 		*wqi++ = child->ring->tail / sizeof(u64);
 
-	write_wqi(desc, ce, wqi_size);
+	write_wqi(wq_desc, ce, wqi_size);
 
 	return 0;
 }
@@ -1812,20 +1798,10 @@ static void reset_fail_worker_func(struct work_struct *w);
 int intel_guc_submission_init(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
-	int ret;
 
 	if (guc->submission_initialized)
 		return 0;
 
-	ret = guc_lrc_desc_pool_create(guc);
-	if (ret)
-		return ret;
-	/*
-	 * Keep static analysers happy, let them know that we allocated the
-	 * vma after testing that it didn't exist earlier.
-	 */
-	GEM_BUG_ON(!guc->lrc_desc_pool);
-
 	guc->submission_state.guc_ids_bitmap =
 		bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID(guc), GFP_KERNEL);
 	if (!guc->submission_state.guc_ids_bitmap)
@@ -1844,7 +1820,6 @@ void intel_guc_submission_fini(struct intel_guc *guc)
 		return;
 
 	guc_flush_destroyed_contexts(guc);
-	guc_lrc_desc_pool_destroy(guc);
 	i915_sched_engine_put(guc->sched_engine);
 	bitmap_free(guc->submission_state.guc_ids_bitmap);
 	guc->submission_initialized = false;
@@ -2104,69 +2079,96 @@ static void unpin_guc_id(struct intel_guc *guc, struct intel_context *ce)
 
 static int __guc_action_register_multi_lrc(struct intel_guc *guc,
 					   struct intel_context *ce,
-					   u32 guc_id,
-					   u32 offset,
+					   struct guc_ctxt_registration_info *info,
 					   bool loop)
 {
 	struct intel_context *child;
-	u32 action[4 + MAX_ENGINE_INSTANCE];
+	u32 action[13 + (MAX_ENGINE_INSTANCE * 2)];
 	int len = 0;
+	u32 next_id;
 
 	GEM_BUG_ON(ce->parallel.number_children > MAX_ENGINE_INSTANCE);
 
 	action[len++] = INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC;
-	action[len++] = guc_id;
+	action[len++] = info->flags;
+	action[len++] = info->context_idx;
+	action[len++] = info->engine_class;
+	action[len++] = info->engine_submit_mask;
+	action[len++] = info->wq_desc_lo;
+	action[len++] = info->wq_desc_hi;
+	action[len++] = info->wq_base_lo;
+	action[len++] = info->wq_base_hi;
+	action[len++] = info->wq_size;
 	action[len++] = ce->parallel.number_children + 1;
-	action[len++] = offset;
+	action[len++] = info->hwlrca_lo;
+	action[len++] = info->hwlrca_hi;
+
+	next_id = info->context_idx + 1;
 	for_each_child(ce, child) {
-		offset += sizeof(struct guc_lrc_desc);
-		action[len++] = offset;
+		GEM_BUG_ON(next_id++ != child->guc_id.id);
+
+		/*
+		 * NB: GuC interface supports 64 bit LRCA even though i915/HW
+		 * only supports 32 bit currently.
+		 */
+		action[len++] = lower_32_bits(child->lrc.lrca);
+		action[len++] = upper_32_bits(child->lrc.lrca);
 	}
 
+	GEM_BUG_ON(len > ARRAY_SIZE(action));
+
 	return guc_submission_send_busy_loop(guc, action, len, 0, loop);
 }
 
 static int __guc_action_register_context(struct intel_guc *guc,
-					 u32 guc_id,
-					 u32 offset,
+					 struct guc_ctxt_registration_info *info,
 					 bool loop)
 {
 	u32 action[] = {
 		INTEL_GUC_ACTION_REGISTER_CONTEXT,
-		guc_id,
-		offset,
+		info->flags,
+		info->context_idx,
+		info->engine_class,
+		info->engine_submit_mask,
+		info->wq_desc_lo,
+		info->wq_desc_hi,
+		info->wq_base_lo,
+		info->wq_base_hi,
+		info->wq_size,
+		info->hwlrca_lo,
+		info->hwlrca_hi,
 	};
 
 	return guc_submission_send_busy_loop(guc, action, ARRAY_SIZE(action),
 					     0, loop);
 }
 
-static void prepare_context_registration_info(struct intel_context *ce);
+static void prepare_context_registration_info(struct intel_context *ce,
+					      struct guc_ctxt_registration_info *info);
 
 static int register_context(struct intel_context *ce, bool loop)
 {
+	struct guc_ctxt_registration_info info;
 	struct intel_guc *guc = ce_to_guc(ce);
-	u32 offset = intel_guc_ggtt_offset(guc, guc->lrc_desc_pool) +
-		ce->guc_id.id * sizeof(struct guc_lrc_desc);
 	int ret;
 
 	GEM_BUG_ON(intel_context_is_child(ce));
 	trace_intel_context_register(ce);
 
-	prepare_context_registration_info(ce);
+	prepare_context_registration_info(ce, &info);
 
 	if (intel_context_is_parent(ce))
-		ret = __guc_action_register_multi_lrc(guc, ce, ce->guc_id.id,
-						      offset, loop);
+		ret = __guc_action_register_multi_lrc(guc, ce, &info, loop);
 	else
-		ret = __guc_action_register_context(guc, ce->guc_id.id, offset,
-						    loop);
+		ret = __guc_action_register_context(guc, &info, loop);
 	if (likely(!ret)) {
 		unsigned long flags;
 
 		spin_lock_irqsave(&ce->guc_state.lock, flags);
 		set_context_registered(ce);
 		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+
+		guc_context_policy_init(ce, loop);
 	}
 
 	return ret;
@@ -2216,26 +2218,118 @@ static inline u32 get_children_join_value(struct intel_context *ce,
 	return __get_parent_scratch(ce)->join[child_index].semaphore;
 }
 
-static void guc_context_policy_init(struct intel_engine_cs *engine,
-				    struct guc_lrc_desc *desc)
+struct context_policy {
+	u32 count;
+	struct guc_update_context_policy h2g;
+};
+
+static u32 __guc_context_policy_action_size(struct context_policy *policy)
 {
-	desc->policy_flags = 0;
+	size_t bytes = sizeof(policy->h2g.header) +
+		       (sizeof(policy->h2g.klv[0]) * policy->count);
 
-	if (engine->flags & I915_ENGINE_WANT_FORCED_PREEMPTION)
-		desc->policy_flags |= CONTEXT_POLICY_FLAG_PREEMPT_TO_IDLE;
+	return bytes / sizeof(u32);
+}
+
+static void __guc_context_policy_start_klv(struct context_policy *policy, u16 guc_id)
+{
+	policy->h2g.header.action = INTEL_GUC_ACTION_HOST2GUC_UPDATE_CONTEXT_POLICIES;
+	policy->h2g.header.ctx_id = guc_id;
+	policy->count = 0;
+}
+
+#define MAKE_CONTEXT_POLICY_ADD(func, id) \
+static void __guc_context_policy_add_##func(struct context_policy *policy, u32 data) \
+{ \
+	GEM_BUG_ON(policy->count >= GUC_CONTEXT_POLICIES_KLV_NUM_IDS); \
+	policy->h2g.klv[policy->count].kl = \
+		FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
+		FIELD_PREP(GUC_KLV_0_LEN, 1); \
+	policy->h2g.klv[policy->count].value = data; \
+	policy->count++; \
+}
+
+MAKE_CONTEXT_POLICY_ADD(execution_quantum, EXECUTION_QUANTUM)
+MAKE_CONTEXT_POLICY_ADD(preemption_timeout, PREEMPTION_TIMEOUT)
+MAKE_CONTEXT_POLICY_ADD(priority, SCHEDULING_PRIORITY)
+MAKE_CONTEXT_POLICY_ADD(preempt_to_idle, PREEMPT_TO_IDLE_ON_QUANTUM_EXPIRY)
+
+#undef MAKE_CONTEXT_POLICY_ADD
+
+static int __guc_context_set_context_policies(struct intel_guc *guc,
+					      struct context_policy *policy,
+					      bool loop)
+{
+	return guc_submission_send_busy_loop(guc, (u32 *)&policy->h2g,
+					__guc_context_policy_action_size(policy),
+					0, loop);
+}
+
+static int guc_context_policy_init(struct intel_context *ce, bool loop)
+{
+	struct intel_engine_cs *engine = ce->engine;
+	struct intel_guc *guc = &engine->gt->uc.guc;
+	struct context_policy policy;
+	u32 execution_quantum;
+	u32 preemption_timeout;
+	bool missing = false;
+	unsigned long flags;
+	int ret;
 
 	/* NB: For both of these, zero means disabled. */
-	desc->execution_quantum = engine->props.timeslice_duration_ms * 1000;
-	desc->preemption_timeout = engine->props.preempt_timeout_ms * 1000;
+	execution_quantum = engine->props.timeslice_duration_ms * 1000;
+	preemption_timeout = engine->props.preempt_timeout_ms * 1000;
+
+	__guc_context_policy_start_klv(&policy, ce->guc_id.id);
+
+	__guc_context_policy_add_priority(&policy, ce->guc_state.prio);
+	__guc_context_policy_add_execution_quantum(&policy, execution_quantum);
+	__guc_context_policy_add_preemption_timeout(&policy, preemption_timeout);
+
+	if (engine->flags & I915_ENGINE_WANT_FORCED_PREEMPTION)
+		__guc_context_policy_add_preempt_to_idle(&policy, 1);
+
+	ret = __guc_context_set_context_policies(guc, &policy, loop);
+	missing = ret != 0;
+
+	if (!missing && intel_context_is_parent(ce)) {
+		struct intel_context *child;
+
+		for_each_child(ce, child) {
+			__guc_context_policy_start_klv(&policy, child->guc_id.id);
+
+			if (engine->flags & I915_ENGINE_WANT_FORCED_PREEMPTION)
+				__guc_context_policy_add_preempt_to_idle(&policy, 1);
+
+			child->guc_state.prio = ce->guc_state.prio;
+			__guc_context_policy_add_priority(&policy, ce->guc_state.prio);
+			__guc_context_policy_add_execution_quantum(&policy, execution_quantum);
+			__guc_context_policy_add_preemption_timeout(&policy, preemption_timeout);
+
+			ret = __guc_context_set_context_policies(guc, &policy, loop);
+			if (ret) {
+				missing = true;
+				break;
+			}
+		}
+	}
+
+	spin_lock_irqsave(&ce->guc_state.lock, flags);
+	if (missing)
+		set_context_policy_required(ce);
+	else
+		clr_context_policy_required(ce);
+	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+
+	return ret;
 }
 
-static void prepare_context_registration_info(struct intel_context *ce)
+static void prepare_context_registration_info(struct intel_context *ce,
+					      struct guc_ctxt_registration_info *info)
 {
 	struct intel_engine_cs *engine = ce->engine;
 	struct intel_guc *guc = &engine->gt->uc.guc;
 	u32 ctx_id = ce->guc_id.id;
-	struct guc_lrc_desc *desc;
-	struct intel_context *child;
 
 	GEM_BUG_ON(!engine->mask);
 
@@ -2246,47 +2340,42 @@ static void prepare_context_registration_info(struct intel_context *ce)
 	GEM_BUG_ON(i915_gem_object_is_lmem(guc->ct.vma->obj) !=
 		   i915_gem_object_is_lmem(ce->ring->vma->obj));
 
-	desc = __get_lrc_desc(guc, ctx_id);
-	desc->engine_class = engine_class_to_guc_class(engine->class);
-	desc->engine_submit_mask = engine->logical_mask;
-	desc->hw_context_desc = ce->lrc.lrca;
-	desc->priority = ce->guc_state.prio;
-	desc->context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
-	guc_context_policy_init(engine, desc);
+	memset(info, 0, sizeof(*info));
+	info->context_idx = ctx_id;
+	info->engine_class = engine_class_to_guc_class(engine->class);
+	info->engine_submit_mask = engine->logical_mask;
+	/*
+	 * NB: GuC interface supports 64 bit LRCA even though i915/HW
+	 * only supports 32 bit currently.
+	 */
+	info->hwlrca_lo = lower_32_bits(ce->lrc.lrca);
+	info->hwlrca_hi = upper_32_bits(ce->lrc.lrca);
+	info->flags = CONTEXT_REGISTRATION_FLAG_KMD;
 
 	/*
 	 * If context is a parent, we need to register a process descriptor
 	 * describing a work queue and register all child contexts.
 	 */
 	if (intel_context_is_parent(ce)) {
-		struct guc_process_desc *pdesc;
+		struct guc_sched_wq_desc *wq_desc;
+		u64 wq_desc_offset, wq_base_offset;
 
 		ce->parallel.guc.wqi_tail = 0;
 		ce->parallel.guc.wqi_head = 0;
 
-		desc->process_desc = i915_ggtt_offset(ce->state) +
-			__get_parent_scratch_offset(ce);
-		desc->wq_addr = i915_ggtt_offset(ce->state) +
-			__get_wq_offset(ce);
-		desc->wq_size = WQ_SIZE;
+		wq_desc_offset = i915_ggtt_offset(ce->state) +
+				 __get_parent_scratch_offset(ce);
+		wq_base_offset = i915_ggtt_offset(ce->state) +
+				 __get_wq_offset(ce);
+		info->wq_desc_lo = lower_32_bits(wq_desc_offset);
+		info->wq_desc_hi = upper_32_bits(wq_desc_offset);
+		info->wq_base_lo = lower_32_bits(wq_base_offset);
+		info->wq_base_hi = upper_32_bits(wq_base_offset);
+		info->wq_size = WQ_SIZE;
 
-		pdesc = __get_process_desc(ce);
-		memset(pdesc, 0, sizeof(*(pdesc)));
-		pdesc->stage_id = ce->guc_id.id;
-		pdesc->wq_base_addr = desc->wq_addr;
-		pdesc->wq_size_bytes = desc->wq_size;
-		pdesc->wq_status = WQ_STATUS_ACTIVE;
-
-		for_each_child(ce, child) {
-			desc = __get_lrc_desc(guc, child->guc_id.id);
-
-			desc->engine_class =
-				engine_class_to_guc_class(engine->class);
-			desc->hw_context_desc = child->lrc.lrca;
-			desc->priority = ce->guc_state.prio;
-			desc->context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
-			guc_context_policy_init(engine, desc);
-		}
+		wq_desc = __get_wq_desc(ce);
+		memset(wq_desc, 0, sizeof(*wq_desc));
+		wq_desc->wq_status = WQ_STATUS_ACTIVE;
 
 		clear_children_join_go_memory(ce);
 	}
@@ -2602,13 +2691,11 @@ static void __guc_context_set_preemption_timeout(struct intel_guc *guc,
 						 u16 guc_id,
 						 u32 preemption_timeout)
 {
-	u32 action[] = {
-		INTEL_GUC_ACTION_SET_CONTEXT_PREEMPTION_TIMEOUT,
-		guc_id,
-		preemption_timeout
-	};
+	struct context_policy policy;
 
-	intel_guc_send_busy_loop(guc, action, ARRAY_SIZE(action), 0, true);
+	__guc_context_policy_start_klv(&policy, guc_id);
+	__guc_context_policy_add_preemption_timeout(&policy, preemption_timeout);
+	__guc_context_set_context_policies(guc, &policy, true);
 }
 
 static void guc_context_ban(struct intel_context *ce, struct i915_request *rq)
@@ -2853,16 +2940,20 @@ static int guc_context_alloc(struct intel_context *ce)
 	return lrc_alloc(ce, ce->engine);
 }
 
+static void __guc_context_set_prio(struct intel_guc *guc,
+				   struct intel_context *ce)
+{
+	struct context_policy policy;
+
+	__guc_context_policy_start_klv(&policy, ce->guc_id.id);
+	__guc_context_policy_add_priority(&policy, ce->guc_state.prio);
+	__guc_context_set_context_policies(guc, &policy, true);
+}
+
 static void guc_context_set_prio(struct intel_guc *guc,
 				 struct intel_context *ce,
 				 u8 prio)
 {
-	u32 action[] = {
-		INTEL_GUC_ACTION_SET_CONTEXT_PRIORITY,
-		ce->guc_id.id,
-		prio,
-	};
-
 	GEM_BUG_ON(prio < GUC_CLIENT_PRIORITY_KMD_HIGH ||
 		   prio > GUC_CLIENT_PRIORITY_NORMAL);
 	lockdep_assert_held(&ce->guc_state.lock);
@@ -2873,9 +2964,9 @@ static void guc_context_set_prio(struct intel_guc *guc,
 		return;
 	}
 
-	guc_submission_send_busy_loop(guc, action, ARRAY_SIZE(action), 0, true);
-
 	ce->guc_state.prio = prio;
+	__guc_context_set_prio(guc, ce);
+
 	trace_intel_context_set_prio(ce);
 }
 
@@ -4360,17 +4451,17 @@ void intel_guc_submission_print_context_info(struct intel_guc *guc,
 		guc_log_context_priority(p, ce);
 
 		if (intel_context_is_parent(ce)) {
-			struct guc_process_desc *desc = __get_process_desc(ce);
+			struct guc_sched_wq_desc *wq_desc = __get_wq_desc(ce);
 			struct intel_context *child;
 
 			drm_printf(p, "\t\tNumber children: %u\n",
 				   ce->parallel.number_children);
 			drm_printf(p, "\t\tWQI Head: %u\n",
-				   READ_ONCE(desc->head));
+				   READ_ONCE(wq_desc->head));
 			drm_printf(p, "\t\tWQI Tail: %u\n",
-				   READ_ONCE(desc->tail));
+				   READ_ONCE(wq_desc->tail));
 			drm_printf(p, "\t\tWQI Status: %u\n\n",
-				   READ_ONCE(desc->wq_status));
+				   READ_ONCE(wq_desc->wq_status));
 
 			if (ce->engine->emit_bb_start ==
 			    emit_bb_start_parent_no_preempt_mid_batch) {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index bb864655c495..cb5dd16421d0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -53,22 +53,22 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * firmware as TGL.
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_def) \
-	fw_def(DG2,          0, guc_def(dg2,  69, 0, 3)) \
-	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 69, 0, 3)) \
-	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  69, 0, 3)) \
-	fw_def(DG1,          0, guc_def(dg1,  69, 0, 3)) \
-	fw_def(ROCKETLAKE,   0, guc_def(tgl,  69, 0, 3)) \
-	fw_def(TIGERLAKE,    0, guc_def(tgl,  69, 0, 3)) \
-	fw_def(JASPERLAKE,   0, guc_def(ehl,  69, 0, 3)) \
-	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  69, 0, 3)) \
-	fw_def(ICELAKE,      0, guc_def(icl,  69, 0, 3)) \
-	fw_def(COMETLAKE,    5, guc_def(cml,  69, 0, 3)) \
-	fw_def(COMETLAKE,    0, guc_def(kbl,  69, 0, 3)) \
-	fw_def(COFFEELAKE,   0, guc_def(kbl,  69, 0, 3)) \
-	fw_def(GEMINILAKE,   0, guc_def(glk,  69, 0, 3)) \
-	fw_def(KABYLAKE,     0, guc_def(kbl,  69, 0, 3)) \
-	fw_def(BROXTON,      0, guc_def(bxt,  69, 0, 3)) \
-	fw_def(SKYLAKE,      0, guc_def(skl,  69, 0, 3))
+	fw_def(DG2,          0, guc_def(dg2,  70, 1, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 70, 1, 1)) \
+	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  70, 1, 1)) \
+	fw_def(DG1,          0, guc_def(dg1,  70, 1, 1)) \
+	fw_def(ROCKETLAKE,   0, guc_def(tgl,  70, 1, 1)) \
+	fw_def(TIGERLAKE,    0, guc_def(tgl,  70, 1, 1)) \
+	fw_def(JASPERLAKE,   0, guc_def(ehl,  70, 1, 1)) \
+	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  70, 1, 1)) \
+	fw_def(ICELAKE,      0, guc_def(icl,  70, 1, 1)) \
+	fw_def(COMETLAKE,    5, guc_def(cml,  70, 1, 1)) \
+	fw_def(COMETLAKE,    0, guc_def(kbl,  70, 1, 1)) \
+	fw_def(COFFEELAKE,   0, guc_def(kbl,  70, 1, 1)) \
+	fw_def(GEMINILAKE,   0, guc_def(glk,  70, 1, 1)) \
+	fw_def(KABYLAKE,     0, guc_def(kbl,  70, 1, 1)) \
+	fw_def(BROXTON,      0, guc_def(bxt,  70, 1, 1)) \
+	fw_def(SKYLAKE,      0, guc_def(skl,  70, 1, 1))
 
 #define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_def) \
 	fw_def(ALDERLAKE_P,  0, huc_def(tgl,  7, 9, 3)) \
-- 
2.25.1

