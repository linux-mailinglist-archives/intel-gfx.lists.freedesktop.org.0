Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A734E43BE9A
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 02:48:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E8D36E4DE;
	Wed, 27 Oct 2021 00:48:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 680B76E4DE;
 Wed, 27 Oct 2021 00:48:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="229995538"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="229995538"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 17:48:26 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="446993819"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 17:48:26 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: john.c.harrison@intel.com, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 daniel.vetter@ffwll.ch, Matthew Brost <matthew.brost@intel.com>
Date: Tue, 26 Oct 2021 17:48:21 -0700
Message-Id: <20211027004821.66097-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211027004821.66097-1-umesh.nerlige.ramappa@intel.com>
References: <20211027004821.66097-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/pmu: Connect engine busyness stats
 from GuC to pmu
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

With GuC handling scheduling, i915 is not aware of the time that a
context is scheduled in and out of the engine. Since i915 pmu relies on
this info to provide engine busyness to the user, GuC shares this info
with i915 for all engines using shared memory. For each engine, this
info contains:

- total busyness: total time that the context was running (total)
- id: id of the running context (id)
- start timestamp: timestamp when the context started running (start)

At the time (now) of sampling the engine busyness, if the id is valid
(!= ~0), and start is non-zero, then the context is considered to be
active and the engine busyness is calculated using the below equation

	engine busyness = total + (now - start)

All times are obtained from the gt clock base. For inactive contexts,
engine busyness is just equal to the total.

The start and total values provided by GuC are 32 bits and wrap around
in a few minutes. Since perf pmu provides busyness as 64 bit
monotonically increasing values, there is a need for this implementation
to account for overflows and extend the time to 64 bits before returning
busyness to the user. In order to do that, a worker runs periodically at
frequency = 1/8th the time it takes for the timestamp to wrap. As an
example, that would be once in 27 seconds for a gt clock frequency of
19.2 MHz.

Note:
There might be an over-accounting of busyness due to the fact that GuC
may be updating the total and start values while kmd is reading them.
(i.e kmd may read the updated total and the stale start). In such a
case, user may see higher busyness value followed by smaller ones which
would eventually catch up to the higher value.

v2: (Tvrtko)
- Include details in commit message
- Move intel engine busyness function into execlist code
- Use union inside engine->stats
- Use natural type for ping delay jiffies
- Drop active_work condition checks
- Use for_each_engine if iterating all engines
- Drop seq locking, use spinlock at GuC level to update engine stats
- Document worker specific details

v3: (Tvrtko/Umesh)
- Demarcate GuC and execlist stat objects with comments
- Document known over-accounting issue in commit
- Provide a consistent view of GuC state
- Add hooks to gt park/unpark for GuC busyness
- Stop/start worker in gt park/unpark path
- Drop inline
- Move spinlock and worker inits to GuC initialization
- Drop helpers that are called only once

v4: (Tvrtko/Matt/Umesh)
- Drop addressed opens from commit message
- Get runtime pm in ping, remove from the park path
- Use cancel_delayed_work_sync in disable_submission path
- Update stats during reset prepare
- Skip ping if reset in progress
- Explicitly name execlists and GuC stats objects
- Since disable_submission is called from many places, move resetting
  stats to intel_guc_submission_reset_prepare

v5: (Tvrtko)
- Add a trylock helper that does not sleep and synchronize PMU event
  callbacks and worker with gt reset

v6: (CI BAT failures)
- DUTs using execlist submission failed to boot since __gt_unpark is
  called during i915 load. This ends up calling the GuC busyness unpark
  hook and results in kick-starting an uninitialized worker. Let
  park/unpark hooks check if GuC submission has been initialized.
- drop cant_sleep() from trylock helper since rcu_read_lock takes care
  of that.

v7: (CI) Fix igt@i915_selftest@live@gt_engines
- For GuC mode of submission the engine busyness is derived from gt time
  domain. Use gt time elapsed as reference in the selftest.
- Increase busyness calculation to 10ms duration to ensure batch runs
  longer and falls within the busyness tolerances in selftest.

v8:
- Use ktime_get in selftest as before
- intel_reset_trylock_no_wait results in a lockdep splat that is not
  trivial to fix since the PMU callback runs in irq context and the
  reset paths are tightly knit into the driver. The test that uncovers
  this is igt@perf_pmu@faulting-read. Drop intel_reset_trylock_no_wait,
  instead use the reset_count to synchronize with gt reset during pmu
  callback. For the ping, continue to use intel_reset_trylock since ping
  is not run in irq context.

