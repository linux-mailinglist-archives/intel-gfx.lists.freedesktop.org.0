Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DFC1A9A25
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 12:12:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 698796E950;
	Wed, 15 Apr 2020 10:12:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 957926E94E
 for <Intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 10:12:01 +0000 (UTC)
IronPort-SDR: FEYeVe9/c4cdGRjz7fsvrzFug7xoWUcDKhdmuRbyC1UBGI+xYqvsKTydrbv2t7lEdxdNBF9NQW
 oWEeGK+7MkRw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 03:12:01 -0700
IronPort-SDR: Tn79h3grn+Ig1B32hXEHEaOJ/fdh4+rHLnfoaqi7yI4Yaa04qVMKy/mybrReRvW4hPzD3Leo2n
 Xr0AuFD2TeCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="427385547"
Received: from idodadon-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.240.154])
 by orsmga005.jf.intel.com with ESMTP; 15 Apr 2020 03:11:59 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 11:11:37 +0100
Message-Id: <20200415101138.26126-9-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
References: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/9] drm/i915: Track context current active time
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

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  3 +-
 drivers/gpu/drm/i915/gt/intel_context.c       | 18 +++++-
 drivers/gpu/drm/i915/gt/intel_context.h       |  6 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h | 24 +++++---
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 58 ++++++++++++++-----
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 10 ++--
 drivers/gpu/drm/i915/i915_drm_client.c        |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  4 +-
 8 files changed, 91 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 96f70c84cb29..e9c33662b90c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -266,7 +266,8 @@ static void free_engines_rcu(struct rcu_head *rcu)
 		unsigned int class = ce->engine->uabi_class;
 
 		GEM_BUG_ON(class >= ARRAY_SIZE(ctx->past_runtime));
-		atomic64_add(ce->runtime.total, &ctx->past_runtime[class]);
+		atomic64_add(ce->stats.runtime.total,
+			     &ctx->past_runtime[class]);
 	}
 
 	i915_gem_context_put(ctx);
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index e4aece20bc80..473238c2a85b 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -293,7 +293,7 @@ intel_context_init(struct intel_context *ce,
 	ce->sseu = engine->sseu;
 	ce->ring = __intel_context_ring_size(SZ_4K);
 
-	ewma_runtime_init(&ce->runtime.avg);
+	ewma_runtime_init(&ce->stats.runtime.avg);
 
 	ce->vm = i915_vm_get(engine->gt->vm);
 
@@ -301,6 +301,7 @@ intel_context_init(struct intel_context *ce,
 	INIT_LIST_HEAD(&ce->signals);
 
 	mutex_init(&ce->pin_mutex);
+	seqlock_init(&ce->stats.lock);
 
 	i915_active_init(&ce->active,
 			 __intel_context_active, __intel_context_retire);
@@ -395,6 +396,21 @@ struct i915_request *intel_context_create_request(struct intel_context *ce)
 	return rq;
 }
 
+ktime_t intel_context_get_active_time(struct intel_context *ce)
+{
+	struct intel_context_stats *stats = &ce->stats;
+	unsigned int seq;
+	ktime_t total = 0;
+
+	do {
+		seq = read_seqbegin(&stats->lock);
+		if (stats->active)
+			total = ktime_sub(ktime_get(), stats->start);
+	} while (read_seqretry(&stats->lock, seq));
+
+	return total;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_context.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 07be021882cc..fdd5f4366db2 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -238,7 +238,7 @@ static inline u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
 	const u32 period =
 		RUNTIME_INFO(ce->engine->i915)->cs_timestamp_period_ns;
 
-	return READ_ONCE(ce->runtime.total) * period;
+	return READ_ONCE(ce->stats.runtime.total) * period;
 }
 
 static inline u64 intel_context_get_avg_runtime_ns(struct intel_context *ce)
@@ -246,7 +246,9 @@ static inline u64 intel_context_get_avg_runtime_ns(struct intel_context *ce)
 	const u32 period =
 		RUNTIME_INFO(ce->engine->i915)->cs_timestamp_period_ns;
 
-	return mul_u32_u32(ewma_runtime_read(&ce->runtime.avg), period);
+	return mul_u32_u32(ewma_runtime_read(&ce->stats.runtime.avg), period);
 }
 
+ktime_t intel_context_get_active_time(struct intel_context *ce);
+
 #endif /* __INTEL_CONTEXT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 07cb83a0d017..5078ad822da9 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -12,6 +12,7 @@
 #include <linux/list.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
+#include <linux/seqlock.h>
 
 #include "i915_active_types.h"
 #include "i915_utils.h"
