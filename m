Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DED3CBD07
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 22:00:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E496E9DC;
	Fri, 16 Jul 2021 19:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ABC46E9DC;
 Fri, 16 Jul 2021 19:59:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="210596711"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="210596711"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:36 -0700
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="507238891"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:36 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Fri, 16 Jul 2021 13:16:41 -0700
Message-Id: <20210716201724.54804-9-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210716201724.54804-1-matthew.brost@intel.com>
References: <20210716201724.54804-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/51] drm/i915/guc: Defer context unpin until
 scheduling is disabled
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

With GuC scheduling, it isn't safe to unpin a context while scheduling
is enabled for that context as the GuC may touch some of the pinned
state (e.g. LRC). To ensure scheduling isn't enabled when an unpin is
done, a call back is added to intel_context_unpin when pin count == 1
to disable scheduling for that context. When the response CTB is
received it is safe to do the final unpin.

Future patches may add a heuristic / delay to schedule the disable
call back to avoid thrashing on schedule enable / disable.

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       |   4 +-
 drivers/gpu/drm/i915/gt/intel_context.h       |  27 +++-
 drivers/gpu/drm/i915/gt/intel_context_types.h |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   3 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 147 +++++++++++++++++-
 6 files changed, 181 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index ad7197c5910f..3d5b4116617f 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -306,9 +306,9 @@ int __intel_context_do_pin(struct intel_context *ce)
 	return err;
 }
 
-void intel_context_unpin(struct intel_context *ce)
+void __intel_context_do_unpin(struct intel_context *ce, int sub)
 {
-	if (!atomic_dec_and_test(&ce->pin_count))
+	if (!atomic_sub_and_test(sub, &ce->pin_count))
 		return;
 
 	CE_TRACE(ce, "unpin\n");
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index b10cbe8fee99..974ef85320c2 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -113,7 +113,32 @@ static inline void __intel_context_pin(struct intel_context *ce)
 	atomic_inc(&ce->pin_count);
 }
 
-void intel_context_unpin(struct intel_context *ce);
+void __intel_context_do_unpin(struct intel_context *ce, int sub);
+
+static inline void intel_context_sched_disable_unpin(struct intel_context *ce)
+{
+	__intel_context_do_unpin(ce, 2);
+}
+
+static inline void intel_context_unpin(struct intel_context *ce)
+{
+	if (!ce->ops->sched_disable) {
+		__intel_context_do_unpin(ce, 1);
+	} else {
+		/*
+		 * Move ownership of this pin to the scheduling disable which is
+		 * an async operation. When that operation completes the above
+		 * intel_context_sched_disable_unpin is called potentially
+		 * unpinning the context.
+		 */
+		while (!atomic_add_unless(&ce->pin_count, -1, 1)) {
+			if (atomic_cmpxchg(&ce->pin_count, 1, 2) == 1) {
+				ce->ops->sched_disable(ce);
+				break;
+			}
+		}
+	}
+}
 
 void intel_context_enter_engine(struct intel_context *ce);
 void intel_context_exit_engine(struct intel_context *ce);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index e0e3a937f709..4a5518d295c2 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -43,6 +43,8 @@ struct intel_context_ops {
 	void (*enter)(struct intel_context *ce);
 	void (*exit)(struct intel_context *ce);
 
+	void (*sched_disable)(struct intel_context *ce);
+
 	void (*reset)(struct intel_context *ce);
 	void (*destroy)(struct kref *kref);
 };
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 30773cd699f5..03b7222b04a2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -241,6 +241,8 @@ int intel_guc_reset_engine(struct intel_guc *guc,
 
 int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
 					  const u32 *msg, u32 len);
+int intel_guc_sched_done_process_msg(struct intel_guc *guc,
+				     const u32 *msg, u32 len);
 
 void intel_guc_load_status(struct intel_guc *guc, struct drm_printer *p);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 28ff82c5be45..019b25ff1888 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -932,6 +932,9 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
 		ret = intel_guc_deregister_done_process_msg(guc, payload,
 							    len);
 		break;
