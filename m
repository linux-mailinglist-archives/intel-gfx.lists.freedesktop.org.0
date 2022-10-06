Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA595F7164
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 00:49:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC5210E122;
	Thu,  6 Oct 2022 22:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E82CC10E122
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 22:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665096559; x=1696632559;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MWqqriI83BXW9cOqZfInNPQx4oipXOmafXWqHyjaQHA=;
 b=Hc1XomKxY4xqw9fq5UMxuSz1W8tq6vL9i4FAiTHFFZ0H+MrsAEhMXmpw
 EViUu0Vq4k4aFwFewUSqO2WC9OtvAKViTG/LJM46cj54aWrOiRL6qDle4
 i1Q+Vk+5jHYz3pN7r8W/BSxhwxaT+Df+juDgX6/eaNwkPYNq8ZoETM+8z
 jPtg8sTWFhvEmXyliKFDhMNhmiiMelE1lpA+mjfa+nuSrJZYJnLaQom+T
 o/fPhr5kiyAjU/KbpFZGPT7Uio+uNGGhr6UJ2S2gyPGP0Dz6d3V7/FXPv
 ki3E1lmKKx6u1sqM9vS8oAg9QTEhHlR9w/VEfivKXHr33XHmphIfWKgT0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="304591433"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="304591433"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 15:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="627200632"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="627200632"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga007.fm.intel.com with ESMTP; 06 Oct 2022 15:49:18 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Oct 2022 15:51:20 -0700
Message-Id: <20221006225121.826257-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006225121.826257-1-alan.previn.teres.alexis@intel.com>
References: <20221006225121.826257-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/2] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
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

Add a delay, configurable via debugfs (default 34ms), to disable
scheduling of a context after the pin count goes to zero. Disable
scheduling is a costly operation as it requires synchronizing with
the GuC. So the idea is that a delay allows the user to resubmit
something before doing this operation. This delay is only done if
the context isn't closed and less than a given threshold
(default is 3/4) of the guc_ids are in use.

Alan Previn: Matt Brost first introduced this patch back in Oct 2021.
However no real world workload with measured performance impact was
available to prove the intended results. Today, this series is being
republished in response to a real world workload that benefited greatly
from it along with measured performance improvement.

Workload description: 36 containers were created on a DG2 device where
each container was performing a combination of 720p 3d game rendering
and 30fps video encoding. The workload density was configured in a way
that guaranteed each container to ALWAYS be able to render and
encode no less than 30fps with a predefined maximum render + encode
latency time. That means the totality of all 36 containers and their
workloads were not saturating the engines to their max (in order to
maintain just enough headrooom to meet the min fps and max latencies
of incoming container submissions).

Problem statement: It was observed that the CPU core processing the i915
soft IRQ work was experiencing severe load. Using tracelogs and an
instrumentation patch to count specific i915 IRQ events, it was confirmed
that the majority of the CPU cycles were caused by the
gen11_other_irq_handler() -> guc_irq_handler() code path. The vast
majority of the cycles was determined to be processing a specific G2H
IRQ: i.e. INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE. These IRQs are sent
by GuC in response to i915 KMD sending H2G requests:
INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET. Those H2G requests are sent
whenever a context goes idle so that we can unpin the context from GuC.
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

Design awareness: Selftest impact.
As temporary WA disable this feature for the selftests. Selftests are
very timing sensitive and any change in timing can cause failure. A
follow up patch will fixup the selftests to understand this delay.

Design awareness: Race between guc_request_alloc and guc_context_close.
If a context close is issued while there is a request submission in
flight and a delayed schedule disable is pending, guc_context_close
and guc_request_alloc will race to cancel the delayed disable.
To close the race, make sure that guc_request_alloc waits for
guc_context_close to finish running before checking any state.

