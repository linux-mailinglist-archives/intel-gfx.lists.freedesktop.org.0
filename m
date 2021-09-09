Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 771EB405B8A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 18:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD5546E8F8;
	Thu,  9 Sep 2021 16:53:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56E066E8D4;
 Thu,  9 Sep 2021 16:52:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="218988864"
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="218988864"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 09:52:54 -0700
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="649003845"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 09:52:53 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <john.c.harrison@intel.com>,
	<daniele.ceraolospurio@intel.com>
Date: Thu,  9 Sep 2021 09:47:38 -0700
Message-Id: <20210909164744.31249-18-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210909164744.31249-1-matthew.brost@intel.com>
References: <20210909164744.31249-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/23] drm/i915/guc: Rework and simplify locking
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

Rework and simplify the locking with GuC subission. Drop
sched_state_no_lock and move all fields under the guc_state.sched_state
and protect all these fields with guc_state.lock . This requires
changing the locking hierarchy from guc_state.lock -> sched_engine.lock
to sched_engine.lock -> guc_state.lock.

v2:
 (Daniele)
  - Don't check fields outside of lock during sched disable, check less
    fields within lock as some of the outside are no longer needed

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h |   5 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 199 ++++++++----------
 drivers/gpu/drm/i915/i915_trace.h             |   6 +-
 3 files changed, 90 insertions(+), 120 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 5aecb9038b5b..d2f798ef678c 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -161,7 +161,7 @@ struct intel_context {
 		 * sched_state: scheduling state of this context using GuC
 		 * submission
 		 */
-		u16 sched_state;
+		u32 sched_state;
 		/*
 		 * fences: maintains of list of requests that have a submit
 		 * fence related to GuC submission
@@ -178,9 +178,6 @@ struct intel_context {
 		struct list_head requests;
 	} guc_active;
 
-	/* GuC scheduling state flags that do not require a lock. */
-	atomic_t guc_sched_state_no_lock;
-
 	/* GuC LRC descriptor ID */
 	u16 guc_id;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 99f223114331..383dc1017004 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -72,87 +72,24 @@ guc_create_virtual(struct intel_engine_cs **siblings, unsigned int count);
 
 #define GUC_REQUEST_SIZE 64 /* bytes */
 
-/*
- * Below is a set of functions which control the GuC scheduling state which do
- * not require a lock as all state transitions are mutually exclusive. i.e. It
- * is not possible for the context pinning code and submission, for the same
- * context, to be executing simultaneously. We still need an atomic as it is
- * possible for some of the bits to changing at the same time though.
- */
-#define SCHED_STATE_NO_LOCK_ENABLED			BIT(0)
-#define SCHED_STATE_NO_LOCK_PENDING_ENABLE		BIT(1)
-#define SCHED_STATE_NO_LOCK_REGISTERED			BIT(2)
-static inline bool context_enabled(struct intel_context *ce)
-{
-	return (atomic_read(&ce->guc_sched_state_no_lock) &
-		SCHED_STATE_NO_LOCK_ENABLED);
-}
-
-static inline void set_context_enabled(struct intel_context *ce)
-{
-	atomic_or(SCHED_STATE_NO_LOCK_ENABLED, &ce->guc_sched_state_no_lock);
-}
-
-static inline void clr_context_enabled(struct intel_context *ce)
-{
-	atomic_and((u32)~SCHED_STATE_NO_LOCK_ENABLED,
-		   &ce->guc_sched_state_no_lock);
-}
-
-static inline bool context_pending_enable(struct intel_context *ce)
-{
-	return (atomic_read(&ce->guc_sched_state_no_lock) &
-		SCHED_STATE_NO_LOCK_PENDING_ENABLE);
-}
-
-static inline void set_context_pending_enable(struct intel_context *ce)
-{
-	atomic_or(SCHED_STATE_NO_LOCK_PENDING_ENABLE,
-		  &ce->guc_sched_state_no_lock);
-}
-
-static inline void clr_context_pending_enable(struct intel_context *ce)
-{
-	atomic_and((u32)~SCHED_STATE_NO_LOCK_PENDING_ENABLE,
-		   &ce->guc_sched_state_no_lock);
-}
-
-static inline bool context_registered(struct intel_context *ce)
-{
-	return (atomic_read(&ce->guc_sched_state_no_lock) &
-		SCHED_STATE_NO_LOCK_REGISTERED);
-}
-
-static inline void set_context_registered(struct intel_context *ce)
-{
-	atomic_or(SCHED_STATE_NO_LOCK_REGISTERED,
-		  &ce->guc_sched_state_no_lock);
-}
-
-static inline void clr_context_registered(struct intel_context *ce)
-{
-	atomic_and((u32)~SCHED_STATE_NO_LOCK_REGISTERED,
-		   &ce->guc_sched_state_no_lock);
-}
-
 /*
  * Below is a set of functions which control the GuC scheduling state which
- * require a lock, aside from the special case where the functions are called
- * from guc_lrc_desc_pin(). In that case it isn't possible for any other code
- * path to be executing on the context.
+ * require a lock.
  */
 #define SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGISTER	BIT(0)
 #define SCHED_STATE_DESTROYED				BIT(1)
 #define SCHED_STATE_PENDING_DISABLE			BIT(2)
 #define SCHED_STATE_BANNED				BIT(3)
-#define SCHED_STATE_BLOCKED_SHIFT			4
+#define SCHED_STATE_ENABLED				BIT(4)
+#define SCHED_STATE_PENDING_ENABLE			BIT(5)
+#define SCHED_STATE_REGISTERED				BIT(6)
+#define SCHED_STATE_BLOCKED_SHIFT			7
 #define SCHED_STATE_BLOCKED		BIT(SCHED_STATE_BLOCKED_SHIFT)
 #define SCHED_STATE_BLOCKED_MASK	(0xfff << SCHED_STATE_BLOCKED_SHIFT)
 
 static inline void init_sched_state(struct intel_context *ce)
 {
 	lockdep_assert_held(&ce->guc_state.lock);
-	atomic_set(&ce->guc_sched_state_no_lock, 0);
 	ce->guc_state.sched_state &= SCHED_STATE_BLOCKED_MASK;
 }
 
@@ -163,9 +100,8 @@ static bool sched_state_is_init(struct intel_context *ce)
 	 * XXX: Kernel contexts can have SCHED_STATE_NO_LOCK_REGISTERED after
 	 * suspend.
 	 */
-	return !(atomic_read(&ce->guc_sched_state_no_lock) &
-		 ~SCHED_STATE_NO_LOCK_REGISTERED) &&
-		!(ce->guc_state.sched_state &= ~SCHED_STATE_BLOCKED_MASK);
+	return !(ce->guc_state.sched_state &=
+		 ~(SCHED_STATE_BLOCKED_MASK | SCHED_STATE_REGISTERED));
 }
 
 static inline bool
