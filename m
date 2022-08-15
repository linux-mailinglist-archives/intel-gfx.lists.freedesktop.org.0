Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5775932AE
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Aug 2022 18:01:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22CF18EE7E;
	Mon, 15 Aug 2022 16:00:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68191B474F
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 16:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660579216; x=1692115216;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HEYupRZImFmLasv09ZuuZpH17+Fio98uzY3X5qBx9CM=;
 b=YF6nO3saqsFyWWQTQ3XTjYn8C+htuIIVFInIInimbSIuUYFvPlufcE62
 p5RdJ/Gr/wrhcqaSd4QQythPueb0TsRZRyscohVJ/cBkRU74rk3kFREux
 geM3SNZe7+4SxJGCCKEVR7FsCRyfaBY5ktGFGWPSCnrLOKrL8ew79voJ0
 5il+TjePrASxt2qd2jjJ6Rb7am1whd6DQEVUjvet2QmTy7yxOAz3BaM7y
 vIyAj20Px8UFrEPu7S+Q4kp6KNhEftsYjuHgYi5c2otsMJW84yEHXipxc
 3zheNtZpjzaQ9f1pAoleaEPt8WgPpN6ASHVHUglt5HtqNpzupa5MfeQGR Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="353732963"
X-IronPort-AV: E=Sophos;i="5.93,238,1654585200"; d="scan'208";a="353732963"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 09:00:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,238,1654585200"; d="scan'208";a="709798725"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga002.fm.intel.com with ESMTP; 15 Aug 2022 09:00:14 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Aug 2022 09:01:34 -0700
Message-Id: <20220815160134.1527085-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220815160134.1527085-1-alan.previn.teres.alexis@intel.com>
References: <20220815160134.1527085-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 2/2] drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero
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

From: Matthew Brost <matthew.brost@intel.com>

Add a delay, configurable via debugs (default 34ms), to disable
scheduling of a context after the pin count goes to zero. Disable
scheduling is a somewhat costly operation so the idea is that a delay
allows the user to resubmit something before doing this operation.
This delay is only done if the context isn't closed and less than 3/4
of total guc_ids are in use.

As temporary WA disable this feature for the selftests. Selftests are
very timing sensitive and any change in timing can cause failure. A
follow up patch will fixup the selftests to understand this delay.

Alan Previn: Matt Brost first introduced this series back in Oct 2021.
However no real world workload with measured performance impact was
available to prove the intended results. Today, this series is being
republished in response to a real world workload that benefited greatly
from it along with measured performance improvement.

Workload description: 36 containers were created on a DG2 device where
each container was performing a combination of 720p 3d game rendering
and 30fps video encoding. The workload density was configured in way
that guaranteed each container to ALWAYS be able to render and
encode no less than 30fps with a predefined maximum render + encode
latency time. That means that the totality of all 36 containers and its
workloads were not saturating the utilized hw engines to its max
(in order to maintain just enough headrooom to meet the min fps and
max latencies of incoming container submissions).

Problem statement: It was observed that the CPU utilization of the CPU
core that was pinned to i915 soft IRQ work was experiencing severe load.
Using tracelogs and an instrumentation patch to count specific i915 IRQ
events, it was confirmed that the majority of the CPU cycles were caused
by the gen11_other_irq_handler() -> guc_irq_handler() code path. The vast
majority of the cycles was determined to be processing a specific G2H
IRQ: i.e. INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE. These IRQs are sent
by GuC in response to i915 KMD sending H2G requests:
INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET. Those H2G request are sent
whenever a context is idle so that we can unpin the context from GuC.
The high CPU utilization % symptom was limiting density scaling.

Root Cause Analysis: Because the incoming execution buffers were spread
across 36 different containers (each with multiple contexts) but the
system in totality was NOT saturated to the max, it was assumed that each
context was constantly idling between submissions. This was causing
a thrashing of unpinning contexts from GuC at one moment, followed quickly
by repinning them due to incoming workload the very next moment. These
event-pairs were being triggered across multiple contexts per container,
across all containers at the rate of > 30 times per sec per context.