- GuC PM timestamp does not tick when GuC is idle. This can potentially
  result in wrong busyness values when a context is active on the
  engine, but GuC is idle. Use the RING TIMESTAMP as GPU timestamp to
  process the GuC busyness stats. This works since both GuC timestamp and
  RING timestamp are synced with the same clock.

- The busyness stats may get updated after the batch starts running.
  This delay causes the busyness reported for 100us duration to fall
  below 95% in the selftest. The only option at this time is to wait for
  GuC busyness to change from idle to active before we sample busyness
  over a 100us period.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  28 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  33 ++-
 .../drm/i915/gt/intel_execlists_submission.c  |  34 +++
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   2 +
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c  |  33 +++
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  30 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  21 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h    |   5 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  13 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 277 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.h |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |   2 +
 13 files changed, 453 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 2de396e34d83..332756036007 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1915,23 +1915,6 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 	intel_engine_print_breadcrumbs(engine, m);
 }
 
-static ktime_t __intel_engine_get_busy_time(struct intel_engine_cs *engine,
-					    ktime_t *now)
-{
-	struct intel_engine_execlists_stats *stats = &engine->stats.execlists;
-	ktime_t total = stats->total;
-
-	/*
-	 * If the engine is executing something at the moment
-	 * add it to the total.
-	 */
-	*now = ktime_get();
-	if (READ_ONCE(stats->active))
-		total = ktime_add(total, ktime_sub(*now, stats->start));
-
-	return total;
-}
-
 /**
  * intel_engine_get_busy_time() - Return current accumulated engine busyness
  * @engine: engine to report on
@@ -1941,16 +1924,7 @@ static ktime_t __intel_engine_get_busy_time(struct intel_engine_cs *engine,
  */
 ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine, ktime_t *now)
 {
-	struct intel_engine_execlists_stats *stats = &engine->stats.execlists;
-	unsigned int seq;
-	ktime_t total;
-
-	do {
-		seq = read_seqcount_begin(&stats->lock);
-		total = __intel_engine_get_busy_time(engine, now);
-	} while (read_seqcount_retry(&stats->lock, seq));
-
-	return total;
+	return engine->busyness(engine, now);
 }
 
 struct intel_context *
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 24fa7fb0e7de..5732e0d71513 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -284,6 +284,28 @@ struct intel_engine_execlists_stats {
 	ktime_t start;
 };
 