Design awareness: GT Reset event.
If a gt reset is triggered, as preparation steps, add an additional step
to ensure all contexts that have a pending delay-disable-schedule task
be flushed of it. Move them directly into the closed state after cancelling
the worker. This is okay because the existing flow flushes all
yet-to-arrive G2H's dropping them anyway.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_context.h       |   8 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |   7 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  16 ++
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  61 ++++++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 205 +++++++++++++++---
 drivers/gpu/drm/i915/i915_selftest.h          |   2 +
 7 files changed, 274 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 1e29b1e6d186..d0a537b15ebb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1452,7 +1452,7 @@ static void engines_idle_release(struct i915_gem_context *ctx,
 		int err;
 
 		/* serialises with execbuf */
-		set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
+		intel_context_close(ce);
 		if (!intel_context_pin_if_active(ce))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index be09fb2e883a..fb62b7b8cbcd 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -276,6 +276,14 @@ static inline bool intel_context_is_barrier(const struct intel_context *ce)
 	return test_bit(CONTEXT_BARRIER_BIT, &ce->flags);
 }
 
+static inline void intel_context_close(struct intel_context *ce)
+{
+	set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
+
+	if (ce->ops->close)
+		ce->ops->close(ce);
+}
+
 static inline bool intel_context_is_closed(const struct intel_context *ce)
 {
 	return test_bit(CONTEXT_CLOSED_BIT, &ce->flags);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 04eacae1aca5..6a49fa7e119f 100644
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
+		 * @sched_disable_delay_work: worker to disable scheduling on this
+		 * context
+		 */
+		struct delayed_work sched_disable_delay_work;
 	} guc_state;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 804133df1ac9..357873ef692b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -112,6 +112,10 @@ struct intel_guc {
 		 * refs
 		 */
 		struct list_head guc_id_list;
+		/**
+		 * @guc_ids_in_use: Number single-lrc guc_ids in use
+		 */
+		unsigned int guc_ids_in_use;
 		/**
 		 * @destroyed_contexts: list of contexts waiting to be destroyed
 		 * (deregistered with the GuC)
@@ -132,6 +136,16 @@ struct intel_guc {
 		 * @reset_fail_mask: mask of engines that failed to reset
 		 */
 		intel_engine_mask_t reset_fail_mask;
+		/**
+		 * @sched_disable_delay_ms: schedule disable delay, in ms, for
+		 * contexts
+		 */
+		unsigned int sched_disable_delay_ms;
+		/**
+		 * @sched_disable_gucid_threshold: threshold of min remaining available
+		 * guc_ids before we start bypassing the schedule disable delay
+		 */
+		unsigned int sched_disable_gucid_threshold;
 	} submission_state;
 
 	/**
@@ -466,4 +480,6 @@ void intel_guc_write_barrier(struct intel_guc *guc);
 
 void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
 
+int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
index 25f09a420561..7269eb0bbedf 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
@@ -71,12 +71,73 @@ static bool intel_eval_slpc_support(void *data)
 	return intel_guc_slpc_is_used(guc);
 }
 
+static int guc_sched_disable_delay_ms_get(void *data, u64 *val)
+{
+	struct intel_guc *guc = data;
+
+	if (!intel_guc_submission_is_used(guc))
+		return -ENODEV;
+
+	*val = (u64)guc->submission_state.sched_disable_delay_ms;
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
+	/* clamp to a practical limit, 1 minute is reasonable for a longest delay */
+	guc->submission_state.sched_disable_delay_ms = min_t(u64, val, 60000);
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
+	if (!intel_guc_submission_is_used(guc))
+		return -ENODEV;
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
+	if (val > intel_guc_sched_disable_gucid_threshold_max(guc))
+		guc->submission_state.sched_disable_gucid_threshold =
+			intel_guc_sched_disable_gucid_threshold_max(guc);
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
index 693b07a97789..3cfdb0a5e5bb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -66,7 +66,13 @@
  * corresponding G2H returns indicating the scheduling disable operation has
  * completed it is safe to unpin the context. While a disable is in flight it
  * isn't safe to resubmit the context so a fence is used to stall all future