Metrics: When running this workload without this patch, we measured an
average of ~69K INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE events every 10
seconds or ~10 million times over ~25+ mins. With this patch, the count
reduced to ~480 every 10 seconds or about ~28K over ~10 mins. The
improvement observed is ~99% for the average counts per 10 seconds.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_context.h       |   9 ++
 drivers/gpu/drm/i915/gt/intel_context_types.h |   7 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  18 +++
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  57 +++++++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 150 +++++++++++++++---
 drivers/gpu/drm/i915/i915_selftest.h          |   2 +
 drivers/gpu/drm/i915/i915_trace.h             |  10 ++
 8 files changed, 229 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index dabdfe09f5e5..df7fd1b019ec 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1454,7 +1454,7 @@ static void engines_idle_release(struct i915_gem_context *ctx,
 		int err;
 
 		/* serialises with execbuf */
-		set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
+		intel_context_close(ce);
 		if (!intel_context_pin_if_active(ce))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 8e2d70630c49..7cc4bb9ad042 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -276,6 +276,15 @@ static inline bool intel_context_is_barrier(const struct intel_context *ce)
 	return test_bit(CONTEXT_BARRIER_BIT, &ce->flags);
 }
 
+static inline void intel_context_close(struct intel_context *ce)
+{
+	set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
+
+	trace_intel_context_close(ce);
+	if (ce->ops->close)
+		ce->ops->close(ce);
+}
+
 static inline bool intel_context_is_closed(const struct intel_context *ce)
 {
 	return test_bit(CONTEXT_CLOSED_BIT, &ce->flags);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 04eacae1aca5..86ac84e2edb9 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -43,6 +43,8 @@ struct intel_context_ops {
 	void (*revoke)(struct intel_context *ce, struct i915_request *rq,
 		       unsigned int preempt_timeout_ms);
 
+	void (*close)(struct intel_context *ce);
+
 	int (*pre_pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void **vaddr);
 	int (*pin)(struct intel_context *ce, void *vaddr);
 	void (*unpin)(struct intel_context *ce);
@@ -208,6 +210,11 @@ struct intel_context {
 		 * each priority bucket
 		 */
 		u32 prio_count[GUC_CLIENT_PRIORITY_NUM];
+		/**
+		 * @sched_disable_delay: worker to disable scheduling on this
+		 * context
+		 */
+		struct delayed_work sched_disable_delay;
 	} guc_state;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index a7acffbf15d1..2f534baf6f45 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -112,6 +112,10 @@ struct intel_guc {
 		 * refs
 		 */
 		struct list_head guc_id_list;
+		/**
+		 * @guc_ids_in_use: Number single-lrc guc_ids in use
+		 */
+		u16 guc_ids_in_use;
 		/**
 		 * @destroyed_contexts: list of contexts waiting to be destroyed
 		 * (deregistered with the GuC)
@@ -132,6 +136,18 @@ struct intel_guc {
 		 * @reset_fail_mask: mask of engines that failed to reset
 		 */
 		intel_engine_mask_t reset_fail_mask;
+#define SCHED_DISABLE_DELAY_MS	34
+		/**
+		 * @sched_disable_delay_ms: schedule disable delay, in ms, for
+		 * contexts
+		 */
+		u64 sched_disable_delay_ms;
+		/**
+		 * @sched_disable_gucid_threshold: threshold of min remaining available
+		 * guc_ids before we start bypassing the schedule disable delay
+		 */
+		int sched_disable_gucid_threshold;
+
 	} submission_state;
 
 	/**
@@ -464,4 +480,6 @@ void intel_guc_load_status(struct intel_guc *guc, struct drm_printer *p);
 
 void intel_guc_write_barrier(struct intel_guc *guc);
 
+int intel_guc_get_sched_disable_gucid_threshold_max(struct intel_guc *guc);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
index 25f09a420561..c0e2fe46050f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
@@ -71,12 +71,69 @@ static bool intel_eval_slpc_support(void *data)
 	return intel_guc_slpc_is_used(guc);
 }
 
+static int guc_sched_disable_delay_ms_get(void *data, u64 *val)
+{
+	struct intel_guc *guc = data;
+
+	if (!intel_guc_submission_is_used(guc))
+		return -ENODEV;
+
+	*val = guc->submission_state.sched_disable_delay_ms;
+
+	return 0;
+}
+
+static int guc_sched_disable_delay_ms_set(void *data, u64 val)
+{
+	struct intel_guc *guc = data;
+
+	if (!intel_guc_submission_is_used(guc))
+		return -ENODEV;
+
+	guc->submission_state.sched_disable_delay_ms = val;
+
+	return 0;
+}
+DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_delay_ms_fops,
+			guc_sched_disable_delay_ms_get,
+			guc_sched_disable_delay_ms_set, "%lld\n");
+
+static int guc_sched_disable_gucid_threshold_get(void *data, u64 *val)
+{
+	struct intel_guc *guc = data;
+
+	*val = guc->submission_state.sched_disable_gucid_threshold;
+	return 0;
+}
+
+static int guc_sched_disable_gucid_threshold_set(void *data, u64 val)
+{
+	struct intel_guc *guc = data;
+
+	if (!intel_guc_submission_is_used(guc))
+		return -ENODEV;
+
+	if (val > intel_guc_get_sched_disable_gucid_threshold_max(guc))
+		guc->submission_state.sched_disable_gucid_threshold =
+			intel_guc_get_sched_disable_gucid_threshold_max(guc);
+	else
+		guc->submission_state.sched_disable_gucid_threshold = val;
+
+	return 0;
+}
+DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_gucid_threshold_fops,
+			guc_sched_disable_gucid_threshold_get,
+			guc_sched_disable_gucid_threshold_set, "%lld\n");
+
 void intel_guc_debugfs_register(struct intel_guc *guc, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
 		{ "guc_info", &guc_info_fops, NULL },
 		{ "guc_registered_contexts", &guc_registered_contexts_fops, NULL },
 		{ "guc_slpc_info", &guc_slpc_info_fops, &intel_eval_slpc_support},
+		{ "guc_sched_disable_delay_ms", &guc_sched_disable_delay_ms_fops, NULL },
+		{ "guc_sched_disable_gucid_threshold", &guc_sched_disable_gucid_threshold_fops,
+		   NULL },
 	};
 
 	if (!intel_guc_is_supported(guc))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 0d17da77e787..30612a6e3a27 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -65,7 +65,14 @@
  * corresponding G2H returns indicating the scheduling disable operation has
  * completed it is safe to unpin the context. While a disable is in flight it
  * isn't safe to resubmit the context so a fence is used to stall all future
- * requests of that context until the G2H is returned.
+ * requests of that context until the G2H is returned. Because this interaction
+ * with the GuC takes a non-zero amount of time / GuC cycles we delay the
+ * disabling of scheduling after the pin count goes to zero by a configurable
+ * period of time (default 34 ms, see SCHED_DISABLE_DELAY_MS). The thought is
+ * this gives the user a window of time to resubmit something on the context
+ * before doing a somewhat costly operation. This delay is only done if it
+ * isn't closed and the guc_id usage is less than a threshold (default 3/4,
+ * (see intel_guc_get_sched_disable_gucid_threshold_default()).
  *
  * Context deregistration:
  * Before a context can be destroyed or if we steal its guc_id we must
@@ -1989,6 +1996,9 @@ static int new_guc_id(struct intel_guc *guc, struct intel_context *ce)
 	if (unlikely(ret < 0))
 		return ret;
 
+	if (!intel_context_is_parent(ce))
+		++guc->submission_state.guc_ids_in_use;
+
 	ce->guc_id.id = ret;
 	return 0;
 }
@@ -1998,14 +2008,16 @@ static void __release_guc_id(struct intel_guc *guc, struct intel_context *ce)
 	GEM_BUG_ON(intel_context_is_child(ce));
 
 	if (!context_guc_id_invalid(ce)) {
-		if (intel_context_is_parent(ce))
+		if (intel_context_is_parent(ce)) {
 			bitmap_release_region(guc->submission_state.guc_ids_bitmap,
 					      ce->guc_id.id,
 					      order_base_2(ce->parallel.number_children
 							   + 1));
-		else
+		} else {
+			--guc->submission_state.guc_ids_in_use;
 			ida_simple_remove(&guc->submission_state.guc_ids,
 					  ce->guc_id.id);
+		}
 		clr_ctx_id_mapping(guc, ce->guc_id.id);
 		set_context_guc_id_invalid(ce);
 	}
@@ -2993,41 +3005,98 @@ guc_context_revoke(struct intel_context *ce, struct i915_request *rq,
 	}
 }
 
-static void guc_context_sched_disable(struct intel_context *ce)
+static void guc_context_sched_disable(struct intel_context *ce);
+
+static void do_sched_disable(struct intel_guc *guc, struct intel_context *ce,
+			     unsigned long flags)
+	__releases(ce->guc_state.lock)
 {
-	struct intel_guc *guc = ce_to_guc(ce);
-	unsigned long flags;
 	struct intel_runtime_pm *runtime_pm = &ce->engine->gt->i915->runtime_pm;
 	intel_wakeref_t wakeref;
-	u16 guc_id;
 
+	lockdep_assert_held(&ce->guc_state.lock);
+
+	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+
+	with_intel_runtime_pm(runtime_pm, wakeref)
+		guc_context_sched_disable(ce);
+}
+
+static bool bypass_sched_disable(struct intel_guc *guc,
+				 struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
 	GEM_BUG_ON(intel_context_is_child(ce));
 
+	if (submission_disabled(guc) || context_guc_id_invalid(ce) ||
+	    !ctx_id_mapped(guc, ce->guc_id.id)) {
+		clr_context_enabled(ce);
+		return true;
+	}
+
+	return !context_enabled(ce);
+}
+
+static void __delay_sched_disable(struct work_struct *wrk)
+{
+	struct intel_context *ce =
+		container_of(wrk, typeof(*ce), guc_state.sched_disable_delay.work);
+	struct intel_guc *guc = ce_to_guc(ce);
+	unsigned long flags;
+
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
 
-	/*
-	 * We have to check if the context has been disabled by another thread,
-	 * check if submssion has been disabled to seal a race with reset and
-	 * finally check if any more requests have been committed to the
-	 * context ensursing that a request doesn't slip through the
-	 * 'context_pending_disable' fence.
-	 */
-	if (unlikely(!context_enabled(ce) || submission_disabled(guc) ||
-		     context_has_committed_requests(ce))) {
-		clr_context_enabled(ce);
+	if (bypass_sched_disable(guc, ce)) {
 		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
-		goto unpin;
+		intel_context_sched_disable_unpin(ce);
+	} else {
+		do_sched_disable(guc, ce, flags);
 	}
-	guc_id = prep_context_pending_disable(ce);
+}
 
-	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+static bool guc_id_pressure(struct intel_guc *guc, struct intel_context *ce)
+{
+	/*
+	 * parent contexts are perma-pinned, if we are unpinning do schedule
+	 * disable immediately.
+	 */
+	if (intel_context_is_parent(ce))
+		return true;
 
-	with_intel_runtime_pm(runtime_pm, wakeref)
-		__guc_context_sched_disable(guc, ce, guc_id);
+	/*
+	 * If we are beyond the threshold for avail guc_ids, do schedule disable immediately.
+	 */
+	return guc->submission_state.guc_ids_in_use >
+		guc->submission_state.sched_disable_gucid_threshold;
+}
+
+static void guc_context_sched_disable(struct intel_context *ce)
+{
+	struct intel_guc *guc = ce_to_guc(ce);
+	u64 delay = guc->submission_state.sched_disable_delay_ms;
+	unsigned long flags;
+
+	spin_lock_irqsave(&ce->guc_state.lock, flags);
+
+	if (bypass_sched_disable(guc, ce)) {
+		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+		intel_context_sched_disable_unpin(ce);
+	} else if (!intel_context_is_closed(ce) && !guc_id_pressure(guc, ce) &&
+		   delay) {
+		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+		mod_delayed_work(system_unbound_wq,
+				 &ce->guc_state.sched_disable_delay,
+				 msecs_to_jiffies(delay));
+	} else {
+		do_sched_disable(guc, ce, flags);
+	}
+}
 
-	return;
-unpin:
-	intel_context_sched_disable_unpin(ce);
+static void guc_context_close(struct intel_context *ce)
+{
+	if (test_bit(CONTEXT_GUC_INIT, &ce->flags) &&
+	    cancel_delayed_work(&ce->guc_state.sched_disable_delay))
+		__delay_sched_disable(&ce->guc_state.sched_disable_delay.work);
 }
 
 static inline void guc_lrc_desc_unpin(struct intel_context *ce)
@@ -3346,6 +3415,8 @@ static void remove_from_context(struct i915_request *rq)
 static const struct intel_context_ops guc_context_ops = {
 	.alloc = guc_context_alloc,
 
+	.close = guc_context_close,
+
 	.pre_pin = guc_context_pre_pin,
 	.pin = guc_context_pin,
 	.unpin = guc_context_unpin,
@@ -3428,6 +3499,10 @@ static void guc_context_init(struct intel_context *ce)
 	rcu_read_unlock();
 
 	ce->guc_state.prio = map_i915_prio_to_guc_prio(prio);
+
+	INIT_DELAYED_WORK(&ce->guc_state.sched_disable_delay,
+			  __delay_sched_disable);
+
 	set_bit(CONTEXT_GUC_INIT, &ce->flags);
 }
 
@@ -3465,6 +3540,9 @@ static int guc_request_alloc(struct i915_request *rq)
 	if (unlikely(!test_bit(CONTEXT_GUC_INIT, &ce->flags)))
 		guc_context_init(ce);
 
+	if (cancel_delayed_work(&ce->guc_state.sched_disable_delay))
+		intel_context_sched_disable_unpin(ce);
+
 	/*
 	 * Call pin_guc_id here rather than in the pinning step as with
 	 * dma_resv, contexts can be repeatedly pinned / unpinned trashing the
@@ -3595,6 +3673,8 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
 static const struct intel_context_ops virtual_guc_context_ops = {
 	.alloc = guc_virtual_context_alloc,
 
+	.close = guc_context_close,
+
 	.pre_pin = guc_virtual_context_pre_pin,
 	.pin = guc_virtual_context_pin,
 	.unpin = guc_virtual_context_unpin,
@@ -3684,6 +3764,8 @@ static void guc_child_context_destroy(struct kref *kref)
 static const struct intel_context_ops virtual_parent_context_ops = {
 	.alloc = guc_virtual_context_alloc,
 
+	.close = guc_context_close,
+
 	.pre_pin = guc_context_pre_pin,
 	.pin = guc_parent_context_pin,
 	.unpin = guc_parent_context_unpin,
@@ -4207,6 +4289,21 @@ static bool __guc_submission_selected(struct intel_guc *guc)
 	return i915->params.enable_guc & ENABLE_GUC_SUBMISSION;
 }
 
+static int __guc_get_non_lrc_num_guc_ids(struct intel_guc *guc)
+{
+	return guc->submission_state.num_guc_ids - NUMBER_MULTI_LRC_GUC_ID(guc);
+}
+
+static int __guc_get_sched_disable_gucid_threshold_default(struct intel_guc *guc)
+{
+	return (__guc_get_non_lrc_num_guc_ids(guc) / 4 * 3);
+}
+
+int intel_guc_get_sched_disable_gucid_threshold_max(struct intel_guc *guc)
+{
+	return __guc_get_non_lrc_num_guc_ids(guc);
+}
+
 void intel_guc_submission_init_early(struct intel_guc *guc)
 {
 	xa_init_flags(&guc->context_lookup, XA_FLAGS_LOCK_IRQ);
@@ -4223,7 +4320,10 @@ void intel_guc_submission_init_early(struct intel_guc *guc)
 	spin_lock_init(&guc->timestamp.lock);
 	INIT_DELAYED_WORK(&guc->timestamp.work, guc_timestamp_ping);
 
+	guc->submission_state.sched_disable_delay_ms = SCHED_DISABLE_DELAY_MS;
 	guc->submission_state.num_guc_ids = GUC_MAX_CONTEXT_ID;
+	guc->submission_state.sched_disable_gucid_threshold =
+		__guc_get_sched_disable_gucid_threshold_default(guc);
 	guc->submission_supported = __guc_submission_supported(guc);
 	guc->submission_selected = __guc_submission_selected(guc);
 }
diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
index f54de0499be7..bdf3e22c0a34 100644
--- a/drivers/gpu/drm/i915/i915_selftest.h
+++ b/drivers/gpu/drm/i915/i915_selftest.h
@@ -92,12 +92,14 @@ int __i915_subtests(const char *caller,
 			T, ARRAY_SIZE(T), data)
 #define i915_live_subtests(T, data) ({ \
 	typecheck(struct drm_i915_private *, data); \
+	(data)->gt[0]->uc.guc.submission_state.sched_disable_delay_ms = 0; \
 	__i915_subtests(__func__, \
 			__i915_live_setup, __i915_live_teardown, \
 			T, ARRAY_SIZE(T), data); \
 })
 #define intel_gt_live_subtests(T, data) ({ \
 	typecheck(struct intel_gt *, data); \
+	(data)->uc.guc.submission_state.sched_disable_delay_ms = 0; \
 	__i915_subtests(__func__, \
 			__intel_gt_live_setup, __intel_gt_live_teardown, \
 			T, ARRAY_SIZE(T), data); \
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index 37b5c9e9d260..1b85c671935c 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -430,6 +430,11 @@ DEFINE_EVENT(intel_context, intel_context_reset,
 	     TP_ARGS(ce)
 );
 
+DEFINE_EVENT(intel_context, intel_context_close,
+	     TP_PROTO(struct intel_context *ce),
+	     TP_ARGS(ce)
+);
+
 DEFINE_EVENT(intel_context, intel_context_ban,
 	     TP_PROTO(struct intel_context *ce),
 	     TP_ARGS(ce)
@@ -532,6 +537,11 @@ trace_intel_context_reset(struct intel_context *ce)
 {
 }
 
+static inline void
+trace_intel_context_close(struct intel_context *ce)
+{
+}
+
 static inline void
 trace_intel_context_ban(struct intel_context *ce)
 {
-- 
2.25.1

