Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D19F9599C14
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 14:39:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF56710E4DA;
	Fri, 19 Aug 2022 12:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 709D310ED0D
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 12:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660912756; x=1692448756;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Pr9BkqdmTcV5zu8W26gkKm8Eed+nMBUISZibGMAUXbg=;
 b=j9NR9sG0r9eNVXVtU3kGaCindjxkj6pwvcy+SjeLkmBLquleyCxI8s7a
 jsTAWirAx1+mSsGR9oGmKzWYyG14dMwa/Xt4i4hLJi6Gi9rQL5v3HqJgv
 sCOkdYs1UmPGe5L5Qy3U2DsQzZKtqrW4pT8fbbPszgCurKvuOS50qrO8N
 Fy8iSRC/ryN1+ycwMUYmomTUyyExDKI/4sCCQBMP2eVn7Q256IEZIa0ju
 oLYEqvDkWl2kXXI6fuFHkngkuVzx8kgihWC6Qzid8/sQVJ86lzTpbC7oo
 6snuvZMkG46iy3Vyx6ydTnTg5Oitu+WMg67joUVszHSbpweJbe0UZTEbI A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="354742409"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="354742409"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:39:15 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="584647627"
Received: from tmurphy-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.209.80])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:39:13 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 13:39:04 +0100
Message-Id: <20220819123904.913750-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Revert "drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero"
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 6a079903847cce1dd06345127d2a32f26d2cd9c6.

Everything in CI using GuC is now timing out[1], and killing the machine
with this change (perhaps a deadlock?). CI was recently on fire due to
some changes coming in from -rc1, so likely the pre-merge CI results for
this series were invalid? For now just revert, unless GuC experts
already have a fix in mind.

[1] https://intel-gfx-ci.01.org/tree/drm-tip/index.html?

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_context.h       |   8 -
 drivers/gpu/drm/i915/gt/intel_context_types.h |   7 -
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  17 +-
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  60 -------
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 154 +++---------------
 drivers/gpu/drm/i915/i915_selftest.h          |   2 -
 7 files changed, 27 insertions(+), 223 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index df7fd1b019ec..dabdfe09f5e5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1454,7 +1454,7 @@ static void engines_idle_release(struct i915_gem_context *ctx,
 		int err;
 
 		/* serialises with execbuf */
-		intel_context_close(ce);
+		set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
 		if (!intel_context_pin_if_active(ce))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index f96420f0b5bb..8e2d70630c49 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -276,14 +276,6 @@ static inline bool intel_context_is_barrier(const struct intel_context *ce)
 	return test_bit(CONTEXT_BARRIER_BIT, &ce->flags);
 }
 
