Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E77D2EF0CE
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 11:44:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0666A6E7E6;
	Fri,  8 Jan 2021 10:44:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 855AA6E7E6
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 10:44:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23536466-1500050 
 for multiple; Fri, 08 Jan 2021 10:43:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 10:43:55 +0000
Message-Id: <20210108104355.8958-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] RFC drm/i915: Expose union(class) utililisation
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Combine our per-engine metrics to track begin/end of the class as a
whole and present that as culmulative runtime via PMU.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  18 +++
 drivers/gpu/drm/i915/gt/intel_engine_stats.h |  34 ++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_user.c  |   3 +
 drivers/gpu/drm/i915/gt/intel_gt.h           |   2 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h     |  28 +++++
 drivers/gpu/drm/i915/i915_pmu.c              | 119 +++++++++++++++----
 include/uapi/drm/i915_drm.h                  |   3 +
 8 files changed, 185 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index b1b44afc94ba..3f71483bd6f5 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -314,6 +314,8 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	engine->instance = info->instance;
 	__sprint_engine_name(engine);
 
+	engine->class_stats = &gt->stats_class[info->class];
+
 	engine->props.dma_latency_ns =
 		CONFIG_DRM_I915_DMA_LATENCY;
 	engine->props.heartbeat_interval_ms =
@@ -1789,6 +1791,22 @@ intel_engine_find_active_request(struct intel_engine_cs *engine)
 	return active;
 }
 
+ktime_t intel_runtime_stats_get_busy_time(const struct intel_runtime_stats *st)
+{
+	unsigned int seq;
+	ktime_t total;
+
+	do {
+		seq = read_seqbegin(&st->lock);
+		total = st->total;
+		if (atomic_read(&st->active))
+			total = ktime_add(total,
+					  ktime_sub(ktime_get(), st->start));
+	} while (unlikely(read_seqretry(&st->lock, seq)));
+
+	return total;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "mock_engine.c"
 #include "selftest_engine.c"
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_stats.h b/drivers/gpu/drm/i915/gt/intel_engine_stats.h
index 24fbdd94351a..b199137a977e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_stats.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_stats.h
@@ -12,6 +12,36 @@
 
 #include "i915_gem.h" /* GEM_BUG_ON */
 #include "intel_engine.h"
+#include "intel_gt_types.h"
+
+static inline void intel_engine_class_start(struct intel_runtime_stats *st)
+{
+	unsigned long flags;
+
+	if (atomic_add_unless(&st->active, 1, 0))
+		return;
+
+	write_seqlock_irqsave(&st->lock, flags);
+	if (!atomic_read(&st->active))
+		st->start = ktime_get();
+	atomic_inc(&st->active);
+	write_sequnlock_irqrestore(&st->lock, flags);
+}
+
+static inline void intel_engine_class_stop(struct intel_runtime_stats *st)
+{
+	unsigned long flags;
+
+	if (atomic_add_unless(&st->active, -1, 1))
+		return;
+
+	write_seqlock_irqsave(&st->lock, flags);
+	if (atomic_read(&st->active) == 1)
+		st->total =
+			ktime_add(st->total, ktime_sub(ktime_get(), st->start));
+	atomic_dec(&st->active);
+	write_sequnlock_irqrestore(&st->lock, flags);
+}
 
 static inline void intel_engine_context_in(struct intel_engine_cs *engine)
 {
@@ -22,6 +52,8 @@ static inline void intel_engine_context_in(struct intel_engine_cs *engine)
 		return;
 	}
 
+	intel_engine_class_start(engine->class_stats);
+
 	/* The writer is serialised; but the pmu reader may be from hardirq */
 	local_irq_save(flags);
 	write_seqcount_begin(&engine->stats.lock);
@@ -55,6 +87,8 @@ static inline void intel_engine_context_out(struct intel_engine_cs *engine)
 
 	write_seqcount_end(&engine->stats.lock);
 	local_irq_restore(flags);
+
+	intel_engine_class_stop(engine->class_stats);
 }
 
 #endif /* __INTEL_ENGINE_STATS_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 21e9f9de4844..ae415725cfde 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -499,6 +499,7 @@ struct intel_engine_cs {
 		 */
 		ktime_t rps;
 	} stats;
