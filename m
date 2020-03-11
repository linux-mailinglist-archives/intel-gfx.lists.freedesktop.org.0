Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8B01820C4
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 19:26:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A43606E9D8;
	Wed, 11 Mar 2020 18:26:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E10C6E9DB
 for <Intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 18:26:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 11:26:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,541,1574150400"; d="scan'208";a="236370624"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.21.27])
 by fmsmga008.fm.intel.com with ESMTP; 11 Mar 2020 11:26:32 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 18:26:17 +0000
Message-Id: <20200311182618.21513-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311182618.21513-1-tvrtko.ursulin@linux.intel.com>
References: <20200311182618.21513-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 09/10] drm/i915: Track context current active time
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
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 55 +++++++++++++++----
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 10 ++--
 drivers/gpu/drm/i915/i915_drm_client.c        |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  4 +-
 8 files changed, 90 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index f29ca3583ca9..15c2981d1b85 100644
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
index 01474d3a558b..1f371f8b202a 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -288,7 +288,7 @@ intel_context_init(struct intel_context *ce,
 	ce->sseu = engine->sseu;
 	ce->ring = __intel_context_ring_size(SZ_4K);
 
-	ewma_runtime_init(&ce->runtime.avg);
+	ewma_runtime_init(&ce->stats.runtime.avg);
 
 	ce->vm = i915_vm_get(engine->gt->vm);
 
@@ -296,6 +296,7 @@ intel_context_init(struct intel_context *ce,
 	INIT_LIST_HEAD(&ce->signals);
 
 	mutex_init(&ce->pin_mutex);
+	seqlock_init(&ce->stats.lock);
 
 	i915_active_init(&ce->active,
 			 __intel_context_active, __intel_context_retire);
@@ -390,6 +391,21 @@ struct i915_request *intel_context_create_request(struct intel_context *ce)
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
index 18efad255124..1f8b6e0bbfaf 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -233,7 +233,7 @@ static inline u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
 	const u32 period =
 		RUNTIME_INFO(ce->engine->i915)->cs_timestamp_period_ns;
 
-	return READ_ONCE(ce->runtime.total) * period;
+	return READ_ONCE(ce->stats.runtime.total) * period;
 }
 
 static inline u64 intel_context_get_avg_runtime_ns(struct intel_context *ce)
@@ -241,7 +241,9 @@ static inline u64 intel_context_get_avg_runtime_ns(struct intel_context *ce)
 	const u32 period =
 		RUNTIME_INFO(ce->engine->i915)->cs_timestamp_period_ns;
 
-	return mul_u32_u32(ewma_runtime_read(&ce->runtime.avg), period);
+	return mul_u32_u32(ewma_runtime_read(&ce->stats.runtime.avg), period);
 }
 
+ktime_t intel_context_get_active_time(struct intel_context *ce);
+
 #endif /* __INTEL_CONTEXT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index bcefebcf6b88..50c1055e2a1f 100644
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
index ee378a089dd5..8dd92b0cbd9c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1206,35 +1206,61 @@ static u32 intel_context_get_runtime(const struct intel_context *ce)
 	return READ_ONCE(ce->lrc_reg_state[CTX_TIMESTAMP]);
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
@@ -1304,7 +1330,7 @@ static inline void
 __execlists_schedule_out(struct i915_request *rq,
 			 struct intel_engine_cs * const engine)
 {
-	struct intel_context * const ce = rq->context;
+	struct intel_context *ce = rq->context;
 
 	/*
 	 * NB process_csb() is not under the engine->active.lock and hence
@@ -1320,8 +1346,8 @@ __execlists_schedule_out(struct i915_request *rq,
 	    i915_request_completed(rq))
 		intel_engine_add_retire(engine, ce->timeline);
 
-	intel_context_update_runtime(ce);
 	intel_engine_context_out(engine);
+	intel_context_stats_stop(ce);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
 	intel_gt_pm_put_async(engine->gt);
 
@@ -1801,6 +1827,11 @@ active_timeslice(const struct intel_engine_cs *engine)
 
 static void set_timeslice(struct intel_engine_cs *engine)
 {
+	struct intel_engine_execlists * const execlists = &engine->execlists;
+
+	if (*execlists->active)
+		intel_context_stats_start((*execlists->active)->context);
+
 	if (!intel_engine_has_timeslices(engine))
 		return;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index e9e71c52b34d..3097d4c403f2 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -5474,8 +5474,8 @@ static int __live_pphwsp_runtime(struct intel_engine_cs *engine)
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
-	ce->runtime.num_underflow = 0;
-	ce->runtime.max_underflow = 0;
+	ce->stats.runtime.num_underflow = 0;
+	ce->stats.runtime.max_underflow = 0;
 
 	do {
 		unsigned int loop = 1024;
@@ -5513,11 +5513,11 @@ static int __live_pphwsp_runtime(struct intel_engine_cs *engine)
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
index a75029eda952..e7a9f0f767aa 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -69,7 +69,7 @@ pphwsp_busy_add(struct i915_gem_context *ctx, unsigned int class)
 
 	for_each_gem_engine(ce, engines, it) {
 		if (ce->engine->uabi_class == class)
-			total += ce->runtime.total;
+			total += ce->stats.runtime.total;
 	}
 
 	return total;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 653e1bc5050e..ce752572c38f 100644
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