+	case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
+		ret = intel_guc_sched_done_process_msg(guc, payload, len);
+		break;
 	default:
 		ret = -EOPNOTSUPP;
 		break;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index a438aecfe93f..5519c988a6ca 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -70,6 +70,7 @@
  * possible for some of the bits to changing at the same time though.
  */
 #define SCHED_STATE_NO_LOCK_ENABLED			BIT(0)
+#define SCHED_STATE_NO_LOCK_PENDING_ENABLE		BIT(1)
 static inline bool context_enabled(struct intel_context *ce)
 {
 	return (atomic_read(&ce->guc_sched_state_no_lock) &
@@ -87,6 +88,24 @@ static inline void clr_context_enabled(struct intel_context *ce)
 		   &ce->guc_sched_state_no_lock);
 }
 
+static inline bool context_pending_enable(struct intel_context *ce)
+{
+	return (atomic_read(&ce->guc_sched_state_no_lock) &
+		SCHED_STATE_NO_LOCK_PENDING_ENABLE);
+}
+
+static inline void set_context_pending_enable(struct intel_context *ce)
+{
+	atomic_or(SCHED_STATE_NO_LOCK_PENDING_ENABLE,
+		  &ce->guc_sched_state_no_lock);
+}
+
+static inline void clr_context_pending_enable(struct intel_context *ce)
+{
+	atomic_and((u32)~SCHED_STATE_NO_LOCK_PENDING_ENABLE,
+		   &ce->guc_sched_state_no_lock);
+}
+
 /*
  * Below is a set of functions which control the GuC scheduling state which
  * require a lock, aside from the special case where the functions are called
@@ -95,6 +114,7 @@ static inline void clr_context_enabled(struct intel_context *ce)
  */
 #define SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGISTER	BIT(0)
 #define SCHED_STATE_DESTROYED				BIT(1)
+#define SCHED_STATE_PENDING_DISABLE			BIT(2)
 static inline void init_sched_state(struct intel_context *ce)
 {
 	/* Only should be called from guc_lrc_desc_pin() */
@@ -139,6 +159,24 @@ set_context_destroyed(struct intel_context *ce)
 	ce->guc_state.sched_state |= SCHED_STATE_DESTROYED;
 }
 
+static inline bool context_pending_disable(struct intel_context *ce)
+{
+	return (ce->guc_state.sched_state & SCHED_STATE_PENDING_DISABLE);
+}
+
+static inline void set_context_pending_disable(struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
+	ce->guc_state.sched_state |= SCHED_STATE_PENDING_DISABLE;
+}
+
+static inline void clr_context_pending_disable(struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
+	ce->guc_state.sched_state =
+		(ce->guc_state.sched_state & ~SCHED_STATE_PENDING_DISABLE);
+}
+
 static inline bool context_guc_id_invalid(struct intel_context *ce)
 {
 	return (ce->guc_id == GUC_INVALID_LRC_ID);
@@ -231,6 +269,8 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
 		action[len++] = INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET;
 		action[len++] = ce->guc_id;
 		action[len++] = GUC_CONTEXT_ENABLE;
+		set_context_pending_enable(ce);
+		intel_context_get(ce);
 	} else {
 		action[len++] = INTEL_GUC_ACTION_SCHED_CONTEXT;
 		action[len++] = ce->guc_id;
@@ -238,8 +278,12 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
 
 	err = intel_guc_send_nb(guc, action, len);
 
-	if (!enabled && !err)
+	if (!enabled && !err) {
 		set_context_enabled(ce);
+	} else if (!enabled) {
+		clr_context_pending_enable(ce);
+		intel_context_put(ce);
+	}
 
 	return err;
 }
@@ -833,6 +877,62 @@ static void guc_context_post_unpin(struct intel_context *ce)
 	lrc_post_unpin(ce);
 }
 
