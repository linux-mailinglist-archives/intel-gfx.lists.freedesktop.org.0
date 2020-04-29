Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6F81BE937
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 22:54:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7F96EB37;
	Wed, 29 Apr 2020 20:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFDA46EB2F
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 20:54:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21063318-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 21:54:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 21:54:41 +0100
Message-Id: <20200429205446.3259-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/6] drm/i915/gt: Always enable busy-stats for
 execlists
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

In the near future, we will utilize the busy-stats on each engine to
approximate the C0 cycles of each, and use that as an input to a manual
RPS mechanism. That entails having busy-stats always enabled and so we
can remove the enable/disable routines and simplify the pmu setup. As a
consequence of always having the stats enabled, we can also show the
current active time via sysfs/engine/xcs/active_time_ns.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h        |  3 -
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 76 +------------------
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 29 +++----
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 44 +++--------
 drivers/gpu/drm/i915/i915_pmu.c               | 32 +-------
 drivers/gpu/drm/i915/selftests/i915_request.c | 16 +---
 6 files changed, 29 insertions(+), 171 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index d9ee64e2ef79..d10e52ff059f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -310,9 +310,6 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 		       struct drm_printer *m,
 		       const char *header, ...);
 
-int intel_enable_engine_stats(struct intel_engine_cs *engine);
-void intel_disable_engine_stats(struct intel_engine_cs *engine);
-
 ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine);
 
 struct i915_request *
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 80bf71636c0f..c9e46c5ced43 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1589,58 +1589,6 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 	intel_engine_print_breadcrumbs(engine, m);
 }
 
-/**
- * intel_enable_engine_stats() - Enable engine busy tracking on engine
- * @engine: engine to enable stats collection
- *
- * Start collecting the engine busyness data for @engine.
- *
- * Returns 0 on success or a negative error code.
- */
-int intel_enable_engine_stats(struct intel_engine_cs *engine)
-{
-	struct intel_engine_execlists *execlists = &engine->execlists;
-	unsigned long flags;
-	int err = 0;
-
-	if (!intel_engine_supports_stats(engine))
-		return -ENODEV;
-
-	execlists_active_lock_bh(execlists);
-	write_seqlock_irqsave(&engine->stats.lock, flags);
-
-	if (unlikely(engine->stats.enabled == ~0)) {
-		err = -EBUSY;
-		goto unlock;
-	}
-
-	if (engine->stats.enabled++ == 0) {
-		struct i915_request * const *port;
-		struct i915_request *rq;
-
-		engine->stats.enabled_at = ktime_get();
-
-		/* XXX submission method oblivious? */
-		for (port = execlists->active; (rq = *port); port++)
-			engine->stats.active++;
-
-		for (port = execlists->pending; (rq = *port); port++) {
-			/* Exclude any contexts already counted in active */
-			if (!intel_context_inflight_count(rq->context))
-				engine->stats.active++;
-		}
-
-		if (engine->stats.active)
-			engine->stats.start = engine->stats.enabled_at;
-	}
-
-unlock:
-	write_sequnlock_irqrestore(&engine->stats.lock, flags);
-	execlists_active_unlock_bh(execlists);
-
-	return err;
-}
-
 static ktime_t __intel_engine_get_busy_time(struct intel_engine_cs *engine)
 {
 	ktime_t total = engine->stats.total;
@@ -1649,7 +1597,7 @@ static ktime_t __intel_engine_get_busy_time(struct intel_engine_cs *engine)
 	 * If the engine is executing something at the moment
 	 * add it to the total.
 	 */
-	if (engine->stats.active)
+	if (atomic_read(&engine->stats.active))
 		total = ktime_add(total,
 				  ktime_sub(ktime_get(), engine->stats.start));
 
@@ -1675,28 +1623,6 @@ ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine)
 	return total;
 }
 
