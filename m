Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC04414D6B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 17:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC3F6EC2B;
	Wed, 22 Sep 2021 15:52:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 487E46EC28;
 Wed, 22 Sep 2021 15:52:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="210862744"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="210862744"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 08:52:01 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="704069008"
Received: from bbrowne-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.200.151])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 08:52:00 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Aravind Iddamsetty <aravind.iddamsetty@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 22 Sep 2021 16:51:43 +0100
Message-Id: <20210922155145.93174-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210922155145.93174-1-tvrtko.ursulin@linux.intel.com>
References: <20210922155145.93174-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: Track context current active time
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Track context active (on hardware) status together with the start
timestamp.

This will be used to provide better granularity of context
runtime reporting in conjunction with already tracked pphwsp accumulated
runtime.

The latter is only updated on context save so does not give us visibility
to any currently executing work.

As part of the patch the existing runtime tracking data is moved under the
new ce->stats member and updated under the seqlock. This provides the
ability to atomically read out accumulated plus active runtime.

v2:
 * Rename and make __intel_context_get_active_time unlocked.

v3:
 * Use GRAPHICS_VER.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com> #  v1
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 27 ++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_context.h       | 15 ++++-------
 drivers/gpu/drm/i915/gt/intel_context_types.h | 24 +++++++++++------
 .../drm/i915/gt/intel_execlists_submission.c  | 23 ++++++++++++----
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |  4 +++
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 27 ++++++++++---------
 drivers/gpu/drm/i915/gt/intel_lrc.h           | 24 +++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 10 +++----
 drivers/gpu/drm/i915/i915_gpu_error.c         |  9 +++----
 drivers/gpu/drm/i915/i915_gpu_error.h         |  2 +-
 10 files changed, 116 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index ff637147b1a9..ae97c311d65b 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -382,7 +382,7 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 	ce->ring = NULL;
 	ce->ring_size = SZ_4K;
 
-	ewma_runtime_init(&ce->runtime.avg);
+	ewma_runtime_init(&ce->stats.runtime.avg);
 
 	ce->vm = i915_vm_get(engine->gt->vm);
 
@@ -532,6 +532,31 @@ struct i915_request *intel_context_find_active_request(struct intel_context *ce)
 	return active;
 }
 
+u64 intel_context_get_total_runtime_ns(const struct intel_context *ce)
+{
+	u64 total, active;
+
+	total = ce->stats.runtime.total;
+	if (ce->ops->flags & COPS_RUNTIME_CYCLES)
+		total *= ce->engine->gt->clock_period_ns;
+
+	active = READ_ONCE(ce->stats.active);
+	if (active)
+		active = intel_context_clock() - active;
+
+	return total + active;
+}
+
+u64 intel_context_get_avg_runtime_ns(struct intel_context *ce)
+{
+	u64 avg = ewma_runtime_read(&ce->stats.runtime.avg);
+
+	if (ce->ops->flags & COPS_RUNTIME_CYCLES)
+		avg *= ce->engine->gt->clock_period_ns;
+
+	return avg;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_context.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index c41098950746..2aaffe1bb388 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -296,18 +296,13 @@ intel_context_clear_nopreempt(struct intel_context *ce)
 	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
 }
 
-static inline u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
-{
-	const u32 period = ce->engine->gt->clock_period_ns;
-
-	return READ_ONCE(ce->runtime.total) * period;
-}
+u64 intel_context_get_total_runtime_ns(const struct intel_context *ce);
+u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
 
-static inline u64 intel_context_get_avg_runtime_ns(struct intel_context *ce)
+static inline u64 intel_context_clock(void)
 {
-	const u32 period = ce->engine->gt->clock_period_ns;
-
-	return mul_u32_u32(ewma_runtime_read(&ce->runtime.avg), period);
+	/* As we mix CS cycles with CPU clocks, use the raw monotonic clock. */
+	return ktime_get_raw_fast_ns();
 }
 
 #endif /* __INTEL_CONTEXT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 930569a1a01f..2a8a8d207691 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -35,6 +35,9 @@ struct intel_context_ops {
 #define COPS_HAS_INFLIGHT_BIT 0
 #define COPS_HAS_INFLIGHT BIT(COPS_HAS_INFLIGHT_BIT)
 
+#define COPS_RUNTIME_CYCLES_BIT 1
+#define COPS_RUNTIME_CYCLES BIT(COPS_RUNTIME_CYCLES_BIT)
+
 	int (*alloc)(struct intel_context *ce);
 
 	void (*ban)(struct intel_context *ce, struct i915_request *rq);
@@ -128,14 +131,19 @@ struct intel_context {
 	} lrc;
 	u32 tag; /* cookie passed to HW to track this context on submission */
 