+struct intel_engine_guc_stats {
+	/**
+	 * @running: Active state of the engine when busyness was last sampled.
+	 */
+	bool running;
+
+	/**
+	 * @prev_total: Previous value of total runtime clock cycles.
+	 */
+	u32 prev_total;
+
+	/**
+	 * @total_gt_clks: Total gt clock cycles this engine was busy.
+	 */
+	u64 total_gt_clks;
+
+	/**
+	 * @start_gt_clk: GT clock time of last idle to active transition.
+	 */
+	u64 start_gt_clk;
+};
+
 struct intel_engine_cs {
 	struct drm_i915_private *i915;
 	struct intel_gt *gt;
@@ -466,6 +488,12 @@ struct intel_engine_cs {
 	void		(*add_active_request)(struct i915_request *rq);
 	void		(*remove_active_request)(struct i915_request *rq);
 
+	/*
+	 * Get engine busyness and the time at which the busyness was sampled.
+	 */
+	ktime_t		(*busyness)(struct intel_engine_cs *engine,
+				    ktime_t *now);
+
 	struct intel_engine_execlists execlists;
 
 	/*
@@ -515,7 +543,10 @@ struct intel_engine_cs {
 	u32 (*get_cmd_length_mask)(u32 cmd_header);
 
 	struct {
-		struct intel_engine_execlists_stats execlists;
+		union {
+			struct intel_engine_execlists_stats execlists;
+			struct intel_engine_guc_stats guc;
+		};
 
 		/**
 		 * @rps: Utilisation at last RPS sampling.
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index bedb80057046..ca03880fa7e4 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3293,6 +3293,38 @@ static void execlists_release(struct intel_engine_cs *engine)
 	lrc_fini_wa_ctx(engine);
 }
 
+static ktime_t __execlists_engine_busyness(struct intel_engine_cs *engine,
+					   ktime_t *now)
+{
+	struct intel_engine_execlists_stats *stats = &engine->stats.execlists;
+	ktime_t total = stats->total;
+
+	/*
+	 * If the engine is executing something at the moment
+	 * add it to the total.
+	 */
+	*now = ktime_get();
+	if (READ_ONCE(stats->active))
+		total = ktime_add(total, ktime_sub(*now, stats->start));
+
+	return total;
+}
+
+static ktime_t execlists_engine_busyness(struct intel_engine_cs *engine,
+					 ktime_t *now)
+{
+	struct intel_engine_execlists_stats *stats = &engine->stats.execlists;
+	unsigned int seq;
+	ktime_t total;
+
+	do {
+		seq = read_seqcount_begin(&stats->lock);
+		total = __execlists_engine_busyness(engine, now);
+	} while (read_seqcount_retry(&stats->lock, seq));
+
+	return total;
+}
+
 static void
 logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 {
@@ -3349,6 +3381,8 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 		engine->emit_bb_start = gen8_emit_bb_start;
 	else
 		engine->emit_bb_start = gen8_emit_bb_start_noarb;
+
+	engine->busyness = execlists_engine_busyness;
 }
 
 static void logical_ring_default_irqs(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 524eaf678790..b4a8594bc46c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -86,6 +86,7 @@ static int __gt_unpark(struct intel_wakeref *wf)
 	intel_rc6_unpark(&gt->rc6);
 	intel_rps_unpark(&gt->rps);
 	i915_pmu_gt_unparked(i915);
+	intel_guc_busyness_unpark(gt);
 
 	intel_gt_unpark_requests(gt);
 	runtime_begin(gt);
@@ -104,6 +105,7 @@ static int __gt_park(struct intel_wakeref *wf)
 	runtime_end(gt);
 	intel_gt_park_requests(gt);
 
+	intel_guc_busyness_park(gt);
 	i915_vma_parked(gt);
 	i915_pmu_gt_parked(i915);
 	intel_rps_park(&gt->rps);
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index 75569666105d..0bfd738dbf3a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -214,6 +214,31 @@ static int live_engine_timestamps(void *arg)
 	return 0;
 }
 
+static int __spin_until_busier(struct intel_engine_cs *engine, ktime_t busyness)
+{
+	ktime_t start, unused, dt;
+
+	if (!intel_engine_uses_guc(engine))
+		return 0;
+
+	/*
+	 * In GuC mode of submission, the busyness stats may get updated after
+	 * the batch starts running. Poll for a change in busyness and timeout
+	 * after 500 us.
+	 */
+	start = ktime_get();
+	while (intel_engine_get_busy_time(engine, &unused) == busyness) {
+		dt = ktime_get() - start;
+		if (dt > 500000) {
+			pr_err("active wait timed out %lld\n", dt);
+			ENGINE_TRACE(engine, "active wait time out %lld\n", dt);
+			return -ETIME;
+		}
+	}
+
+	return 0;
+}
+
 static int live_engine_busy_stats(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -232,6 +257,7 @@ static int live_engine_busy_stats(void *arg)
 	GEM_BUG_ON(intel_gt_pm_is_awake(gt));
 	for_each_engine(engine, gt, id) {
 		struct i915_request *rq;
+		ktime_t busyness, dummy;
 		ktime_t de, dt;
 		ktime_t t[2];
 
@@ -274,12 +300,19 @@ static int live_engine_busy_stats(void *arg)
 		}
 		i915_request_add(rq);
 
+		busyness = intel_engine_get_busy_time(engine, &dummy);
 		if (!igt_wait_for_spinner(&spin, rq)) {
 			intel_gt_set_wedged(engine->gt);
 			err = -ETIME;
 			goto end;
 		}
 
+		err = __spin_until_busier(engine, busyness);
+		if (err) {
+			GEM_TRACE_DUMP();
+			goto end;
+		}
+
 		ENGINE_TRACE(engine, "measuring busy time\n");
 		preempt_disable();
 		de = intel_engine_get_busy_time(engine, &t[0]);
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index ba10bd374cee..fe5d7d261797 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -144,6 +144,7 @@ enum intel_guc_action {
 	INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE = 0x4600,
 	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
 	INTEL_GUC_ACTION_RESET_CLIENT = 0x5507,
+	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
 	INTEL_GUC_ACTION_LIMIT
 };
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 31cf9fb48c7e..1cb46098030d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -138,6 +138,8 @@ struct intel_guc {
 	u32 ads_regset_size;
 	/** @ads_golden_ctxt_size: size of the golden contexts in the ADS */
 	u32 ads_golden_ctxt_size;
+	/** @ads_engine_usage_size: size of engine usage in the ADS */
+	u32 ads_engine_usage_size;
 
 	/** @lrc_desc_pool: object allocated to hold the GuC LRC descriptor pool */
 	struct i915_vma *lrc_desc_pool;
@@ -172,6 +174,34 @@ struct intel_guc {
 
 	/** @send_mutex: used to serialize the intel_guc_send actions */
 	struct mutex send_mutex;
+
+	/**
+	 * @timestamp: GT timestamp object that stores a copy of the timestamp
+	 * and adjusts it for overflow using a worker.
+	 */
+	struct {
+		/**
+		 * @lock: Lock protecting the below fields and the engine stats.
+		 */
+		spinlock_t lock;
+
+		/**
+		 * @gt_stamp: 64 bit extended value of the GT timestamp.
+		 */
+		u64 gt_stamp;
+
+		/**
+		 * @ping_delay: Period for polling the GT timestamp for
+		 * overflow.
+		 */
+		unsigned long ping_delay;
+
+		/**
+		 * @work: Periodic work to adjust GT timestamp, engine and
+		 * context usage for overflows.
+		 */
+		struct delayed_work work;
+	} timestamp;
 };
 
 static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 621c893a009f..1a1edae67e4e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -26,6 +26,8 @@
  *      | guc_policies                          |
  *      +---------------------------------------+
  *      | guc_gt_system_info                    |
+ *      +---------------------------------------+
+ *      | guc_engine_usage                      |
  *      +---------------------------------------+ <== static
  *      | guc_mmio_reg[countA] (engine 0.0)     |
  *      | guc_mmio_reg[countB] (engine 0.1)     |
@@ -47,6 +49,7 @@ struct __guc_ads_blob {
 	struct guc_ads ads;
 	struct guc_policies policies;
 	struct guc_gt_system_info system_info;
+	struct guc_engine_usage engine_usage;
 	/* From here on, location is dynamic! Refer to above diagram. */
 	struct guc_mmio_reg regset[0];
 } __packed;
@@ -628,3 +631,21 @@ void intel_guc_ads_reset(struct intel_guc *guc)
 
 	guc_ads_private_data_reset(guc);
 }
+
+u32 intel_guc_engine_usage_offset(struct intel_guc *guc)
+{
+	struct __guc_ads_blob *blob = guc->ads_blob;
+	u32 base = intel_guc_ggtt_offset(guc, guc->ads_vma);
+	u32 offset = base + ptr_offset(blob, engine_usage);
+
+	return offset;
+}
+
+struct guc_engine_usage_record *intel_guc_engine_usage(struct intel_engine_cs *engine)
+{
+	struct intel_guc *guc = &engine->gt->uc.guc;
+	struct __guc_ads_blob *blob = guc->ads_blob;
+	u8 guc_class = engine_class_to_guc_class(engine->class);
+
+	return &blob->engine_usage.engines[guc_class][ilog2(engine->logical_mask)];
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
index 3d85051d57e4..e74c110facff 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
@@ -6,8 +6,11 @@
 #ifndef _INTEL_GUC_ADS_H_
 #define _INTEL_GUC_ADS_H_
 
+#include <linux/types.h>
+
 struct intel_guc;
 struct drm_printer;
+struct intel_engine_cs;
 
 int intel_guc_ads_create(struct intel_guc *guc);
 void intel_guc_ads_destroy(struct intel_guc *guc);
@@ -15,5 +18,7 @@ void intel_guc_ads_init_late(struct intel_guc *guc);
 void intel_guc_ads_reset(struct intel_guc *guc);
 void intel_guc_ads_print_policy_info(struct intel_guc *guc,
 				     struct drm_printer *p);
+struct guc_engine_usage_record *intel_guc_engine_usage(struct intel_engine_cs *engine);
+u32 intel_guc_engine_usage_offset(struct intel_guc *guc);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 722933e26347..7072e30e99f4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -294,6 +294,19 @@ struct guc_ads {
 	u32 reserved[15];
 } __packed;
 
+/* Engine usage stats */
+struct guc_engine_usage_record {
+	u32 current_context_index;
+	u32 last_switch_in_stamp;
+	u32 reserved0;
+	u32 total_runtime;
+	u32 reserved1[4];
+} __packed;
+
+struct guc_engine_usage {
+	struct guc_engine_usage_record engines[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
+} __packed;
+
 /* GuC logging structures */
 
 enum guc_log_buffer_type {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 38b47e73e35d..5cc49c0b3889 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -13,6 +13,7 @@
 #include "gt/intel_engine_heartbeat.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_clock_utils.h"
 #include "gt/intel_gt_irq.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_requests.h"
@@ -21,6 +22,7 @@
 #include "gt/intel_mocs.h"
 #include "gt/intel_ring.h"
 
+#include "intel_guc_ads.h"
 #include "intel_guc_submission.h"
 
 #include "i915_drv.h"
@@ -1077,6 +1079,272 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
 	xa_unlock_irqrestore(&guc->context_lookup, flags);
 }
 
+/*
+ * GuC stores busyness stats for each engine at context in/out boundaries. A
+ * context 'in' logs execution start time, 'out' adds in -> out delta to total.
+ * i915/kmd accesses 'start', 'total' and 'context id' from memory shared with
+ * GuC.
+ *
+ * __i915_pmu_event_read samples engine busyness. When sampling, if context id
+ * is valid (!= ~0) and start is non-zero, the engine is considered to be
+ * active. For an active engine total busyness = total + (now - start), where
+ * 'now' is the time at which the busyness is sampled. For inactive engine,
+ * total busyness = total.
+ *
+ * All times are captured from GUCPMTIMESTAMP reg and are in gt clock domain.
+ *
+ * The start and total values provided by GuC are 32 bits and wrap around in a
+ * few minutes. Since perf pmu provides busyness as 64 bit monotonically
+ * increasing ns values, there is a need for this implementation to account for
+ * overflows and extend the GuC provided values to 64 bits before returning
+ * busyness to the user. In order to do that, a worker runs periodically at
+ * frequency = 1/8th the time it takes for the timestamp to wrap (i.e. once in
+ * 27 seconds for a gt clock frequency of 19.2 MHz).
+ */
+
+#define WRAP_TIME_CLKS U32_MAX
+#define POLL_TIME_CLKS (WRAP_TIME_CLKS >> 3)
+
+static void
+__extend_last_switch(struct intel_guc *guc, u64 *prev_start, u32 new_start)
+{
+	u32 gt_stamp_hi = upper_32_bits(guc->timestamp.gt_stamp);
+	u32 gt_stamp_last = lower_32_bits(guc->timestamp.gt_stamp);
+
+	if (new_start == lower_32_bits(*prev_start))
+		return;
+
+	if (new_start < gt_stamp_last &&
+	    (new_start - gt_stamp_last) <= POLL_TIME_CLKS)
+		gt_stamp_hi++;
+
+	if (new_start > gt_stamp_last &&
+	    (gt_stamp_last - new_start) <= POLL_TIME_CLKS && gt_stamp_hi)
+		gt_stamp_hi--;
+
+	*prev_start = ((u64)gt_stamp_hi << 32) | new_start;
+}
+
+static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)
+{
+	struct guc_engine_usage_record *rec = intel_guc_engine_usage(engine);
+	struct intel_engine_guc_stats *stats = &engine->stats.guc;
+	struct intel_guc *guc = &engine->gt->uc.guc;
+	u32 last_switch = rec->last_switch_in_stamp;
+	u32 ctx_id = rec->current_context_index;
+	u32 total = rec->total_runtime;
+
+	lockdep_assert_held(&guc->timestamp.lock);
+
+	stats->running = ctx_id != ~0U && last_switch;
+	if (stats->running)
+		__extend_last_switch(guc, &stats->start_gt_clk, last_switch);
+
+	/*
+	 * Instead of adjusting the total for overflow, just add the
+	 * difference from previous sample stats->total_gt_clks
+	 */
+	if (total && total != ~0U) {
+		stats->total_gt_clks += (u32)(total - stats->prev_total);
+		stats->prev_total = total;
+	}
+}
+
+static void guc_update_pm_timestamp(struct intel_guc *guc,
+				    struct intel_engine_cs *engine,
+				    ktime_t *now)
+{
+	u32 gt_stamp_now, gt_stamp_hi;
+
+	lockdep_assert_held(&guc->timestamp.lock);
+
+	gt_stamp_hi = upper_32_bits(guc->timestamp.gt_stamp);
+	gt_stamp_now = intel_uncore_read(engine->uncore,
+					 RING_TIMESTAMP(engine->mmio_base));
+	*now = ktime_get();
+
+	if (gt_stamp_now < lower_32_bits(guc->timestamp.gt_stamp))
+		gt_stamp_hi++;
+
+	guc->timestamp.gt_stamp = ((u64)gt_stamp_hi << 32) | gt_stamp_now;
+}
+
+/*
+ * Unlike the execlist mode of submission total and active times are in terms of
+ * gt clocks. The *now parameter is retained to return the cpu time at which the
+ * busyness was sampled.
+ */
+static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
+{
+	struct intel_engine_guc_stats stats_saved, *stats = &engine->stats.guc;
+	struct i915_gpu_error *gpu_error = &engine->i915->gpu_error;
+	struct intel_gt *gt = engine->gt;
+	struct intel_guc *guc = &gt->uc.guc;
+	u64 total, gt_stamp_saved;
+	unsigned long flags;
+	u32 reset_count;
+
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
+
+	/*
+	 * If a reset happened, we risk reading partially updated
+	 * engine busyness from GuC, so we just use the driver stored
+	 * copy of busyness. Synchronize with gt reset using reset_count.
+	 */
+	reset_count = i915_reset_count(gpu_error);
+
+	*now = ktime_get();
+
+	/*
+	 * The active busyness depends on start_gt_clk and gt_stamp.
+	 * gt_stamp is updated by i915 only when gt is awake and the
+	 * start_gt_clk is derived from GuC state. To get a consistent
+	 * view of activity, we query the GuC state only if gt is awake.
+	 */
+	stats_saved = *stats;
+	gt_stamp_saved = guc->timestamp.gt_stamp;
+	if (intel_gt_pm_get_if_awake(gt)) {
+		guc_update_engine_gt_clks(engine);
+		guc_update_pm_timestamp(guc, engine, now);
+		intel_gt_pm_put_async(gt);
+		if (i915_reset_count(gpu_error) != reset_count) {
+			*stats = stats_saved;
+			guc->timestamp.gt_stamp = gt_stamp_saved;
+		}
+	}
+
+	total = intel_gt_clock_interval_to_ns(gt, stats->total_gt_clks);
+	if (stats->running) {
+		u64 clk = guc->timestamp.gt_stamp - stats->start_gt_clk;
+
+		total += intel_gt_clock_interval_to_ns(gt, clk);
+	}
+
+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+
+	return ns_to_ktime(total);
+}
+
+static void __reset_guc_busyness_stats(struct intel_guc *guc)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	unsigned long flags;
+	ktime_t unused;
+
+	cancel_delayed_work_sync(&guc->timestamp.work);
+
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
+
+	for_each_engine(engine, gt, id) {
+		guc_update_pm_timestamp(guc, engine, &unused);
+		guc_update_engine_gt_clks(engine);
+		engine->stats.guc.prev_total = 0;
+	}
+
+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+}
+
+static void __update_guc_busyness_stats(struct intel_guc *guc)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	ktime_t unused;
+
+	for_each_engine(engine, gt, id) {
+		guc_update_pm_timestamp(guc, engine, &unused);
+		guc_update_engine_gt_clks(engine);
+	}
+}
+
+static void guc_timestamp_ping(struct work_struct *wrk)
+{
+	struct intel_guc *guc = container_of(wrk, typeof(*guc),
+					     timestamp.work.work);
+	struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
+	struct intel_gt *gt = guc_to_gt(guc);
+	intel_wakeref_t wakeref;
+	unsigned long flags;
+	int srcu, ret;
+
+	/*
+	 * Synchronize with gt reset to make sure the worker does not
+	 * corrupt the engine/guc stats.
+	 */
+	ret = intel_gt_reset_trylock(gt, &srcu);
+	if (ret)
+		return;
+
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
+
+	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
+		__update_guc_busyness_stats(guc);
+
+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+
+	intel_gt_reset_unlock(gt, srcu);
+
+	mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
+			 guc->timestamp.ping_delay);
+}
+
+static int guc_action_enable_usage_stats(struct intel_guc *guc)
+{
+	u32 offset = intel_guc_engine_usage_offset(guc);
+	u32 action[] = {
+		INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF,
+		offset,
+		0,
+	};
+
+	return intel_guc_send(guc, action, ARRAY_SIZE(action));
+}
+
+static void guc_init_engine_stats(struct intel_guc *guc)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	intel_wakeref_t wakeref;
+
+	mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
+			 guc->timestamp.ping_delay);
+
+	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref) {
+		int ret = guc_action_enable_usage_stats(guc);
+
+		if (ret)
+			drm_err(&gt->i915->drm,
+				"Failed to enable usage stats: %d!\n", ret);
+	}
+}
+
+void intel_guc_busyness_park(struct intel_gt *gt)
+{
+	struct intel_guc *guc = &gt->uc.guc;
+	unsigned long flags;
+
+	if (!guc_submission_initialized(guc))
+		return;
+
+	cancel_delayed_work(&guc->timestamp.work);
+
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	__update_guc_busyness_stats(guc);
+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+}
+
+void intel_guc_busyness_unpark(struct intel_gt *gt)
+{
+	struct intel_guc *guc = &gt->uc.guc;
+
+	if (!guc_submission_initialized(guc))
+		return;
+
+	mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
+			 guc->timestamp.ping_delay);
+}
+
 static inline bool
 submission_disabled(struct intel_guc *guc)
 {
@@ -1138,6 +1406,7 @@ void intel_guc_submission_reset_prepare(struct intel_guc *guc)
 	intel_gt_park_heartbeats(guc_to_gt(guc));
 	disable_submission(guc);
 	guc->interrupts.disable(guc);
+	__reset_guc_busyness_stats(guc);
 
 	/* Flush IRQ handler */
 	spin_lock_irq(&guc_to_gt(guc)->irq_lock);
@@ -1484,6 +1753,7 @@ static void destroyed_worker_func(struct work_struct *w);
  */
 int intel_guc_submission_init(struct intel_guc *guc)
 {
+	struct intel_gt *gt = guc_to_gt(guc);
 	int ret;
 
 	if (guc->lrc_desc_pool)
@@ -1512,6 +1782,10 @@ int intel_guc_submission_init(struct intel_guc *guc)
 	if (!guc->submission_state.guc_ids_bitmap)
 		return -ENOMEM;
 
+	spin_lock_init(&guc->timestamp.lock);
+	INIT_DELAYED_WORK(&guc->timestamp.work, guc_timestamp_ping);
+	guc->timestamp.ping_delay = (POLL_TIME_CLKS / gt->clock_frequency + 1) * HZ;
+
 	return 0;
 }
 
@@ -3369,7 +3643,9 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 		engine->emit_flush = gen12_emit_flush_xcs;
 	}
 	engine->set_default_submission = guc_set_default_submission;