-/**
- * intel_disable_engine_stats() - Disable engine busy tracking on engine
- * @engine: engine to disable stats collection
- *
- * Stops collecting the engine busyness data for @engine.
- */
-void intel_disable_engine_stats(struct intel_engine_cs *engine)
-{
-	unsigned long flags;
-
-	if (!intel_engine_supports_stats(engine))
-		return;
-
-	write_seqlock_irqsave(&engine->stats.lock, flags);
-	WARN_ON_ONCE(engine->stats.enabled == 0);
-	if (--engine->stats.enabled == 0) {
-		engine->stats.total = __intel_engine_get_busy_time(engine);
-		engine->stats.active = 0;
-	}
-	write_sequnlock_irqrestore(&engine->stats.lock, flags);
-}
-
 static bool match_ring(struct i915_request *rq)
 {
 	u32 ring = ENGINE_READ(rq->engine, RING_START);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 483d8ff39a0d..83b1f95ebf12 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -531,28 +531,16 @@ struct intel_engine_cs {
 	u32 (*get_cmd_length_mask)(u32 cmd_header);
 
 	struct {
-		/**
-		 * @lock: Lock protecting the below fields.
-		 */
-		seqlock_t lock;
-		/**
-		 * @enabled: Reference count indicating number of listeners.
-		 */
-		unsigned int enabled;
 		/**
 		 * @active: Number of contexts currently scheduled in.
 		 */
-		unsigned int active;
-		/**
-		 * @enabled_at: Timestamp when busy stats were enabled.
-		 */
-		ktime_t enabled_at;
+		atomic_t active;
+
 		/**
-		 * @start: Timestamp of the last idle to active transition.
-		 *
-		 * Idle is defined as active == 0, active is active > 0.
+		 * @lock: Lock protecting the below fields.
 		 */
-		ktime_t start;
+		seqlock_t lock;
+
 		/**
 		 * @total: Total time this engine was busy.
 		 *
@@ -560,6 +548,13 @@ struct intel_engine_cs {
 		 * where engine is currently busy (active > 0).
 		 */
 		ktime_t total;
+
+		/**
+		 * @start: Timestamp of the last idle to active transition.
+		 *
+		 * Idle is defined as active == 0, active is active > 0.
+		 */
+		ktime_t start;
 	} stats;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 7fc4081c34fe..4311b12542fb 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1199,17 +1199,14 @@ static void intel_engine_context_in(struct intel_engine_cs *engine)
 {
 	unsigned long flags;
 
-	if (READ_ONCE(engine->stats.enabled) == 0)
+	if (atomic_add_unless(&engine->stats.active, 1, 0))
 		return;
 
 	write_seqlock_irqsave(&engine->stats.lock, flags);
-
-	if (engine->stats.enabled > 0) {
-		if (engine->stats.active++ == 0)
-			engine->stats.start = ktime_get();
-		GEM_BUG_ON(engine->stats.active == 0);
+	if (!atomic_add_unless(&engine->stats.active, 1, 0)) {
+		engine->stats.start = ktime_get();
+		atomic_inc(&engine->stats.active);
 	}
-
 	write_sequnlock_irqrestore(&engine->stats.lock, flags);
 }
 
@@ -1217,36 +1214,17 @@ static void intel_engine_context_out(struct intel_engine_cs *engine)
 {
 	unsigned long flags;
 
-	if (READ_ONCE(engine->stats.enabled) == 0)
+	GEM_BUG_ON(!atomic_read(&engine->stats.active));
+
+	if (atomic_add_unless(&engine->stats.active, -1, 1))
 		return;
 
 	write_seqlock_irqsave(&engine->stats.lock, flags);
-
-	if (engine->stats.enabled > 0) {
-		ktime_t last;
-
-		if (engine->stats.active && --engine->stats.active == 0) {
-			/*
-			 * Decrement the active context count and in case GPU
-			 * is now idle add up to the running total.
-			 */
-			last = ktime_sub(ktime_get(), engine->stats.start);
-
-			engine->stats.total = ktime_add(engine->stats.total,
-							last);
-		} else if (engine->stats.active == 0) {
-			/*
-			 * After turning on engine stats, context out might be
-			 * the first event in which case we account from the
-			 * time stats gathering was turned on.
-			 */
-			last = ktime_sub(ktime_get(), engine->stats.enabled_at);
-
-			engine->stats.total = ktime_add(engine->stats.total,
-							last);
-		}
+	if (atomic_dec_and_test(&engine->stats.active)) {
+		engine->stats.total =
+			ktime_add(engine->stats.total,
+				  ktime_sub(ktime_get(), engine->stats.start));
 	}
-
 	write_sequnlock_irqrestore(&engine->stats.lock, flags);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 230e9256ab30..83c6a8ccd2cb 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -439,29 +439,9 @@ static u64 count_interrupts(struct drm_i915_private *i915)
 	return sum;
 }
 
-static void engine_event_destroy(struct perf_event *event)
-{
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
-	struct intel_engine_cs *engine;
-
-	engine = intel_engine_lookup_user(i915,
-					  engine_event_class(event),
-					  engine_event_instance(event));
-	if (drm_WARN_ON_ONCE(&i915->drm, !engine))
-		return;
-
-	if (engine_event_sample(event) == I915_SAMPLE_BUSY &&
-	    intel_engine_supports_stats(engine))
-		intel_disable_engine_stats(engine);
-}
-
 static void i915_pmu_event_destroy(struct perf_event *event)
 {
 	WARN_ON(event->parent);
-
-	if (is_engine_event(event))
-		engine_event_destroy(event);
 }
 
 static int
@@ -514,23 +494,13 @@ static int engine_event_init(struct perf_event *event)
 	struct drm_i915_private *i915 =
 		container_of(event->pmu, typeof(*i915), pmu.base);
 	struct intel_engine_cs *engine;
-	u8 sample;
-	int ret;
 
 	engine = intel_engine_lookup_user(i915, engine_event_class(event),
 					  engine_event_instance(event));
 	if (!engine)
 		return -ENODEV;
 
-	sample = engine_event_sample(event);
-	ret = engine_event_status(engine, sample);
-	if (ret)
-		return ret;
-
-	if (sample == I915_SAMPLE_BUSY && intel_engine_supports_stats(engine))
-		ret = intel_enable_engine_stats(engine);
-
-	return ret;
+	return engine_event_status(engine, engine_event_sample(event));
 }
 
 static int i915_pmu_event_init(struct perf_event *event)
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 3b319c0953cb..15b1ca9f7a01 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -1679,8 +1679,7 @@ static int perf_series_engines(void *arg)
 			p->engine = ps->ce[idx]->engine;
 			intel_engine_pm_get(p->engine);
 
-			if (intel_engine_supports_stats(p->engine) &&
-			    !intel_enable_engine_stats(p->engine))
+			if (intel_engine_supports_stats(p->engine))
 				p->busy = intel_engine_get_busy_time(p->engine) + 1;
 			p->runtime = -intel_context_get_total_runtime_ns(ce);
 			p->time = ktime_get();
@@ -1700,7 +1699,6 @@ static int perf_series_engines(void *arg)
 			if (p->busy) {
 				p->busy = ktime_sub(intel_engine_get_busy_time(p->engine),
 						    p->busy - 1);
-				intel_disable_engine_stats(p->engine);
 			}
 
 			err = switch_to_kernel_sync(ce, err);
@@ -1762,8 +1760,7 @@ static int p_sync0(void *arg)
 	}
 
 	busy = false;
-	if (intel_engine_supports_stats(engine) &&
-	    !intel_enable_engine_stats(engine)) {
+	if (intel_engine_supports_stats(engine)) {
 		p->busy = intel_engine_get_busy_time(engine);
 		busy = true;
 	}
@@ -1796,7 +1793,6 @@ static int p_sync0(void *arg)
 	if (busy) {
 		p->busy = ktime_sub(intel_engine_get_busy_time(engine),
 				    p->busy);
-		intel_disable_engine_stats(engine);
 	}
 
 	err = switch_to_kernel_sync(ce, err);
@@ -1830,8 +1826,7 @@ static int p_sync1(void *arg)
 	}
 
 	busy = false;
-	if (intel_engine_supports_stats(engine) &&
-	    !intel_enable_engine_stats(engine)) {
+	if (intel_engine_supports_stats(engine)) {
 		p->busy = intel_engine_get_busy_time(engine);
 		busy = true;
 	}
@@ -1866,7 +1861,6 @@ static int p_sync1(void *arg)
 	if (busy) {
 		p->busy = ktime_sub(intel_engine_get_busy_time(engine),
 				    p->busy);
-		intel_disable_engine_stats(engine);
 	}
 
 	err = switch_to_kernel_sync(ce, err);
@@ -1899,8 +1893,7 @@ static int p_many(void *arg)
 	}
 
 	busy = false;
-	if (intel_engine_supports_stats(engine) &&
-	    !intel_enable_engine_stats(engine)) {
+	if (intel_engine_supports_stats(engine)) {
 		p->busy = intel_engine_get_busy_time(engine);
 		busy = true;
 	}
@@ -1924,7 +1917,6 @@ static int p_many(void *arg)
 	if (busy) {
 		p->busy = ktime_sub(intel_engine_get_busy_time(engine),
 				    p->busy);
-		intel_disable_engine_stats(engine);
 	}
 
 	err = switch_to_kernel_sync(ce, err);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