@@ -72,14 +73,21 @@ struct intel_context {
 	u64 lrc_desc;
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
+		seqlock_t lock;
+		bool active;
+		ktime_t start;
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
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 6fbad5e2343f..0c498ce4610a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1165,7 +1165,7 @@ static void restore_default_state(struct intel_context *ce,
 		       engine->context_size - PAGE_SIZE);
 
 	execlists_init_reg_state(regs, ce, engine, ce->ring, false);
-	ce->runtime.last = intel_context_get_runtime(ce);
+	ce->stats.runtime.last = intel_context_get_runtime(ce);
 }
 
 static void reset_active(struct i915_request *rq,
@@ -1207,35 +1207,61 @@ static void reset_active(struct i915_request *rq,
 	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
 }
 
-static void st_update_runtime_underflow(struct intel_context *ce, s32 dt)
+static void
+st_update_runtime_underflow(struct intel_context_stats *stats, s32 dt)
 {
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
-	ce->runtime.num_underflow += dt < 0;
-	ce->runtime.max_underflow = max_t(u32, ce->runtime.max_underflow, -dt);
+	stats->runtime.num_underflow += dt < 0;
+	stats->runtime.max_underflow =
+		max_t(u32, stats->runtime.max_underflow, -dt);
 #endif
 }
 
 static void intel_context_update_runtime(struct intel_context *ce)
 {
+	struct intel_context_stats *stats = &ce->stats;
 	u32 old;
 	s32 dt;
 
 	if (intel_context_is_barrier(ce))
 		return;
 
-	old = ce->runtime.last;
-	ce->runtime.last = intel_context_get_runtime(ce);
-	dt = ce->runtime.last - old;
+	old = stats->runtime.last;
+	stats->runtime.last = intel_context_get_runtime(ce);
+	dt = stats->runtime.last - old;
 
 	if (unlikely(dt <= 0)) {
 		CE_TRACE(ce, "runtime underflow: last=%u, new=%u, delta=%d\n",
-			 old, ce->runtime.last, dt);
-		st_update_runtime_underflow(ce, dt);
+			 old, stats->runtime.last, dt);
+		st_update_runtime_underflow(stats, dt);
 		return;
 	}
 
-	ewma_runtime_add(&ce->runtime.avg, dt);
-	ce->runtime.total += dt;
+	ewma_runtime_add(&stats->runtime.avg, dt);
+	stats->runtime.total += dt;
+}
+
+static void intel_context_stats_start(struct intel_context *ce)
+{
+	struct intel_context_stats *stats = &ce->stats;
+	unsigned long flags;
+
+	write_seqlock_irqsave(&stats->lock, flags);
+	stats->start = ktime_get();
+	stats->active = true;
+	write_sequnlock_irqrestore(&stats->lock, flags);
+}
+
+static void intel_context_stats_stop(struct intel_context *ce)
+{
+	struct intel_context_stats *stats = &ce->stats;
+	unsigned long flags;
+
+	write_seqlock_irqsave(&stats->lock, flags);
+	stats->active = false;
+	stats->start = 0;
+	intel_context_update_runtime(ce);
+	write_sequnlock_irqrestore(&stats->lock, flags);
 }
 
 static inline struct intel_engine_cs *
@@ -1305,7 +1331,7 @@ static inline void
 __execlists_schedule_out(struct i915_request *rq,
 			 struct intel_engine_cs * const engine)
 {
-	struct intel_context * const ce = rq->context;
+	struct intel_context *ce = rq->context;
 
 	/*
 	 * NB process_csb() is not under the engine->active.lock and hence
@@ -1321,8 +1347,8 @@ __execlists_schedule_out(struct i915_request *rq,
 	    i915_request_completed(rq))
 		intel_engine_add_retire(engine, ce->timeline);
 
-	intel_context_update_runtime(ce);
 	intel_engine_context_out(engine);
+	intel_context_stats_stop(ce);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
 	intel_gt_pm_put_async(engine->gt);
 
@@ -1840,15 +1866,19 @@ static unsigned long active_timeslice(const struct intel_engine_cs *engine)
 
 static void set_timeslice(struct intel_engine_cs *engine)
 {
+	struct intel_engine_execlists * const execlists = &engine->execlists;
 	unsigned long duration;
 
+	if (*execlists->active)
+		intel_context_stats_start((*execlists->active)->context);
+
 	if (!intel_engine_has_timeslices(engine))
 		return;
 
 	duration = active_timeslice(engine);
 	ENGINE_TRACE(engine, "bump timeslicing, interval:%lu", duration);
 
-	set_timer_ms(&engine->execlists.timer, duration);
+	set_timer_ms(&execlists->timer, duration);
 }
 
 static void start_timeslice(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 6f5e35afe1b2..c8179ab04747 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -5508,8 +5508,8 @@ static int __live_pphwsp_runtime(struct intel_engine_cs *engine)
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
-	ce->runtime.num_underflow = 0;
-	ce->runtime.max_underflow = 0;
+	ce->stats.runtime.num_underflow = 0;
+	ce->stats.runtime.max_underflow = 0;
 
 	do {
 		unsigned int loop = 1024;
@@ -5547,11 +5547,11 @@ static int __live_pphwsp_runtime(struct intel_engine_cs *engine)
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
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 0a2d933fe83c..485a2b75d3e1 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -67,7 +67,7 @@ pphwsp_busy_add(struct i915_gem_context *ctx, unsigned int class)
 
 	for_each_gem_engine(ce, engines, it) {
 		if (ce->engine->uabi_class == class)
-			total += ce->runtime.total;
+			total += ce->stats.runtime.total;
 	}
 
 	return total;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 07c1f98680f7..b344272ddfb5 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1267,8 +1267,8 @@ static bool record_context(struct i915_gem_context_coredump *e,
 	e->guilty = atomic_read(&ctx->guilty_count);
 	e->active = atomic_read(&ctx->active_count);
 
-	e->total_runtime = rq->context->runtime.total;
-	e->avg_runtime = ewma_runtime_read(&rq->context->runtime.avg);
+	e->total_runtime = rq->context->stats.runtime.total;
+	e->avg_runtime = ewma_runtime_read(&rq->context->stats.runtime.avg);
 
 	simulated = i915_gem_context_no_error_capture(ctx);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