+static void __guc_context_sched_disable(struct intel_guc *guc,
+					struct intel_context *ce,
+					u16 guc_id)
+{
+	u32 action[] = {
+		INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET,
+		guc_id,	/* ce->guc_id not stable */
+		GUC_CONTEXT_DISABLE
+	};
+
+	GEM_BUG_ON(guc_id == GUC_INVALID_LRC_ID);
+
+	intel_context_get(ce);
+
+	intel_guc_send_busy_loop(guc, action, ARRAY_SIZE(action), true);
+}
+
+static u16 prep_context_pending_disable(struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
+
+	set_context_pending_disable(ce);
+	clr_context_enabled(ce);
+
+	return ce->guc_id;
+}
+
+static void guc_context_sched_disable(struct intel_context *ce)
+{
+	struct intel_guc *guc = ce_to_guc(ce);
+	struct intel_runtime_pm *runtime_pm = &ce->engine->gt->i915->runtime_pm;
+	unsigned long flags;
+	u16 guc_id;
+	intel_wakeref_t wakeref;
+
+	if (context_guc_id_invalid(ce) ||
+	    !lrc_desc_registered(guc, ce->guc_id)) {
+		clr_context_enabled(ce);
+		goto unpin;
+	}
+
+	if (!context_enabled(ce))
+		goto unpin;
+
+	spin_lock_irqsave(&ce->guc_state.lock, flags);
+	guc_id = prep_context_pending_disable(ce);
+	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+
+	with_intel_runtime_pm(runtime_pm, wakeref)
+		__guc_context_sched_disable(guc, ce, guc_id);
+
+	return;
+unpin:
+	intel_context_sched_disable_unpin(ce);
+}
+
 static inline void guc_lrc_desc_unpin(struct intel_context *ce)
 {
 	struct intel_engine_cs *engine = ce->engine;
@@ -841,6 +941,7 @@ static inline void guc_lrc_desc_unpin(struct intel_context *ce)
 
 	GEM_BUG_ON(!lrc_desc_registered(guc, ce->guc_id));
 	GEM_BUG_ON(ce != __get_context(guc, ce->guc_id));
+	GEM_BUG_ON(context_enabled(ce));
 
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
 	set_context_destroyed(ce);
@@ -922,6 +1023,8 @@ static const struct intel_context_ops guc_context_ops = {
 	.enter = intel_context_enter_engine,
 	.exit = intel_context_exit_engine,
 
+	.sched_disable = guc_context_sched_disable,
+
 	.reset = lrc_reset,
 	.destroy = guc_context_destroy,
 };
@@ -1354,3 +1457,45 @@ int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
 
 	return 0;
 }
+
+int intel_guc_sched_done_process_msg(struct intel_guc *guc,
+				     const u32 *msg,
+				     u32 len)
+{
+	struct intel_context *ce;
+	unsigned long flags;
+	u32 desc_idx = msg[0];
+
+	if (unlikely(len < 2)) {
+		drm_dbg(&guc_to_gt(guc)->i915->drm, "Invalid length %u", len);
+		return -EPROTO;
+	}
+
+	ce = g2h_context_lookup(guc, desc_idx);
+	if (unlikely(!ce))
+		return -EPROTO;
+
+	if (unlikely(context_destroyed(ce) ||
+		     (!context_pending_enable(ce) &&
+		     !context_pending_disable(ce)))) {
+		drm_dbg(&guc_to_gt(guc)->i915->drm,
+			"Bad context sched_state 0x%x, 0x%x, desc_idx %u",
+			atomic_read(&ce->guc_sched_state_no_lock),
+			ce->guc_state.sched_state, desc_idx);
+		return -EPROTO;
+	}
+
+	if (context_pending_enable(ce)) {
+		clr_context_pending_enable(ce);
+	} else if (context_pending_disable(ce)) {
+		intel_context_sched_disable_unpin(ce);
+
+		spin_lock_irqsave(&ce->guc_state.lock, flags);
+		clr_context_pending_disable(ce);
+		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+	}
+
+	intel_context_put(ce);
+
+	return 0;
+}
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