@@ -238,6 +174,57 @@ static inline void clr_context_banned(struct intel_context *ce)
 	ce->guc_state.sched_state &= ~SCHED_STATE_BANNED;
 }
 
+static inline bool context_enabled(struct intel_context *ce)
+{
+	return ce->guc_state.sched_state & SCHED_STATE_ENABLED;
+}
+
+static inline void set_context_enabled(struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
+	ce->guc_state.sched_state |= SCHED_STATE_ENABLED;
+}
+
+static inline void clr_context_enabled(struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
+	ce->guc_state.sched_state &= ~SCHED_STATE_ENABLED;
+}
+
+static inline bool context_pending_enable(struct intel_context *ce)
+{
+	return ce->guc_state.sched_state & SCHED_STATE_PENDING_ENABLE;
+}
+
+static inline void set_context_pending_enable(struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
+	ce->guc_state.sched_state |= SCHED_STATE_PENDING_ENABLE;
+}
+
+static inline void clr_context_pending_enable(struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
+	ce->guc_state.sched_state &= ~SCHED_STATE_PENDING_ENABLE;
+}
+
+static inline bool context_registered(struct intel_context *ce)
+{
+	return ce->guc_state.sched_state & SCHED_STATE_REGISTERED;
+}
+
+static inline void set_context_registered(struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
+	ce->guc_state.sched_state |= SCHED_STATE_REGISTERED;
+}
+
+static inline void clr_context_registered(struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
+	ce->guc_state.sched_state &= ~SCHED_STATE_REGISTERED;
+}
+
 static inline u32 context_blocked(struct intel_context *ce)
 {
 	return (ce->guc_state.sched_state & SCHED_STATE_BLOCKED_MASK) >>
@@ -246,7 +233,6 @@ static inline u32 context_blocked(struct intel_context *ce)
 
 static inline void incr_context_blocked(struct intel_context *ce)
 {
-	lockdep_assert_held(&ce->engine->sched_engine->lock);
 	lockdep_assert_held(&ce->guc_state.lock);
 
 	ce->guc_state.sched_state += SCHED_STATE_BLOCKED;
@@ -256,7 +242,6 @@ static inline void incr_context_blocked(struct intel_context *ce)
 
 static inline void decr_context_blocked(struct intel_context *ce)
 {
-	lockdep_assert_held(&ce->engine->sched_engine->lock);
 	lockdep_assert_held(&ce->guc_state.lock);
 
 	GEM_BUG_ON(!context_blocked(ce));	/* Underflow check */
@@ -452,6 +437,8 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
 	u32 g2h_len_dw = 0;
 	bool enabled;
 
+	lockdep_assert_held(&rq->engine->sched_engine->lock);
+
 	/*
 	 * Corner case where requests were sitting in the priority list or a
 	 * request resubmitted after the context was banned.
@@ -459,7 +446,7 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
 	if (unlikely(intel_context_is_banned(ce))) {
 		i915_request_put(i915_request_mark_eio(rq));
 		intel_engine_signal_breadcrumbs(ce->engine);
-		goto out;
+		return 0;
 	}
 
 	GEM_BUG_ON(!atomic_read(&ce->guc_id_ref));
@@ -472,9 +459,11 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
 	if (unlikely(!lrc_desc_registered(guc, ce->guc_id))) {
 		err = guc_lrc_desc_pin(ce, false);
 		if (unlikely(err))
-			goto out;
+			return err;
 	}
 
+	spin_lock(&ce->guc_state.lock);
+
 	/*
 	 * The request / context will be run on the hardware when scheduling
 	 * gets enabled in the unblock.
@@ -509,6 +498,7 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
 		trace_i915_request_guc_submit(rq);
 
 out:
+	spin_unlock(&ce->guc_state.lock);
 	return err;
 }
 
@@ -747,6 +737,7 @@ void intel_guc_submission_reset_prepare(struct intel_guc *guc)
 			wait_for_reset(guc, &guc->outstanding_submission_g2h);
 		} while (!list_empty(&guc->ct.requests.incoming));
 	}
+
 	scrub_guc_desc_for_outstanding_g2h(guc);
 }
 
@@ -1147,7 +1138,11 @@ static int steal_guc_id(struct intel_guc *guc)
 
 		list_del_init(&ce->guc_id_link);
 		guc_id = ce->guc_id;
+
+		spin_lock(&ce->guc_state.lock);
 		clr_context_registered(ce);
+		spin_unlock(&ce->guc_state.lock);
+
 		set_context_guc_id_invalid(ce);
 		return guc_id;
 	} else {
@@ -1183,6 +1178,8 @@ static int pin_guc_id(struct intel_guc *guc, struct intel_context *ce)
 try_again:
 	spin_lock_irqsave(&guc->contexts_lock, flags);
 
+	might_lock(&ce->guc_state.lock);
+
 	if (context_guc_id_invalid(ce)) {
 		ret = assign_guc_id(guc, &ce->guc_id);
 		if (ret)
@@ -1262,8 +1259,13 @@ static int register_context(struct intel_context *ce, bool loop)
 	trace_intel_context_register(ce);
 
 	ret = __guc_action_register_context(guc, ce->guc_id, offset, loop);
-	if (likely(!ret))
+	if (likely(!ret)) {
+		unsigned long flags;
+
+		spin_lock_irqsave(&ce->guc_state.lock, flags);
 		set_context_registered(ce);
+		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+	}
 
 	return ret;
 }
@@ -1537,7 +1539,6 @@ static u16 prep_context_pending_disable(struct intel_context *ce)
 static struct i915_sw_fence *guc_context_block(struct intel_context *ce)
 {
 	struct intel_guc *guc = ce_to_guc(ce);
-	struct i915_sched_engine *sched_engine = ce->engine->sched_engine;
 	unsigned long flags;
 	struct intel_runtime_pm *runtime_pm = ce->engine->uncore->rpm;
 	intel_wakeref_t wakeref;
@@ -1546,13 +1547,7 @@ static struct i915_sw_fence *guc_context_block(struct intel_context *ce)
 
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
 
-	/*
-	 * Sync with submission path, increment before below changes to context
-	 * state.
-	 */
-	spin_lock(&sched_engine->lock);
 	incr_context_blocked(ce);
-	spin_unlock(&sched_engine->lock);
 
 	enabled = context_enabled(ce);
 	if (unlikely(!enabled || submission_disabled(guc))) {
@@ -1598,7 +1593,6 @@ static bool context_cant_unblock(struct intel_context *ce)
 static void guc_context_unblock(struct intel_context *ce)
 {
 	struct intel_guc *guc = ce_to_guc(ce);
-	struct i915_sched_engine *sched_engine = ce->engine->sched_engine;
 	unsigned long flags;
 	struct intel_runtime_pm *runtime_pm = ce->engine->uncore->rpm;
 	intel_wakeref_t wakeref;
@@ -1618,13 +1612,7 @@ static void guc_context_unblock(struct intel_context *ce)
 		intel_context_get(ce);
 	}
 
-	/*
-	 * Sync with submission path, decrement after above changes to context
-	 * state.
-	 */
-	spin_lock(&sched_engine->lock);
 	decr_context_blocked(ce);
-	spin_unlock(&sched_engine->lock);
 
 	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 
@@ -1730,16 +1718,6 @@ static void guc_context_sched_disable(struct intel_context *ce)
 	struct intel_runtime_pm *runtime_pm = &ce->engine->gt->i915->runtime_pm;
 	intel_wakeref_t wakeref;
 	u16 guc_id;
-	bool enabled;
-
-	if (submission_disabled(guc) || context_guc_id_invalid(ce) ||
-	    !lrc_desc_registered(guc, ce->guc_id)) {
-		clr_context_enabled(ce);
-		goto unpin;
-	}
-
-	if (!context_enabled(ce))
-		goto unpin;
 
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
 
@@ -1753,10 +1731,8 @@ static void guc_context_sched_disable(struct intel_context *ce)
 	 * sleep) ensures another process doesn't pin this context and generate
 	 * a request before we set the 'context_pending_disable' flag here.
 	 */
-	enabled = context_enabled(ce);
-	if (unlikely(!enabled || submission_disabled(guc))) {
-		if (enabled)
-			clr_context_enabled(ce);
+	if (unlikely(!context_enabled(ce) || submission_disabled(guc))) {
+		clr_context_enabled(ce);
 		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 		goto unpin;
 	}
@@ -1784,7 +1760,6 @@ static inline void guc_lrc_desc_unpin(struct intel_context *ce)
 	GEM_BUG_ON(ce != __get_context(guc, ce->guc_id));
 	GEM_BUG_ON(context_enabled(ce));
 
-	clr_context_registered(ce);
 	deregister_context(ce, ce->guc_id);
 }
 
@@ -1857,8 +1832,10 @@ static void guc_context_destroy(struct kref *kref)
 	/* Seal race with Reset */
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
 	disabled = submission_disabled(guc);
-	if (likely(!disabled))
+	if (likely(!disabled)) {
 		set_context_destroyed(ce);
+		clr_context_registered(ce);
+	}
 	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 	if (unlikely(disabled)) {
 		release_guc_id(guc, ce);
@@ -2724,8 +2701,7 @@ int intel_guc_sched_done_process_msg(struct intel_guc *guc,
 		     (!context_pending_enable(ce) &&
 		     !context_pending_disable(ce)))) {
 		drm_err(&guc_to_gt(guc)->i915->drm,
-			"Bad context sched_state 0x%x, 0x%x, desc_idx %u",
-			atomic_read(&ce->guc_sched_state_no_lock),
+			"Bad context sched_state 0x%x, desc_idx %u",
 			ce->guc_state.sched_state, desc_idx);
 		return -EPROTO;
 	}
@@ -2740,7 +2716,9 @@ int intel_guc_sched_done_process_msg(struct intel_guc *guc,
 		}
 #endif
 
+		spin_lock_irqsave(&ce->guc_state.lock, flags);
 		clr_context_pending_enable(ce);
+		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 	} else if (context_pending_disable(ce)) {
 		bool banned;
 
@@ -3014,9 +2992,8 @@ void intel_guc_submission_print_context_info(struct intel_guc *guc,
 			   atomic_read(&ce->pin_count));
 		drm_printf(p, "\t\tGuC ID Ref Count: %u\n",
 			   atomic_read(&ce->guc_id_ref));
-		drm_printf(p, "\t\tSchedule State: 0x%x, 0x%x\n\n",
-			   ce->guc_state.sched_state,
-			   atomic_read(&ce->guc_sched_state_no_lock));
+		drm_printf(p, "\t\tSchedule State: 0x%x\n\n",
+			   ce->guc_state.sched_state);
 
 		guc_log_context_priority(p, ce);
 	}
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index 237e5061381b..510168c1d703 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -903,7 +903,6 @@ DECLARE_EVENT_CLASS(intel_context,
 			     __field(u32, guc_id)
 			     __field(int, pin_count)
 			     __field(u32, sched_state)
-			     __field(u32, guc_sched_state_no_lock)
 			     __field(u8, guc_prio)
 			     ),
 
@@ -911,15 +910,12 @@ DECLARE_EVENT_CLASS(intel_context,
 			   __entry->guc_id = ce->guc_id;
 			   __entry->pin_count = atomic_read(&ce->pin_count);
 			   __entry->sched_state = ce->guc_state.sched_state;
-			   __entry->guc_sched_state_no_lock =
-			   atomic_read(&ce->guc_sched_state_no_lock);
 			   __entry->guc_prio = ce->guc_prio;
 			   ),
 
-		    TP_printk("guc_id=%d, pin_count=%d sched_state=0x%x,0x%x, guc_prio=%u",
+		    TP_printk("guc_id=%d, pin_count=%d sched_state=0x%x, guc_prio=%u",
 			      __entry->guc_id, __entry->pin_count,
 			      __entry->sched_state,
-			      __entry->guc_sched_state_no_lock,
 			      __entry->guc_prio)
 );
 
-- 
2.32.0