- * requests of that context until the G2H is returned.
+ * requests of that context until the G2H is returned. Because this interaction
+ * with the GuC takes a non-zero amount of time we delay the disabling of
+ * scheduling after the pin count goes to zero by a configurable period of time
+ * (see SCHED_DISABLE_DELAY_MS). The thought is this gives the user a window of
+ * time to resubmit something on the context before doing this costly operation.
+ * This delay is only done if the context isn't closed and the guc_id usage is
+ * less than a threshold (see NUM_SCHED_DISABLE_GUC_IDS_THRESHOLD).
  *
  * Context deregistration:
  * Before a context can be destroyed or if we steal its guc_id we must
@@ -164,7 +170,8 @@ guc_create_parallel(struct intel_engine_cs **engines,
 #define SCHED_STATE_PENDING_ENABLE			BIT(5)
 #define SCHED_STATE_REGISTERED				BIT(6)
 #define SCHED_STATE_POLICY_REQUIRED			BIT(7)
-#define SCHED_STATE_BLOCKED_SHIFT			8
+#define SCHED_STATE_CLOSED				BIT(8)
+#define SCHED_STATE_BLOCKED_SHIFT			9
 #define SCHED_STATE_BLOCKED		BIT(SCHED_STATE_BLOCKED_SHIFT)
 #define SCHED_STATE_BLOCKED_MASK	(0xfff << SCHED_STATE_BLOCKED_SHIFT)
 
@@ -174,12 +181,20 @@ static inline void init_sched_state(struct intel_context *ce)
 	ce->guc_state.sched_state &= SCHED_STATE_BLOCKED_MASK;
 }
 
+/*
+ * Kernel contexts can have SCHED_STATE_REGISTERED after suspend.
+ * A context close can race with the submission path, so SCHED_STATE_CLOSED
+ * can be set immediately before we try to register.
+ */
+#define SCHED_STATE_VALID_INIT \
+	(SCHED_STATE_BLOCKED_MASK | \
+	 SCHED_STATE_CLOSED | \
+	 SCHED_STATE_REGISTERED)
+
 __maybe_unused
 static bool sched_state_is_init(struct intel_context *ce)
 {
-	/* Kernel contexts can have SCHED_STATE_REGISTERED after suspend. */
-	return !(ce->guc_state.sched_state &
-		 ~(SCHED_STATE_BLOCKED_MASK | SCHED_STATE_REGISTERED));
+	return !(ce->guc_state.sched_state & ~SCHED_STATE_VALID_INIT);
 }
 
 static inline bool
@@ -320,6 +335,17 @@ static inline void clr_context_policy_required(struct intel_context *ce)
 	ce->guc_state.sched_state &= ~SCHED_STATE_POLICY_REQUIRED;
 }
 
