Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD91F3ECAE3
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 22:21:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E0489DA9;
	Sun, 15 Aug 2021 20:21:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21FFD89D5E
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Aug 2021 20:21:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="276792978"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="276792978"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 13:21:20 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="461849494"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 13:21:20 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>, drmdevel@freedesktop.org
Cc: <daniel.vetter@ffwll.ch>
Date: Sun, 15 Aug 2021 13:15:58 -0700
Message-Id: <20210815201559.1150-21-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210815201559.1150-1-matthew.brost@intel.com>
References: <20210815201559.1150-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 20/21] drm/i915/guc: Move GuC priority fields in
 context under guc_active
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

Move GuC management fields in context under guc_active struct as this is
where the lock that protects theses fields lives. Also only set guc_prio
field once during context init.

Fixes: ee242ca704d3 ("drm/i915/guc: Implement GuC priority management")
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Cc: <stable@vger.kernel.org>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h | 12 ++--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 68 +++++++++++--------
 drivers/gpu/drm/i915/i915_trace.h             |  2 +-
 3 files changed, 45 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 524a35a78bf4..f6989e6807f7 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -112,6 +112,7 @@ struct intel_context {
 #define CONTEXT_FORCE_SINGLE_SUBMISSION	7
 #define CONTEXT_NOPREEMPT		8
 #define CONTEXT_LRCA_DIRTY		9
+#define CONTEXT_GUC_INIT		10
 
 	struct {
 		u64 timeout_us;
@@ -178,6 +179,11 @@ struct intel_context {
 		spinlock_t lock;
 		/** requests: active requests on this context */
 		struct list_head requests;
+		/*
+		 * GuC priority management
+		 */
+		u8 guc_prio;
+		u32 guc_prio_count[GUC_CLIENT_PRIORITY_NUM];
 	} guc_active;
 
 	/* GuC LRC descriptor ID */
@@ -191,12 +197,6 @@ struct intel_context {
 	 */
 	struct list_head guc_id_link;
 
-	/*
-	 * GuC priority management
-	 */
-	u8 guc_prio;
-	u32 guc_prio_count[GUC_CLIENT_PRIORITY_NUM];
-
 #ifdef CONFIG_DRM_I915_SELFTEST
 	/**
 	 * @drop_schedule_enable: Force drop of schedule enable G2H for selftest
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index e55c7c36ff56..be5d798065a8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1352,8 +1352,6 @@ static void guc_context_policy_init(struct intel_engine_cs *engine,
 	desc->preemption_timeout = engine->props.preempt_timeout_ms * 1000;
 }
 
-static inline u8 map_i915_prio_to_guc_prio(int prio);
-
 static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
 {
 	struct intel_engine_cs *engine = ce->engine;
@@ -1361,8 +1359,6 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
 	struct intel_guc *guc = &engine->gt->uc.guc;
 	u32 desc_idx = ce->guc_id;
 	struct guc_lrc_desc *desc;
-	const struct i915_gem_context *ctx;
-	int prio = I915_CONTEXT_DEFAULT_PRIORITY;
 	bool context_registered;
 	intel_wakeref_t wakeref;
 	int ret = 0;
@@ -1379,12 +1375,6 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
 
 	context_registered = lrc_desc_registered(guc, desc_idx);
 
-	rcu_read_lock();
-	ctx = rcu_dereference(ce->gem_context);
-	if (ctx)
-		prio = ctx->sched.priority;
-	rcu_read_unlock();
-
 	reset_lrc_desc(guc, desc_idx);
 	set_lrc_desc_registered(guc, desc_idx, ce);
 
@@ -1393,8 +1383,7 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
 	desc->engine_submit_mask = adjust_engine_mask(engine->class,
 						      engine->mask);
 	desc->hw_context_desc = ce->lrc.lrca;
-	ce->guc_prio = map_i915_prio_to_guc_prio(prio);
-	desc->priority = ce->guc_prio;
+	desc->priority = ce->guc_active.guc_prio;
 	desc->context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
 	guc_context_policy_init(engine, desc);
 
@@ -1796,10 +1785,10 @@ static inline void guc_lrc_desc_unpin(struct intel_context *ce)
 
 static void __guc_context_destroy(struct intel_context *ce)
 {
-	GEM_BUG_ON(ce->guc_prio_count[GUC_CLIENT_PRIORITY_KMD_HIGH] ||
-		   ce->guc_prio_count[GUC_CLIENT_PRIORITY_HIGH] ||
-		   ce->guc_prio_count[GUC_CLIENT_PRIORITY_KMD_NORMAL] ||
-		   ce->guc_prio_count[GUC_CLIENT_PRIORITY_NORMAL]);
+	GEM_BUG_ON(ce->guc_active.guc_prio_count[GUC_CLIENT_PRIORITY_KMD_HIGH] ||
+		   ce->guc_active.guc_prio_count[GUC_CLIENT_PRIORITY_HIGH] ||
+		   ce->guc_active.guc_prio_count[GUC_CLIENT_PRIORITY_KMD_NORMAL] ||
+		   ce->guc_active.guc_prio_count[GUC_CLIENT_PRIORITY_NORMAL]);
 	GEM_BUG_ON(ce->guc_state.number_committed_requests);
 
 	lrc_fini(ce);
@@ -1909,14 +1898,17 @@ static void guc_context_set_prio(struct intel_guc *guc,
 
 	GEM_BUG_ON(prio < GUC_CLIENT_PRIORITY_KMD_HIGH ||
 		   prio > GUC_CLIENT_PRIORITY_NORMAL);
+	lockdep_assert_held(&ce->guc_active.lock);
 
-	if (ce->guc_prio == prio || submission_disabled(guc) ||
-	    !context_registered(ce))
+	if (ce->guc_active.guc_prio == prio || submission_disabled(guc) ||
+	    !context_registered(ce)) {
+		ce->guc_active.guc_prio = prio;
 		return;
+	}
 
 	guc_submission_send_busy_loop(guc, action, ARRAY_SIZE(action), 0, true);
 
-	ce->guc_prio = prio;
+	ce->guc_active.guc_prio = prio;
 	trace_intel_context_set_prio(ce);
 }
 
@@ -1936,24 +1928,24 @@ static inline void add_context_inflight_prio(struct intel_context *ce,
 					     u8 guc_prio)
 {
 	lockdep_assert_held(&ce->guc_active.lock);
-	GEM_BUG_ON(guc_prio >= ARRAY_SIZE(ce->guc_prio_count));
+	GEM_BUG_ON(guc_prio >= ARRAY_SIZE(ce->guc_active.guc_prio_count));
 
-	++ce->guc_prio_count[guc_prio];
+	++ce->guc_active.guc_prio_count[guc_prio];
 
 	/* Overflow protection */
-	GEM_WARN_ON(!ce->guc_prio_count[guc_prio]);
+	GEM_WARN_ON(!ce->guc_active.guc_prio_count[guc_prio]);
 }
 
 static inline void sub_context_inflight_prio(struct intel_context *ce,
 					     u8 guc_prio)
 {
 	lockdep_assert_held(&ce->guc_active.lock);
-	GEM_BUG_ON(guc_prio >= ARRAY_SIZE(ce->guc_prio_count));
+	GEM_BUG_ON(guc_prio >= ARRAY_SIZE(ce->guc_active.guc_prio_count));
 
 	/* Underflow protection */
-	GEM_WARN_ON(!ce->guc_prio_count[guc_prio]);
+	GEM_WARN_ON(!ce->guc_active.guc_prio_count[guc_prio]);
 
-	--ce->guc_prio_count[guc_prio];
+	--ce->guc_active.guc_prio_count[guc_prio];
 }
 
 static inline void update_context_prio(struct intel_context *ce)
@@ -1966,8 +1958,8 @@ static inline void update_context_prio(struct intel_context *ce)
 
 	lockdep_assert_held(&ce->guc_active.lock);
 
-	for (i = 0; i < ARRAY_SIZE(ce->guc_prio_count); ++i) {
-		if (ce->guc_prio_count[i]) {
+	for (i = 0; i < ARRAY_SIZE(ce->guc_active.guc_prio_count); ++i) {
+		if (ce->guc_active.guc_prio_count[i]) {
 			guc_context_set_prio(guc, ce, i);
 			break;
 		}
@@ -2106,6 +2098,20 @@ static bool context_needs_register(struct intel_context *ce, bool new_guc_id)
 		!submission_disabled(ce_to_guc(ce));
 }
 
+static void guc_context_init(struct intel_context *ce)
+{
+	const struct i915_gem_context *ctx;
+	int prio = I915_CONTEXT_DEFAULT_PRIORITY;
+
+	rcu_read_lock();
+	ctx = rcu_dereference(ce->gem_context);
+	if (ctx)
+		prio = ctx->sched.priority;
+	rcu_read_unlock();
+
+	ce->guc_active.guc_prio = map_i915_prio_to_guc_prio(prio);
+}
+
 static int guc_request_alloc(struct i915_request *rq)
 {
 	struct intel_context *ce = rq->context;
@@ -2137,6 +2143,9 @@ static int guc_request_alloc(struct i915_request *rq)
 
 	rq->reserved_space -= GUC_REQUEST_SIZE;
 
+	if (unlikely(!test_bit(CONTEXT_GUC_INIT, &ce->flags)))
+		guc_context_init(ce);
+
 	/*
 	 * Call pin_guc_id here rather than in the pinning step as with
 	 * dma_resv, contexts can be repeatedly pinned / unpinned trashing the
@@ -3016,13 +3025,12 @@ static inline void guc_log_context_priority(struct drm_printer *p,
 {
 	int i;
 
-	drm_printf(p, "\t\tPriority: %d\n",
-		   ce->guc_prio);
+	drm_printf(p, "\t\tPriority: %d\n", ce->guc_active.guc_prio);
 	drm_printf(p, "\t\tNumber Requests (lower index == higher priority)\n");
 	for (i = GUC_CLIENT_PRIORITY_KMD_HIGH;
 	     i < GUC_CLIENT_PRIORITY_NUM; ++i) {
 		drm_printf(p, "\t\tNumber requests in priority band[%d]: %d\n",
-			   i, ce->guc_prio_count[i]);
+			   i, ce->guc_active.guc_prio_count[i]);
 	}
 	drm_printf(p, "\n");
 }
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index 0a77eb2944b5..518a6fa2cca7 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -910,7 +910,7 @@ DECLARE_EVENT_CLASS(intel_context,
 			   __entry->guc_id = ce->guc_id;
 			   __entry->pin_count = atomic_read(&ce->pin_count);
 			   __entry->sched_state = ce->guc_state.sched_state;
-			   __entry->guc_prio = ce->guc_prio;
+			   __entry->guc_prio = ce->guc_active.guc_prio;
 			   ),
 
 		    TP_printk("guc_id=%d, pin_count=%d sched_state=0x%x, guc_prio=%u",
-- 
2.32.0