+	struct intel_runtime_stats *class_stats;
 
 	struct {
 		unsigned long heartbeat_interval_ms;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 6b5a4fdc14a0..24ac33d1b16e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -210,6 +210,9 @@ void intel_engines_driver_register(struct drm_i915_private *i915)
 		GEM_BUG_ON(engine->uabi_class >= ARRAY_SIZE(uabi_instances));
 		engine->uabi_instance = uabi_instances[engine->uabi_class]++;
 
+		if (intel_engine_supports_stats(engine))
+			engine->class_stats->enabled = true;
+
 		/* Replace the internal name with the final user facing name */
 		memcpy(old, engine->name, sizeof(engine->name));
 		scnprintf(engine->name, sizeof(engine->name), "%s%u",
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 9157c7411f60..f73f1d1d3754 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -77,4 +77,6 @@ static inline bool intel_gt_is_wedged(const struct intel_gt *gt)
 void intel_gt_info_print(const struct intel_gt_info *info,
 			 struct drm_printer *p);
 
+ktime_t intel_runtime_stats_get_busy_time(const struct intel_runtime_stats *st);
+
 #endif /* __INTEL_GT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index a83d3e18254d..3c12d4a3197e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -29,6 +29,32 @@ struct i915_ggtt;
 struct intel_engine_cs;
 struct intel_uncore;
 
+struct intel_runtime_stats {
+	atomic_t active;
+
+	/**
+	 * @lock: Lock protecting the below fields.
+	 */
+	seqlock_t lock;
+
+	/**
+	 * @total: Total time this engine was busy.
+	 *
+	 * Accumulated time not counting the most recent block in cases
+	 * where engine is currently busy (active > 0).
+	 */
+	ktime_t total;
+
+	/**
+	 * @start: Timestamp of the last idle to active transition.
+	 *
+	 * Idle is defined as active == 0, active is active > 0.
+	 */
+	ktime_t start;
+
+	bool enabled;
+};
+
 struct intel_gt {
 	struct drm_i915_private *i915;
 	struct intel_uncore *uncore;
@@ -112,6 +138,8 @@ struct intel_gt {
 		ktime_t start;
 	} stats;
 
+	struct intel_runtime_stats stats_class[MAX_ENGINE_CLASS + 1];
+
 	struct intel_engine_cs *engine[I915_NUM_ENGINES];
 	struct intel_engine_cs *engine_class[MAX_ENGINE_CLASS + 1]
 					    [MAX_ENGINE_INSTANCE + 1];
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 2b88c0baa1bf..026999a82231 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -9,6 +9,7 @@
 #include "gt/intel_engine.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_engine_user.h"
+#include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_rc6.h"
 #include "gt/intel_rps.h"
@@ -506,13 +507,28 @@ static int engine_event_init(struct perf_event *event)
 	struct drm_i915_private *i915 =
 		container_of(event->pmu, typeof(*i915), pmu.base);
 	struct intel_engine_cs *engine;
+	u8 class = engine_event_class(event);
+	u8 instance = engine_event_instance(event);
+	u8 sample = engine_event_sample(event);
 
-	engine = intel_engine_lookup_user(i915, engine_event_class(event),
-					  engine_event_instance(event));
+	if (instance == 0xff) {
+		if (sample == 0)
+			return 0;
+
+		if (class >= ARRAY_SIZE(i915->gt.stats_class))
+			return -ENODEV;
+
+		if (!i915->gt.stats_class[class].enabled)
+			return -ENODEV;
+
+		return -ENOENT;
+	}
+
+	engine = intel_engine_lookup_user(i915, class, instance);
 	if (!engine)
 		return -ENODEV;
 
-	return engine_event_status(engine, engine_event_sample(event));
+	return engine_event_status(engine, sample);
 }
 
 static int i915_pmu_event_init(struct perf_event *event)
@@ -557,6 +573,33 @@ static int i915_pmu_event_init(struct perf_event *event)
 	return 0;
 }
 
+static u64 engine_event_read(struct perf_event *event)
+{
+	struct drm_i915_private *i915 =
+		container_of(event->pmu, typeof(*i915), pmu.base);
+	u8 sample = engine_event_sample(event);
+	u8 class = engine_event_class(event);
+	u8 instance = engine_event_instance(event);
+	struct intel_engine_cs *engine;
+	ktime_t unused;
+
+	if (instance == 0xff) {
+		struct intel_runtime_stats *st = &i915->gt.stats_class[class];
+
+		return intel_runtime_stats_get_busy_time(st);
+	}
+
+	engine = intel_engine_lookup_user(i915, class, instance);
+	if (GEM_WARN_ON(!engine))
+		return 0; /* Do nothing */
+	else if (sample == I915_SAMPLE_BUSY &&
+		 intel_engine_supports_stats(engine))
+		return ktime_to_ns(intel_engine_get_busy_time(engine,
+							      &unused));
+	else
+		return engine->pmu.sample[sample].cur;
+}
+
 static u64 __i915_pmu_event_read(struct perf_event *event)
 {
 	struct drm_i915_private *i915 =
@@ -565,24 +608,7 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
 	u64 val = 0;
 
 	if (is_engine_event(event)) {
-		u8 sample = engine_event_sample(event);
-		struct intel_engine_cs *engine;
-
-		engine = intel_engine_lookup_user(i915,
-						  engine_event_class(event),
-						  engine_event_instance(event));
-
-		if (drm_WARN_ON_ONCE(&i915->drm, !engine)) {
-			/* Do nothing */
-		} else if (sample == I915_SAMPLE_BUSY &&
-			   intel_engine_supports_stats(engine)) {
-			ktime_t unused;
-
-			val = ktime_to_ns(intel_engine_get_busy_time(engine,
-								     &unused));
-		} else {
-			val = engine->pmu.sample[sample].cur;
-		}
+		val = engine_event_read(event);
 	} else {
 		switch (event->attr.config) {
 		case I915_PMU_ACTUAL_FREQUENCY:
@@ -666,7 +692,7 @@ static void i915_pmu_enable(struct perf_event *event)
 	 * For per-engine events the bitmask and reference counting
 	 * is stored per engine.
 	 */
-	if (is_engine_event(event)) {
+	if (is_engine_event(event) && engine_event_instance(event) != 0xff) {
 		u8 sample = engine_event_sample(event);
 		struct intel_engine_cs *engine;
 
@@ -710,7 +736,7 @@ static void i915_pmu_disable(struct perf_event *event)
 
 	spin_lock_irqsave(&pmu->lock, flags);
 
-	if (is_engine_event(event)) {
+	if (is_engine_event(event) && engine_event_instance(event) != 0xff) {
 		u8 sample = engine_event_sample(event);
 		struct intel_engine_cs *engine;
 
@@ -891,6 +917,18 @@ add_pmu_attr(struct perf_pmu_events_attr *attr, const char *name,
 	return ++attr;
 }
 
+static const char *class_repr(u8 class)
+{
+	switch (class) {
+	case RENDER_CLASS: return "render";
+	case VIDEO_DECODE_CLASS: return "video-decode";
+	case VIDEO_ENHANCEMENT_CLASS: return "video-enhance";
+	case COPY_ENGINE_CLASS: return "copy";
+	}
+
+	return NULL;
+}
+
 static struct attribute **
 create_event_attributes(struct i915_pmu *pmu)
 {
@@ -919,6 +957,8 @@ create_event_attributes(struct i915_pmu *pmu)
 	struct i915_ext_attribute *i915_attr = NULL, *i915_iter;
 	struct attribute **attr = NULL, **attr_iter;
 	struct intel_engine_cs *engine;
+	unsigned long class_enable = 0;
+	unsigned long class_disable = 0;
 	unsigned int i;
 
 	/* Count how many counters we will be exposing. */
@@ -928,6 +968,11 @@ create_event_attributes(struct i915_pmu *pmu)
 	}
 
 	for_each_uabi_engine(engine, i915) {
+		if (intel_engine_supports_stats(engine))
+			class_enable |= BIT(engine->class);
+		else
+			class_disable |= BIT(engine->class);
+
 		for (i = 0; i < ARRAY_SIZE(engine_events); i++) {
 			if (!engine_event_status(engine,
 						 engine_events[i].sample))
@@ -935,6 +980,9 @@ create_event_attributes(struct i915_pmu *pmu)
 		}
 	}
 
+	class_enable &= ~class_disable;
+	count += hweight_long(class_enable);
+
 	/* Allocate attribute objects and table. */
 	i915_attr = kcalloc(count, sizeof(*i915_attr), GFP_KERNEL);
 	if (!i915_attr)
@@ -1008,6 +1056,31 @@ create_event_attributes(struct i915_pmu *pmu)
 		}
 	}
 
+	for_each_set_bit(i, &class_enable, BITS_PER_LONG) {
+		const char *name;
+		char *str;
+
+		name = class_repr(i);
+		if (GEM_WARN_ON(!name))
+			continue;
+
+		str = kasprintf(GFP_KERNEL, "%s-%s", name, "busy");
+		if (!str)
+			goto err;
+
+		*attr_iter++ = &i915_iter->attr.attr;
+		i915_iter =
+			add_i915_attr(i915_iter, str,
+				      __I915_PMU_ENGINE(i, 0xff, 0));
+
+		str = kasprintf(GFP_KERNEL, "%s.unit", str);
+		if (!str)
+			goto err;
+
+		*attr_iter++ = &pmu_iter->attr.attr;
+		pmu_iter = add_pmu_attr(pmu_iter, str, "ns");
+	}
+
 	pmu->i915_attr = i915_attr;
 	pmu->pmu_attr = pmu_attr;
 
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 1987e2ea79a3..3aacdf756e90 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -171,6 +171,9 @@ enum drm_i915_pmu_engine_sample {
 #define I915_PMU_ENGINE_SEMA(class, instance) \
 	__I915_PMU_ENGINE(class, instance, I915_SAMPLE_SEMA)
 
+#define I915_PMU_CLASS_BUSY(class) \
+	__I915_PMU_ENGINE(class, 0xff, 0)
+
 #define __I915_PMU_OTHER(x) (__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x))
 
 #define I915_PMU_ACTUAL_FREQUENCY	__I915_PMU_OTHER(0)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
