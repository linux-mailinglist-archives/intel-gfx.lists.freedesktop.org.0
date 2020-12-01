Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B812C9B09
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 10:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 074AD6E4AF;
	Tue,  1 Dec 2020 09:07:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781C889F89
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 09:07:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23172173-1500050 
 for multiple; Tue, 01 Dec 2020 09:07:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 09:07:25 +0000
Message-Id: <20201201090729.24777-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201201090729.24777-1-chris@chris-wilson.co.uk>
References: <20201201090729.24777-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/12] drm/i915: Track context current active
 time
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

v2:
 * Rename and make __intel_context_get_active_time unlocked.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_context.c       | 10 +++-
 drivers/gpu/drm/i915/gt/intel_context.h       |  6 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h | 24 +++++---
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 55 +++++++++++++++----
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 10 ++--
 drivers/gpu/drm/i915/i915_drm_client.c        |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  4 +-
 8 files changed, 81 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 26452d7383f4..3756d30fdc85 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -272,7 +272,7 @@ static void accumulate_runtime(struct i915_drm_client *client,
 		unsigned int class = ce->engine->uabi_class;
 
 		GEM_BUG_ON(class >= ARRAY_SIZE(client->past_runtime));
-		atomic64_add(ce->runtime.total,
+		atomic64_add(ce->stats.runtime.total,
 			     &client->past_runtime[class]);
 	}
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 349e7fa1488d..cb539d3859ff 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -375,7 +375,7 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 	ce->sseu = engine->sseu;
 	ce->ring = __intel_context_ring_size(SZ_4K);
 
-	ewma_runtime_init(&ce->runtime.avg);
+	ewma_runtime_init(&ce->stats.runtime.avg);
 
 	ce->vm = i915_vm_get(engine->gt->vm);
 
@@ -384,6 +384,7 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 	INIT_LIST_HEAD(&ce->signals);
 
 	mutex_init(&ce->pin_mutex);
+	seqlock_init(&ce->stats.lock);
 
 	i915_active_init(&ce->active,
 			 __intel_context_active, __intel_context_retire);
@@ -501,6 +502,13 @@ struct i915_request *intel_context_create_request(struct intel_context *ce)
 	return rq;
 }
 
+ktime_t __intel_context_get_active_time(struct intel_context *ce)
+{
+	struct intel_context_stats *stats = &ce->stats;
+
+	return stats->active ? ktime_sub(ktime_get(), stats->start) : 0;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_context.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index fda2eba81e22..1e76291485ac 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -251,7 +251,7 @@ static inline u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
 	const u32 period =
 		RUNTIME_INFO(ce->engine->i915)->cs_timestamp_period_ns;
 
-	return READ_ONCE(ce->runtime.total) * period;
+	return READ_ONCE(ce->stats.runtime.total) * period;
 }
 
 static inline u64 intel_context_get_avg_runtime_ns(struct intel_context *ce)
@@ -259,7 +259,9 @@ static inline u64 intel_context_get_avg_runtime_ns(struct intel_context *ce)
 	const u32 period =
 		RUNTIME_INFO(ce->engine->i915)->cs_timestamp_period_ns;
 
-	return mul_u32_u32(ewma_runtime_read(&ce->runtime.avg), period);
+	return mul_u32_u32(ewma_runtime_read(&ce->stats.runtime.avg), period);
 }
 
+ktime_t __intel_context_get_active_time(struct intel_context *ce);
+
 #endif /* __INTEL_CONTEXT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 52fa9c132746..a9d8f68dcbd0 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -12,6 +12,7 @@
 #include <linux/list.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
+#include <linux/seqlock.h>
 
 #include "i915_active_types.h"
 #include "i915_utils.h"
@@ -98,14 +99,21 @@ struct intel_context {
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
index 43703efb36d1..8dc153a572af 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1265,7 +1265,7 @@ static void restore_default_state(struct intel_context *ce,
 	regs = memset(ce->lrc_reg_state, 0, engine->context_size - PAGE_SIZE);
 	execlists_init_reg_state(regs, ce, engine, ce->ring, true);
 
-	ce->runtime.last = intel_context_get_runtime(ce);
+	ce->stats.runtime.last = intel_context_get_runtime(ce);
 }
 
 static void reset_active(struct i915_request *rq,
@@ -1307,35 +1307,61 @@ static void reset_active(struct i915_request *rq,
 	ce->lrc.desc |= CTX_DESC_FORCE_RESTORE;
 }
 
-static void st_update_runtime_underflow(struct intel_context *ce, s32 dt)
+static void
+st_update_runtime_underflow(struct intel_context_stats *stats, s32 dt)
 {
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
-	ce->runtime.num_underflow++;
-	ce->runtime.max_underflow = max_t(u32, ce->runtime.max_underflow, -dt);
+	stats->runtime.num_underflow++;
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
 
 	if (unlikely(dt < 0)) {
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
@@ -1442,6 +1468,7 @@ __execlists_schedule_out(struct i915_request *rq,
 
 	intel_context_update_runtime(ce);
 	intel_engine_context_out(engine);
+	intel_context_stats_stop(ce);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
 	if (engine->fw_domain && !atomic_dec_return(&engine->fw_active))
 		intel_uncore_forcewake_put(engine->uncore, engine->fw_domain);
@@ -1991,15 +2018,19 @@ static unsigned long active_timeslice(const struct intel_engine_cs *engine)
 
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
 
 static void start_timeslice(struct intel_engine_cs *engine, int prio)
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 95d41c01d0e0..67f8083f40a3 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -6381,8 +6381,8 @@ static int __live_pphwsp_runtime(struct intel_engine_cs *engine)
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
-	ce->runtime.num_underflow = 0;
-	ce->runtime.max_underflow = 0;
+	ce->stats.runtime.num_underflow = 0;
+	ce->stats.runtime.max_underflow = 0;
 
 	do {
 		unsigned int loop = 1024;
@@ -6420,11 +6420,11 @@ static int __live_pphwsp_runtime(struct intel_engine_cs *engine)
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
index 65dd049b1f7d..49bbbc7b7fbf 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -69,7 +69,7 @@ static u64 pphwsp_busy_add(struct i915_gem_context *ctx, unsigned int class)
 
 	for_each_gem_engine(ce, engines, it) {
 		if (ce->engine->uabi_class == class)
-			total += ce->runtime.total;
+			total += ce->stats.runtime.total;
 	}
 
 	return total;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index e38dab8d2fed..8a38c75df742 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1286,8 +1286,8 @@ static bool record_context(struct i915_gem_context_coredump *e,
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