-	/* Time on GPU as tracked by the hw. */
-	struct {
-		struct ewma_runtime avg;
-		u64 total;
-		u32 last;
-		I915_SELFTEST_DECLARE(u32 num_underflow);
-		I915_SELFTEST_DECLARE(u32 max_underflow);
-	} runtime;
+	/** stats: Context GPU engine busyness tracking. */
+	struct intel_context_stats {
+		u64 active;
+
+		/* Time on GPU as tracked by the hw. */
+		struct {
+			struct ewma_runtime avg;
+			u64 total;
+			u32 last;
+			I915_SELFTEST_DECLARE(u32 num_underflow);
+			I915_SELFTEST_DECLARE(u32 max_underflow);
+		} runtime;
+	} stats;
 
 	unsigned int active_count; /* protected by timeline->mutex */
 
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 87c595e4efe2..53529713eb50 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -621,8 +621,6 @@ static void __execlists_schedule_out(struct i915_request * const rq,
 		GEM_BUG_ON(test_bit(ccid - 1, &engine->context_tag));
 		__set_bit(ccid - 1, &engine->context_tag);
 	}
-
-	lrc_update_runtime(ce);
 	intel_engine_context_out(engine);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
 	if (engine->fw_domain && !--engine->fw_active)
@@ -2003,8 +2001,23 @@ process_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
 	 * and merits a fresh timeslice. We reinstall the timer after
 	 * inspecting the queue to see if we need to resumbit.
 	 */
-	if (*prev != *execlists->active) /* elide lite-restores */
+	if (*prev != *execlists->active) { /* elide lite-restores */
+		/*
+		 * Note the inherent discrepancy between the HW runtime,
+		 * recorded as part of the context switch, and the CPU
+		 * adjustment for active contexts. We have to hope that
+		 * the delay in processing the CS event is very small
+		 * and consistent. It works to our advantage to have
+		 * the CPU adjustment _undershoot_ (i.e. start later than)
+		 * the CS timestamp so we never overreport the runtime
+		 * and correct overselves later when updating from HW.
+		 */
+		if (*prev)
+			lrc_runtime_stop((*prev)->context);
+		if (*execlists->active)
+			lrc_runtime_start((*execlists->active)->context);
 		new_timeslice(execlists);
+	}
 
 	return inactive;
 }
@@ -2598,7 +2611,7 @@ static void execlists_context_cancel_request(struct intel_context *ce,
 }
 
 static const struct intel_context_ops execlists_context_ops = {
-	.flags = COPS_HAS_INFLIGHT,
+	.flags = COPS_HAS_INFLIGHT | COPS_RUNTIME_CYCLES,
 
 	.alloc = execlists_context_alloc,
 
@@ -3616,7 +3629,7 @@ virtual_get_sibling(struct intel_engine_cs *engine, unsigned int sibling)
 }
 
 static const struct intel_context_ops virtual_context_ops = {
-	.flags = COPS_HAS_INFLIGHT,
+	.flags = COPS_HAS_INFLIGHT | COPS_RUNTIME_CYCLES,
 
 	.alloc = virtual_context_alloc,
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 3513d6f90747..c5b561f71756 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -159,6 +159,10 @@ void intel_gt_init_clock_frequency(struct intel_gt *gt)
 	if (gt->clock_frequency)
 		gt->clock_period_ns = intel_gt_clock_interval_to_ns(gt, 1);
 
+	/* Icelake appears to use another fixed frequency for CTX_TIMESTAMP */
+	if (GRAPHICS_VER(gt->i915) == 11)
+		gt->clock_period_ns = NSEC_PER_SEC / 13750000;
+
 	GT_TRACE(gt,
 		 "Using clock frequency: %dkHz, period: %dns, wrap: %lldms\n",
 		 gt->clock_frequency / 1000,
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 6ba8daea2f56..3f3f189b365a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -774,7 +774,7 @@ static void init_common_regs(u32 * const regs,
 					   CTX_CTRL_RS_CTX_ENABLE);
 	regs[CTX_CONTEXT_CONTROL] = ctl;
 
-	regs[CTX_TIMESTAMP] = ce->runtime.last;
+	regs[CTX_TIMESTAMP] = ce->stats.runtime.last;
 }
 
 static void init_wa_bb_regs(u32 * const regs,
@@ -1667,35 +1667,36 @@ void lrc_init_wa_ctx(struct intel_engine_cs *engine)
 	}
 }
 