+static inline bool context_close_done(struct intel_context *ce)
+{
+	return ce->guc_state.sched_state & SCHED_STATE_CLOSED;
+}
+
+static inline void set_context_close_done(struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
+	ce->guc_state.sched_state |= SCHED_STATE_CLOSED;
+}
+
 static inline u32 context_blocked(struct intel_context *ce)
 {
 	return (ce->guc_state.sched_state & SCHED_STATE_BLOCKED_MASK) >>
@@ -1068,6 +1094,12 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
 
 		xa_unlock(&guc->context_lookup);
 
+		if (test_bit(CONTEXT_GUC_INIT, &ce->flags) &&
+		    (cancel_delayed_work(&ce->guc_state.sched_disable_delay_work))) {
+			/* successful cancel so jump straight to close it */
+			intel_context_sched_disable_unpin(ce);
+		}
+
 		spin_lock(&ce->guc_state.lock);
 
 		/*
@@ -1995,6 +2027,9 @@ static int new_guc_id(struct intel_guc *guc, struct intel_context *ce)
 	if (unlikely(ret < 0))
 		return ret;
 
+	if (!intel_context_is_parent(ce))
+		++guc->submission_state.guc_ids_in_use;
+
 	ce->guc_id.id = ret;
 	return 0;
 }
@@ -2004,14 +2039,16 @@ static void __release_guc_id(struct intel_guc *guc, struct intel_context *ce)
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
@@ -2999,41 +3036,104 @@ guc_context_revoke(struct intel_context *ce, struct i915_request *rq,
 	}
 }
 
-static void guc_context_sched_disable(struct intel_context *ce)
+static void do_sched_disable(struct intel_guc *guc, struct intel_context *ce,
+			     unsigned long flags)
+	__releases(ce->guc_state.lock)
 {
-	struct intel_guc *guc = ce_to_guc(ce);
-	unsigned long flags;
 	struct intel_runtime_pm *runtime_pm = &ce->engine->gt->i915->runtime_pm;
 	intel_wakeref_t wakeref;
 	u16 guc_id;
 
+	lockdep_assert_held(&ce->guc_state.lock);
+	guc_id = prep_context_pending_disable(ce);
+
+	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+
+	with_intel_runtime_pm(runtime_pm, wakeref)
+		__guc_context_sched_disable(guc, ce, guc_id);
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
+		container_of(wrk, typeof(*ce), guc_state.sched_disable_delay_work.work);
+	struct intel_guc *guc = ce_to_guc(ce);
+	unsigned long flags;
+
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
 
+	if (bypass_sched_disable(guc, ce)) {
+		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+		intel_context_sched_disable_unpin(ce);
+	} else {
+		do_sched_disable(guc, ce, flags);
+	}
+}
+
+static bool guc_id_pressure(struct intel_guc *guc, struct intel_context *ce)
+{
 	/*
-	 * We have to check if the context has been disabled by another thread,
-	 * check if submssion has been disabled to seal a race with reset and
-	 * finally check if any more requests have been committed to the
-	 * context ensursing that a request doesn't slip through the
-	 * 'context_pending_disable' fence.
+	 * parent contexts are perma-pinned, if we are unpinning do schedule
+	 * disable immediately.
 	 */
-	if (unlikely(!context_enabled(ce) || submission_disabled(guc) ||
-		     context_has_committed_requests(ce))) {
-		clr_context_enabled(ce);
+	if (intel_context_is_parent(ce))
+		return true;
+
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
 		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
-		goto unpin;
+		mod_delayed_work(system_unbound_wq,
+				 &ce->guc_state.sched_disable_delay_work,
+				 msecs_to_jiffies(delay));
+	} else {
+		do_sched_disable(guc, ce, flags);
 	}
-	guc_id = prep_context_pending_disable(ce);
+}
 
-	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+static void guc_context_close(struct intel_context *ce)
+{
+	unsigned long flags;
 
-	with_intel_runtime_pm(runtime_pm, wakeref)
-		__guc_context_sched_disable(guc, ce, guc_id);
+	if (test_bit(CONTEXT_GUC_INIT, &ce->flags) &&
+	    cancel_delayed_work(&ce->guc_state.sched_disable_delay_work))
+		__delay_sched_disable(&ce->guc_state.sched_disable_delay_work.work);
 
-	return;
-unpin:
-	intel_context_sched_disable_unpin(ce);
+	spin_lock_irqsave(&ce->guc_state.lock, flags);
+	set_context_close_done(ce);
+	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 }
 
 static inline void guc_lrc_desc_unpin(struct intel_context *ce)
@@ -3352,6 +3452,8 @@ static void remove_from_context(struct i915_request *rq)
 static const struct intel_context_ops guc_context_ops = {
 	.alloc = guc_context_alloc,
 
+	.close = guc_context_close,
+
 	.pre_pin = guc_context_pre_pin,
 	.pin = guc_context_pin,
 	.unpin = guc_context_unpin,
@@ -3434,6 +3536,10 @@ static void guc_context_init(struct intel_context *ce)
 	rcu_read_unlock();
 
 	ce->guc_state.prio = map_i915_prio_to_guc_prio(prio);
+
+	INIT_DELAYED_WORK(&ce->guc_state.sched_disable_delay_work,
+			  __delay_sched_disable);
+
 	set_bit(CONTEXT_GUC_INIT, &ce->flags);
 }
 
@@ -3471,6 +3577,26 @@ static int guc_request_alloc(struct i915_request *rq)
 	if (unlikely(!test_bit(CONTEXT_GUC_INIT, &ce->flags)))
 		guc_context_init(ce);
 