-static inline void intel_context_close(struct intel_context *ce)
-{
-	set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
-
-	if (ce->ops->close)
-		ce->ops->close(ce);
-}
-
 static inline bool intel_context_is_closed(const struct intel_context *ce)
 {
 	return test_bit(CONTEXT_CLOSED_BIT, &ce->flags);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 86ac84e2edb9..04eacae1aca5 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -43,8 +43,6 @@ struct intel_context_ops {
 	void (*revoke)(struct intel_context *ce, struct i915_request *rq,
 		       unsigned int preempt_timeout_ms);
 
-	void (*close)(struct intel_context *ce);
-
 	int (*pre_pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void **vaddr);
 	int (*pin)(struct intel_context *ce, void *vaddr);
 	void (*unpin)(struct intel_context *ce);
@@ -210,11 +208,6 @@ struct intel_context {
 		 * each priority bucket
 		 */
 		u32 prio_count[GUC_CLIENT_PRIORITY_NUM];
-		/**
-		 * @sched_disable_delay: worker to disable scheduling on this
-		 * context
-		 */
-		struct delayed_work sched_disable_delay;
 	} guc_state;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 944b549b8797..804133df1ac9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -112,10 +112,6 @@ struct intel_guc {
 		 * refs
 		 */
 		struct list_head guc_id_list;
-		/**
-		 * @guc_ids_in_use: Number single-lrc guc_ids in use
-		 */
-		u16 guc_ids_in_use;
 		/**
 		 * @destroyed_contexts: list of contexts waiting to be destroyed
 		 * (deregistered with the GuC)
@@ -136,16 +132,6 @@ struct intel_guc {
 		 * @reset_fail_mask: mask of engines that failed to reset
 		 */
 		intel_engine_mask_t reset_fail_mask;
-		/**
-		 * @sched_disable_delay_ms: schedule disable delay, in ms, for
-		 * contexts
-		 */
-		u64 sched_disable_delay_ms;
-		/**
-		 * @sched_disable_gucid_threshold: threshold of min remaining available
-		 * guc_ids before we start bypassing the schedule disable delay
-		 */
-		int sched_disable_gucid_threshold;
 	} submission_state;
 
 	/**
@@ -475,10 +461,9 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc);
 void intel_guc_submission_cancel_requests(struct intel_guc *guc);
 
 void intel_guc_load_status(struct intel_guc *guc, struct drm_printer *p);
-void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
 
 void intel_guc_write_barrier(struct intel_guc *guc);
 
-int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
+void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
index c91b150bb7ac..25f09a420561 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
@@ -71,72 +71,12 @@ static bool intel_eval_slpc_support(void *data)
 	return intel_guc_slpc_is_used(guc);
 }
 
-static int guc_sched_disable_delay_ms_get(void *data, u64 *val)
-{
-	struct intel_guc *guc = data;
-
-	if (!intel_guc_submission_is_used(guc))
-		return -ENODEV;
-
-	*val = guc->submission_state.sched_disable_delay_ms;
-
-	return 0;
-}
-
-static int guc_sched_disable_delay_ms_set(void *data, u64 val)
-{
-	struct intel_guc *guc = data;
-
-	if (!intel_guc_submission_is_used(guc))
-		return -ENODEV;
-
-	guc->submission_state.sched_disable_delay_ms = val;
-
-	return 0;
-}
-DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_delay_ms_fops,
-			guc_sched_disable_delay_ms_get,
-			guc_sched_disable_delay_ms_set, "%lld\n");
-
-static int guc_sched_disable_gucid_threshold_get(void *data, u64 *val)
-{
-	struct intel_guc *guc = data;
-
-	if (!intel_guc_submission_is_used(guc))
-		return -ENODEV;
-
-	*val = guc->submission_state.sched_disable_gucid_threshold;
-	return 0;
-}
-
-static int guc_sched_disable_gucid_threshold_set(void *data, u64 val)
-{
-	struct intel_guc *guc = data;
-
-	if (!intel_guc_submission_is_used(guc))
-		return -ENODEV;
-
-	if (val > intel_guc_sched_disable_gucid_threshold_max(guc))
-		guc->submission_state.sched_disable_gucid_threshold =
-			intel_guc_sched_disable_gucid_threshold_max(guc);
-	else
-		guc->submission_state.sched_disable_gucid_threshold = val;
-
-	return 0;
-}
-DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_gucid_threshold_fops,
-			guc_sched_disable_gucid_threshold_get,
-			guc_sched_disable_gucid_threshold_set, "%lld\n");
-
 void intel_guc_debugfs_register(struct intel_guc *guc, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
 		{ "guc_info", &guc_info_fops, NULL },
 		{ "guc_registered_contexts", &guc_registered_contexts_fops, NULL },
 		{ "guc_slpc_info", &guc_slpc_info_fops, &intel_eval_slpc_support},
-		{ "guc_sched_disable_delay_ms", &guc_sched_disable_delay_ms_fops, NULL },
-		{ "guc_sched_disable_gucid_threshold", &guc_sched_disable_gucid_threshold_fops,
-		   NULL },
 	};
 
 	if (!intel_guc_is_supported(guc))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index a0cebb4590e9..0d56b615bf78 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -65,13 +65,7 @@
  * corresponding G2H returns indicating the scheduling disable operation has
  * completed it is safe to unpin the context. While a disable is in flight it
  * isn't safe to resubmit the context so a fence is used to stall all future
- * requests of that context until the G2H is returned. Because this interaction
- * with the GuC takes a non-zero amount of time we delay the disabling of
- * scheduling after the pin count goes to zero by a configurable period of time
- * (see SCHED_DISABLE_DELAY_MS). The thought is this gives the user a window of
- * time to resubmit something on the context before doing this costly operation.
- * This delay is only done if the context isn't closed and the guc_id usage is
- * less than a threshold (see NUM_SCHED_DISABLE_GUC_IDS_THRESHOLD).
+ * requests of that context until the G2H is returned.
  *
  * Context deregistration:
  * Before a context can be destroyed or if we steal its guc_id we must
@@ -1995,9 +1989,6 @@ static int new_guc_id(struct intel_guc *guc, struct intel_context *ce)
 	if (unlikely(ret < 0))
 		return ret;
 
-	if (!intel_context_is_parent(ce))
-		++guc->submission_state.guc_ids_in_use;
-
 	ce->guc_id.id = ret;
 	return 0;
 }
@@ -2007,16 +1998,14 @@ static void __release_guc_id(struct intel_guc *guc, struct intel_context *ce)
 	GEM_BUG_ON(intel_context_is_child(ce));
 
 	if (!context_guc_id_invalid(ce)) {
-		if (intel_context_is_parent(ce)) {
+		if (intel_context_is_parent(ce))
 			bitmap_release_region(guc->submission_state.guc_ids_bitmap,
 					      ce->guc_id.id,
 					      order_base_2(ce->parallel.number_children
 							   + 1));
-		} else {
-			--guc->submission_state.guc_ids_in_use;
+		else
 			ida_simple_remove(&guc->submission_state.guc_ids,
 					  ce->guc_id.id);
-		}
 		clr_ctx_id_mapping(guc, ce->guc_id.id);
 		set_context_guc_id_invalid(ce);
 	}
@@ -3004,98 +2993,41 @@ guc_context_revoke(struct intel_context *ce, struct i915_request *rq,
 	}
 }
 
-static void guc_context_sched_disable(struct intel_context *ce);
-
-static void do_sched_disable(struct intel_guc *guc, struct intel_context *ce,
-			     unsigned long flags)
-	__releases(ce->guc_state.lock)
+static void guc_context_sched_disable(struct intel_context *ce)
 {
+	struct intel_guc *guc = ce_to_guc(ce);
+	unsigned long flags;
 	struct intel_runtime_pm *runtime_pm = &ce->engine->gt->i915->runtime_pm;
 	intel_wakeref_t wakeref;
+	u16 guc_id;
 
-	lockdep_assert_held(&ce->guc_state.lock);
-
-	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
-
-	with_intel_runtime_pm(runtime_pm, wakeref)
-		guc_context_sched_disable(ce);
-}
-
-static bool bypass_sched_disable(struct intel_guc *guc,
-				 struct intel_context *ce)
-{
-	lockdep_assert_held(&ce->guc_state.lock);
 	GEM_BUG_ON(intel_context_is_child(ce));
 
-	if (submission_disabled(guc) || context_guc_id_invalid(ce) ||
-	    !ctx_id_mapped(guc, ce->guc_id.id)) {
-		clr_context_enabled(ce);
-		return true;
-	}
-
-	return !context_enabled(ce);
-}
-
-static void __delay_sched_disable(struct work_struct *wrk)
-{
-	struct intel_context *ce =
-		container_of(wrk, typeof(*ce), guc_state.sched_disable_delay.work);
-	struct intel_guc *guc = ce_to_guc(ce);
-	unsigned long flags;
-
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
 
-	if (bypass_sched_disable(guc, ce)) {
-		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
-		intel_context_sched_disable_unpin(ce);
-	} else {
-		do_sched_disable(guc, ce, flags);
-	}
-}
-
-static bool guc_id_pressure(struct intel_guc *guc, struct intel_context *ce)
-{
-	/*
-	 * parent contexts are perma-pinned, if we are unpinning do schedule
-	 * disable immediately.
-	 */
-	if (intel_context_is_parent(ce))
-		return true;
-
 	/*
-	 * If we are beyond the threshold for avail guc_ids, do schedule disable immediately.
+	 * We have to check if the context has been disabled by another thread,
+	 * check if submssion has been disabled to seal a race with reset and
+	 * finally check if any more requests have been committed to the
+	 * context ensursing that a request doesn't slip through the
+	 * 'context_pending_disable' fence.
 	 */
-	return guc->submission_state.guc_ids_in_use >
-		guc->submission_state.sched_disable_gucid_threshold;
-}
-
-static void guc_context_sched_disable(struct intel_context *ce)
-{
-	struct intel_guc *guc = ce_to_guc(ce);
-	u64 delay = guc->submission_state.sched_disable_delay_ms;
-	unsigned long flags;
-
-	spin_lock_irqsave(&ce->guc_state.lock, flags);
-
-	if (bypass_sched_disable(guc, ce)) {
-		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
-		intel_context_sched_disable_unpin(ce);
-	} else if (!intel_context_is_closed(ce) && !guc_id_pressure(guc, ce) &&
-		   delay) {
+	if (unlikely(!context_enabled(ce) || submission_disabled(guc) ||
+		     context_has_committed_requests(ce))) {
+		clr_context_enabled(ce);
 		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
-		mod_delayed_work(system_unbound_wq,
-				 &ce->guc_state.sched_disable_delay,
-				 msecs_to_jiffies(delay));
-	} else {
-		do_sched_disable(guc, ce, flags);
+		goto unpin;
 	}
-}
+	guc_id = prep_context_pending_disable(ce);
 
-static void guc_context_close(struct intel_context *ce)
-{
-	if (test_bit(CONTEXT_GUC_INIT, &ce->flags) &&
-	    cancel_delayed_work(&ce->guc_state.sched_disable_delay))
-		__delay_sched_disable(&ce->guc_state.sched_disable_delay.work);
+	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+
+	with_intel_runtime_pm(runtime_pm, wakeref)
+		__guc_context_sched_disable(guc, ce, guc_id);
+
+	return;
+unpin:
+	intel_context_sched_disable_unpin(ce);
 }
 
 static inline void guc_lrc_desc_unpin(struct intel_context *ce)
@@ -3414,8 +3346,6 @@ static void remove_from_context(struct i915_request *rq)
 static const struct intel_context_ops guc_context_ops = {
 	.alloc = guc_context_alloc,
 
-	.close = guc_context_close,
-
 	.pre_pin = guc_context_pre_pin,
 	.pin = guc_context_pin,
 	.unpin = guc_context_unpin,
@@ -3498,10 +3428,6 @@ static void guc_context_init(struct intel_context *ce)
 	rcu_read_unlock();
 
 	ce->guc_state.prio = map_i915_prio_to_guc_prio(prio);
-
-	INIT_DELAYED_WORK(&ce->guc_state.sched_disable_delay,
-			  __delay_sched_disable);
-
 	set_bit(CONTEXT_GUC_INIT, &ce->flags);
 }
 
@@ -3539,9 +3465,6 @@ static int guc_request_alloc(struct i915_request *rq)
 	if (unlikely(!test_bit(CONTEXT_GUC_INIT, &ce->flags)))
 		guc_context_init(ce);
 
-	if (cancel_delayed_work(&ce->guc_state.sched_disable_delay))
-		intel_context_sched_disable_unpin(ce);
-
 	/*
 	 * Call pin_guc_id here rather than in the pinning step as with
 	 * dma_resv, contexts can be repeatedly pinned / unpinned trashing the
@@ -3672,8 +3595,6 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
 static const struct intel_context_ops virtual_guc_context_ops = {
 	.alloc = guc_virtual_context_alloc,
 
-	.close = guc_context_close,
-
 	.pre_pin = guc_virtual_context_pre_pin,
 	.pin = guc_virtual_context_pin,
 	.unpin = guc_virtual_context_unpin,
@@ -3763,8 +3684,6 @@ static void guc_child_context_destroy(struct kref *kref)
 static const struct intel_context_ops virtual_parent_context_ops = {
 	.alloc = guc_virtual_context_alloc,
 
-	.close = guc_context_close,
-
 	.pre_pin = guc_context_pre_pin,
 	.pin = guc_parent_context_pin,
 	.unpin = guc_parent_context_unpin,
@@ -4295,26 +4214,6 @@ static bool __guc_submission_selected(struct intel_guc *guc)
 	return i915->params.enable_guc & ENABLE_GUC_SUBMISSION;
 }
 
-int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc)
-{
-	return guc->submission_state.num_guc_ids - NUMBER_MULTI_LRC_GUC_ID(guc);
-}
-
-/*
- * This default value of 33 milisecs (+1 milisec round up) ensures 30fps or higher
- * workloads are able to enjoy the latency reduction when delaying the schedule-disable
- * operation. This matches the 30fps game-render + encode (real world) workload this
- * knob was tested against.
- */
-#define SCHED_DISABLE_DELAY_MS	34
-
-/*
- * A threshold of 75% is a reasonable starting point considering that real world apps
- * generally don't get anywhere near this.
- */
-#define NUM_SCHED_DISABLE_GUCIDS_DEFAULT_THRESHOLD(__guc) \
-	(((intel_guc_sched_disable_gucid_threshold_max(guc)) * 3) / 4)
-
 void intel_guc_submission_init_early(struct intel_guc *guc)
 {
 	xa_init_flags(&guc->context_lookup, XA_FLAGS_LOCK_IRQ);
@@ -4331,10 +4230,7 @@ void intel_guc_submission_init_early(struct intel_guc *guc)
 	spin_lock_init(&guc->timestamp.lock);
 	INIT_DELAYED_WORK(&guc->timestamp.work, guc_timestamp_ping);
 
-	guc->submission_state.sched_disable_delay_ms = SCHED_DISABLE_DELAY_MS;
 	guc->submission_state.num_guc_ids = GUC_MAX_CONTEXT_ID;
-	guc->submission_state.sched_disable_gucid_threshold =
-		NUM_SCHED_DISABLE_GUCIDS_DEFAULT_THRESHOLD(guc);
 	guc->submission_supported = __guc_submission_supported(guc);
 	guc->submission_selected = __guc_submission_selected(guc);
 }
diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
index bdf3e22c0a34..f54de0499be7 100644
--- a/drivers/gpu/drm/i915/i915_selftest.h
+++ b/drivers/gpu/drm/i915/i915_selftest.h
@@ -92,14 +92,12 @@ int __i915_subtests(const char *caller,
 			T, ARRAY_SIZE(T), data)
 #define i915_live_subtests(T, data) ({ \
 	typecheck(struct drm_i915_private *, data); \
-	(data)->gt[0]->uc.guc.submission_state.sched_disable_delay_ms = 0; \
 	__i915_subtests(__func__, \
 			__i915_live_setup, __i915_live_teardown, \
 			T, ARRAY_SIZE(T), data); \
 })
 #define intel_gt_live_subtests(T, data) ({ \
 	typecheck(struct intel_gt *, data); \
-	(data)->uc.guc.submission_state.sched_disable_delay_ms = 0; \
 	__i915_subtests(__func__, \
 			__intel_gt_live_setup, __intel_gt_live_teardown, \
 			T, ARRAY_SIZE(T), data); \
-- 
2.37.2