-static void st_update_runtime_underflow(struct intel_context *ce, s32 dt)
+static void st_runtime_underflow(struct intel_context_stats *stats, s32 dt)
 {
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
-	ce->runtime.num_underflow++;
-	ce->runtime.max_underflow = max_t(u32, ce->runtime.max_underflow, -dt);
+	stats->runtime.num_underflow++;
+	stats->runtime.max_underflow =
+		max_t(u32, stats->runtime.max_underflow, -dt);
 #endif
 }
 
 void lrc_update_runtime(struct intel_context *ce)
 {
+	struct intel_context_stats *stats = &ce->stats;
 	u32 old;
 	s32 dt;
 
-	if (intel_context_is_barrier(ce))
+	old = stats->runtime.last;
+	stats->runtime.last = lrc_get_runtime(ce);
+	dt = stats->runtime.last - old;
+	if (!dt)
 		return;
 
-	old = ce->runtime.last;
-	ce->runtime.last = lrc_get_runtime(ce);
-	dt = ce->runtime.last - old;
-
 	if (unlikely(dt < 0)) {
 		CE_TRACE(ce, "runtime underflow: last=%u, new=%u, delta=%d\n",
-			 old, ce->runtime.last, dt);
-		st_update_runtime_underflow(ce, dt);
+			 old, stats->runtime.last, dt);
+		st_runtime_underflow(stats, dt);
 		return;
 	}
 
-	ewma_runtime_add(&ce->runtime.avg, dt);
-	ce->runtime.total += dt;
+	ewma_runtime_add(&stats->runtime.avg, dt);
+	stats->runtime.total += dt;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index 7f697845c4cf..8073674538d7 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -79,4 +79,28 @@ static inline u32 lrc_get_runtime(const struct intel_context *ce)
 	return READ_ONCE(ce->lrc_reg_state[CTX_TIMESTAMP]);
 }
 
+static inline void lrc_runtime_start(struct intel_context *ce)
+{
+	struct intel_context_stats *stats = &ce->stats;
+
+	if (intel_context_is_barrier(ce))
+		return;
+
+	if (stats->active)
+		return;
+
+	WRITE_ONCE(stats->active, intel_context_clock());
+}
+
+static inline void lrc_runtime_stop(struct intel_context *ce)
+{
+	struct intel_context_stats *stats = &ce->stats;
+
+	if (!stats->active)
+		return;
+
+	lrc_update_runtime(ce);
+	WRITE_ONCE(stats->active, 0);
+}
+
 #endif /* __INTEL_LRC_H__ */
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index b0977a3b699b..9b9ee0fe1512 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1751,8 +1751,8 @@ static int __live_pphwsp_runtime(struct intel_engine_cs *engine)
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
-	ce->runtime.num_underflow = 0;
-	ce->runtime.max_underflow = 0;
+	ce->stats.runtime.num_underflow = 0;
+	ce->stats.runtime.max_underflow = 0;
 
 	do {
 		unsigned int loop = 1024;
@@ -1790,11 +1790,11 @@ static int __live_pphwsp_runtime(struct intel_engine_cs *engine)
 		intel_context_get_avg_runtime_ns(ce));
 
 	err = 0;
-	if (ce->runtime.num_underflow) {
+	if (ce->stats.runtime.num_underflow) {
 		pr_err("%s: pphwsp underflow %u time(s), max %u cycles!\n",
 		       engine->name,
-		       ce->runtime.num_underflow,
-		       ce->runtime.max_underflow);
+		       ce->stats.runtime.num_underflow,
+		       ce->stats.runtime.max_underflow);
 		GEM_TRACE_DUMP();
 		err = -EOVERFLOW;
 	}
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 2a2d7643b551..f812eabb474a 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -504,13 +504,10 @@ static void error_print_context(struct drm_i915_error_state_buf *m,
 				const char *header,
 				const struct i915_gem_context_coredump *ctx)
 {
-	const u32 period = m->i915->gt.clock_period_ns;
-
 	err_printf(m, "%s%s[%d] prio %d, guilty %d active %d, runtime total %lluns, avg %lluns\n",
 		   header, ctx->comm, ctx->pid, ctx->sched_attr.priority,
 		   ctx->guilty, ctx->active,
-		   ctx->total_runtime * period,
-		   mul_u32_u32(ctx->avg_runtime, period));
+		   ctx->total_runtime, ctx->avg_runtime);
 }
 
 static struct i915_vma_coredump *
@@ -1309,8 +1306,8 @@ static bool record_context(struct i915_gem_context_coredump *e,
 	e->guilty = atomic_read(&ctx->guilty_count);
 	e->active = atomic_read(&ctx->active_count);
 
-	e->total_runtime = rq->context->runtime.total;
-	e->avg_runtime = ewma_runtime_read(&rq->context->runtime.avg);
+	e->total_runtime = intel_context_get_total_runtime_ns(rq->context);
+	e->avg_runtime = intel_context_get_avg_runtime_ns(rq->context);
 
 	simulated = i915_gem_context_no_error_capture(ctx);
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index b98d8cdbe4f2..b11deb547672 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -90,7 +90,7 @@ struct intel_engine_coredump {
 		char comm[TASK_COMM_LEN];
 
 		u64 total_runtime;
-		u32 avg_runtime;
+		u64 avg_runtime;
 
 		pid_t pid;
 		int active;
-- 
2.30.2