+	engine->busyness = guc_engine_busyness;
 
+	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
 	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
 	engine->flags |= I915_ENGINE_HAS_TIMESLICES;
 
@@ -3468,6 +3744,7 @@ int intel_guc_submission_setup(struct intel_engine_cs *engine)
 void intel_guc_submission_enable(struct intel_guc *guc)
 {
 	guc_init_lrc_mapping(guc);
+	guc_init_engine_stats(guc);
 }
 
 void intel_guc_submission_disable(struct intel_guc *guc)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
index c7ef44fa0c36..5a95a9f0a8e3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
@@ -28,6 +28,8 @@ void intel_guc_submission_print_context_info(struct intel_guc *guc,
 void intel_guc_dump_active_requests(struct intel_engine_cs *engine,
 				    struct i915_request *hung_rq,
 				    struct drm_printer *m);
+void intel_guc_busyness_park(struct intel_gt *gt);
+void intel_guc_busyness_unpark(struct intel_gt *gt);
 
 bool intel_guc_virtual_engine_has_heartbeat(const struct intel_engine_cs *ve);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d9f7a729333f..f7927f6dac6e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2662,6 +2662,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   RING_WAIT		(1 << 11) /* gen3+, PRBx_CTL */
 #define   RING_WAIT_SEMAPHORE	(1 << 10) /* gen6+ */
 
+#define GUCPMTIMESTAMP          _MMIO(0xC3E8)
+
 /* There are 16 64-bit CS General Purpose Registers per-engine on Gen8+ */
 #define GEN8_RING_CS_GPR(base, n)	_MMIO((base) + 0x600 + (n) * 8)
 #define GEN8_RING_CS_GPR_UDW(base, n)	_MMIO((base) + 0x600 + (n) * 8 + 4)
-- 
2.20.1