+	/*
+	 * If the context gets closed while the execbuf is ongoing, the context
+	 * close code will race with the below code to cancel the delayed work.
+	 * If the context close wins the race and cancels the work, it will
+	 * immediately call the sched disable (see guc_context_close), so there
+	 * is a chance we can get past this check while the sched_disable code
+	 * is being executed. To make sure that code completes before we check
+	 * the status further down, we wait for the close process to complete.
+	 * Else, this code path could send a request down thinking that the
+	 * context is still in a schedule-enable mode while the GuC ends up
+	 * dropping the request completely because the disable did go from the
+	 * context_close path right to GuC just prior. In the event the CT is
+	 * full, we could potentially need to wait up to 1.5 seconds.
+	 */
+	if (cancel_delayed_work_sync(&ce->guc_state.sched_disable_delay_work))
+		intel_context_sched_disable_unpin(ce);
+	else if (intel_context_is_closed(ce))
+		if (wait_for(context_close_done(ce), 1500))
+			drm_warn(&guc_to_gt(guc)->i915->drm,
+				 "timed out waiting on context sched close before realloc\n");
 	/*
 	 * Call pin_guc_id here rather than in the pinning step as with
 	 * dma_resv, contexts can be repeatedly pinned / unpinned trashing the
@@ -3601,6 +3727,8 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
 static const struct intel_context_ops virtual_guc_context_ops = {
 	.alloc = guc_virtual_context_alloc,
 
+	.close = guc_context_close,
+
 	.pre_pin = guc_virtual_context_pre_pin,
 	.pin = guc_virtual_context_pin,
 	.unpin = guc_virtual_context_unpin,
@@ -3690,6 +3818,8 @@ static void guc_child_context_destroy(struct kref *kref)
 static const struct intel_context_ops virtual_parent_context_ops = {
 	.alloc = guc_virtual_context_alloc,
 
+	.close = guc_context_close,
+
 	.pre_pin = guc_context_pre_pin,
 	.pin = guc_parent_context_pin,
 	.unpin = guc_parent_context_unpin,
@@ -4313,6 +4443,26 @@ static bool __guc_submission_selected(struct intel_guc *guc)
 	return i915->params.enable_guc & ENABLE_GUC_SUBMISSION;
 }
 
+int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc)
+{
+	return guc->submission_state.num_guc_ids - NUMBER_MULTI_LRC_GUC_ID(guc);
+}
+
+/*
+ * This default value of 33 milisecs (+1 milisec round up) ensures 30fps or higher
+ * workloads are able to enjoy the latency reduction when delaying the schedule-disable
+ * operation. This matches the 30fps game-render + encode (real world) workload this
+ * knob was tested against.
+ */
+#define SCHED_DISABLE_DELAY_MS	34
+
+/*
+ * A threshold of 75% is a reasonable starting point considering that real world apps
+ * generally don't get anywhere near this.
+ */
+#define NUM_SCHED_DISABLE_GUCIDS_DEFAULT_THRESHOLD(__guc) \
+	(((intel_guc_sched_disable_gucid_threshold_max(guc)) * 3) / 4)
+
 void intel_guc_submission_init_early(struct intel_guc *guc)
 {
 	xa_init_flags(&guc->context_lookup, XA_FLAGS_LOCK_IRQ);
@@ -4329,7 +4479,10 @@ void intel_guc_submission_init_early(struct intel_guc *guc)
 	spin_lock_init(&guc->timestamp.lock);
 	INIT_DELAYED_WORK(&guc->timestamp.work, guc_timestamp_ping);
 
+	guc->submission_state.sched_disable_delay_ms = SCHED_DISABLE_DELAY_MS;
 	guc->submission_state.num_guc_ids = GUC_MAX_CONTEXT_ID;
+	guc->submission_state.sched_disable_gucid_threshold =
+		NUM_SCHED_DISABLE_GUCIDS_DEFAULT_THRESHOLD(guc);
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
-- 
2.34.1

