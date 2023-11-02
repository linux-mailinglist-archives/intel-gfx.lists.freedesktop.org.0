Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F947DF6AC
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 16:43:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ED7A10E90D;
	Thu,  2 Nov 2023 15:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C1F510E90A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 15:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698939780; x=1730475780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZMUpFfaLaaXbuvhiThBlXuY6oBAmXw4+6Z0Qa998Pdk=;
 b=KL4715Cfgh+F895DvQE42EBpvl+1mfkqLDbPWNtOAjUd3fpqdHx5/kkc
 CQ5R8e6C1hPx6My/3F8FR50WARmjfF5kYo4NqQcy0urnHVaKtp9R0yKBT
 LViotVx0AEAbV1Zw82HFVXllRjYW3l7DJ+RxWCZPTOoOi7LIfNnDCN1xX
 5t6C9ilUyQkeHtIIrFL2WI0LuIOkECo3SBg/08M4hMLdgy0zjeYBiGrec
 4Z9MBoQDffzEQMbuV0CeGLDUecRuwIoEKVSHuQTksKJidubdSBAbEntED
 bDlfXLP/A0KglPTTbTy7Wk4Fe9OoSJwJEPeAM7fVV8F70fo6W1L8cAscL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="368949027"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="368949027"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:42:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="764961944"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="764961944"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:42:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 17:42:29 +0200
Message-Id: <b7b17d8778d3cfc6c083ec7b327db780821e74cf.1698939671.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1698939671.git.jani.nikula@intel.com>
References: <cover.1698939671.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/pmu: hide struct i915_pmu inside
 i915_pmu.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Abstract pmu code better by hiding struct i915_pmu and its internals in
i915_pmu.c. Allocate struct i915_pmu dynamically.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h |   5 +-
 drivers/gpu/drm/i915/i915_pmu.c | 185 +++++++++++++++++++++++++++++---
 drivers/gpu/drm/i915/i915_pmu.h | 133 -----------------------
 3 files changed, 175 insertions(+), 148 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 259884b10d9a..29834432e7b7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -65,8 +65,9 @@
 #include "intel_uncore.h"
 
 struct drm_i915_clock_gating_funcs;
-struct vlv_s0ix_state;
+struct i915_pmu;
 struct intel_pxp;
+struct vlv_s0ix_state;
 
 #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
 
@@ -363,7 +364,7 @@ struct drm_i915_private {
 
 	bool irq_enabled;
 
-	struct i915_pmu pmu;
+	struct i915_pmu *pmu;
 
 	/* The TTM device structure. */
 	struct ttm_device bdev;
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 3c6191b7fc82..d26e3c421663 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -4,7 +4,10 @@
  * Copyright © 2017-2018 Intel Corporation
  */
 
+#include <linux/hrtimer.h>
+#include <linux/perf_event.h>
 #include <linux/pm_runtime.h>
+#include <linux/spinlock_types.h>
 
 #include "gt/intel_engine.h"
 #include "gt/intel_engine_pm.h"
@@ -19,6 +22,143 @@
 #include "i915_drv.h"
 #include "i915_pmu.h"
 
+/*
+ * Non-engine events that we need to track enabled-disabled transition and
+ * current state.
+ */
+enum i915_pmu_tracked_events {
+	__I915_PMU_ACTUAL_FREQUENCY_ENABLED = 0,
+	__I915_PMU_REQUESTED_FREQUENCY_ENABLED,
+	__I915_PMU_RC6_RESIDENCY_ENABLED,
+	__I915_PMU_TRACKED_EVENT_COUNT, /* count marker */
+};
+
+/*
+ * Slots used from the sampling timer (non-engine events) with some extras for
+ * convenience.
+ */
+enum {
+	__I915_SAMPLE_FREQ_ACT = 0,
+	__I915_SAMPLE_FREQ_REQ,
+	__I915_SAMPLE_RC6,
+	__I915_SAMPLE_RC6_LAST_REPORTED,
+	__I915_NUM_PMU_SAMPLERS
+};
+
+#define I915_PMU_MAX_GT 2
+
+/*
+ * How many different events we track in the global PMU mask.
+ *
+ * It is also used to know to needed number of event reference counters.
+ */
+#define I915_PMU_MASK_BITS \
+	(I915_ENGINE_SAMPLE_COUNT + \
+	 I915_PMU_MAX_GT * __I915_PMU_TRACKED_EVENT_COUNT)
+
+struct i915_pmu {
+	/**
+	 * @i915: i915 device backpointer.
+	 */
+	struct drm_i915_private *i915;
+	/**
+	 * @cpuhp: Struct used for CPU hotplug handling.
+	 */
+	struct {
+		struct hlist_node node;
+		unsigned int cpu;
+	} cpuhp;
+	/**
+	 * @base: PMU base.
+	 */
+	struct pmu base;
+	/**
+	 * @closed: i915 is unregistering.
+	 */
+	bool closed;
+	/**
+	 * @name: Name as registered with perf core.
+	 */
+	const char *name;
+	/**
+	 * @lock: Lock protecting enable mask and ref count handling.
+	 */
+	spinlock_t lock;
+	/**
+	 * @unparked: GT unparked mask.
+	 */
+	unsigned int unparked;
+	/**
+	 * @timer: Timer for internal i915 PMU sampling.
+	 */
+	struct hrtimer timer;
+	/**
+	 * @enable: Bitmask of specific enabled events.
+	 *
+	 * For some events we need to track their state and do some internal
+	 * house keeping.
+	 *
+	 * Each engine event sampler type and event listed in enum
+	 * i915_pmu_tracked_events gets a bit in this field.
+	 *
+	 * Low bits are engine samplers and other events continue from there.
+	 */
+	u32 enable;
+
+	/**
+	 * @timer_last:
+	 *
+	 * Timestmap of the previous timer invocation.
+	 */
+	ktime_t timer_last;
+
+	/**
+	 * @enable_count: Reference counts for the enabled events.
+	 *
+	 * Array indices are mapped in the same way as bits in the @enable field
+	 * and they are used to control sampling on/off when multiple clients
+	 * are using the PMU API.
+	 */
+	unsigned int enable_count[I915_PMU_MASK_BITS];
+	/**
+	 * @timer_enabled: Should the internal sampling timer be running.
+	 */
+	bool timer_enabled;
+	/**
+	 * @sample: Current and previous (raw) counters for sampling events.
+	 *
+	 * These counters are updated from the i915 PMU sampling timer.
+	 *
+	 * Only global counters are held here, while the per-engine ones are in
+	 * struct intel_engine_cs.
+	 */
+	struct i915_pmu_sample sample[I915_PMU_MAX_GT][__I915_NUM_PMU_SAMPLERS];
+	/**
+	 * @sleep_last: Last time GT parked for RC6 estimation.
+	 */
+	ktime_t sleep_last[I915_PMU_MAX_GT];
+	/**
+	 * @irq_count: Number of interrupts
+	 *
+	 * Intentionally unsigned long to avoid atomics or heuristics on 32bit.
+	 * 4e9 interrupts are a lot and postprocessing can really deal with an
+	 * occasional wraparound easily. It's 32bit after all.
+	 */
+	unsigned long irq_count;
+	/**
+	 * @events_attr_group: Device events attribute group.
+	 */
+	struct attribute_group events_attr_group;
+	/**
+	 * @i915_attr: Memory block holding device attributes.
+	 */
+	void *i915_attr;
+	/**
+	 * @pmu_attr: Memory block holding device attributes.
+	 */
+	void *pmu_attr;
+};
+
 /* Frequency for the sampling timer for events which need it. */
 #define FREQUENCY 200
 #define PERIOD max_t(u64, 10000, NSEC_PER_SEC / FREQUENCY)
@@ -38,7 +178,7 @@ static struct i915_pmu *event_to_pmu(struct perf_event *event)
 
 static struct drm_i915_private *pmu_to_i915(struct i915_pmu *pmu)
 {
-	return container_of(pmu, struct drm_i915_private, pmu);
+	return pmu->i915;
 }
 
 static u8 engine_config_sample(u64 config)
@@ -222,7 +362,7 @@ static u64 get_rc6(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	const unsigned int gt_id = gt->info.id;
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = i915->pmu;
 	unsigned long flags;
 	bool awake = false;
 	u64 val;
@@ -281,7 +421,7 @@ static void init_rc6(struct i915_pmu *pmu)
 
 static void park_rc6(struct intel_gt *gt)
 {
-	struct i915_pmu *pmu = &gt->i915->pmu;
+	struct i915_pmu *pmu = gt->i915->pmu;
 
 	store_sample(pmu, gt->info.id, __I915_SAMPLE_RC6, __get_rc6(gt));
 	pmu->sleep_last[gt->info.id] = ktime_get_raw();
@@ -300,9 +440,9 @@ static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
 
 void i915_pmu_gt_parked(struct intel_gt *gt)
 {
-	struct i915_pmu *pmu = &gt->i915->pmu;
+	struct i915_pmu *pmu = gt->i915->pmu;
 
-	if (!pmu->base.event_init)
+	if (!pmu || !pmu->base.event_init)
 		return;
 
 	spin_lock_irq(&pmu->lock);
@@ -322,9 +462,9 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
 
 void i915_pmu_gt_unparked(struct intel_gt *gt)
 {
-	struct i915_pmu *pmu = &gt->i915->pmu;
+	struct i915_pmu *pmu = gt->i915->pmu;
 
-	if (!pmu->base.event_init)
+	if (!pmu || !pmu->base.event_init)
 		return;
 
 	spin_lock_irq(&pmu->lock);
@@ -399,7 +539,7 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
 	enum intel_engine_id id;
 	unsigned long flags;
 
-	if ((i915->pmu.enable & ENGINE_SAMPLE_MASK) == 0)
+	if ((i915->pmu->enable & ENGINE_SAMPLE_MASK) == 0)
 		return;
 
 	if (!intel_gt_pm_is_awake(gt))
@@ -437,7 +577,7 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	const unsigned int gt_id = gt->info.id;
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = i915->pmu;
 	struct intel_rps *rps = &gt->rps;
 
 	if (!frequency_sampling_enabled(pmu, gt_id))
@@ -1241,7 +1381,7 @@ static bool is_igp(struct drm_i915_private *i915)
 
 void i915_pmu_register(struct drm_i915_private *i915)
 {
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu;
 	const struct attribute_group **attr_groups;
 	int ret = -ENOMEM;
 
@@ -1250,6 +1390,13 @@ void i915_pmu_register(struct drm_i915_private *i915)
 		return;
 	}
 
+	pmu = kzalloc(sizeof(*pmu), GFP_KERNEL);
+	if (!pmu)
+		return;
+
+	i915->pmu = pmu;
+	pmu->i915 = i915;
+
 	spin_lock_init(&pmu->lock);
 	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 	pmu->timer.function = i915_sample;
@@ -1317,16 +1464,21 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	if (!is_igp(i915))
 		kfree(pmu->name);
 err:
+	kfree(pmu);
+	i915->pmu = NULL;
 	drm_notice(&i915->drm, "Failed to register PMU!\n");
 }
 
 void i915_pmu_unregister(struct drm_i915_private *i915)
 {
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = i915->pmu;
 
-	if (!pmu->base.event_init)
+	if (!pmu)
 		return;
 
+	if (!pmu->base.event_init)
+		goto out;
+
 	/*
 	 * "Disconnect" the PMU callbacks - since all are atomic synchronize_rcu
 	 * ensures all currently executing ones will have exited before we
@@ -1345,13 +1497,20 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 	if (!is_igp(i915))
 		kfree(pmu->name);
 	free_event_attributes(pmu);
+
+out:
+	kfree(i915->pmu);
+	i915->pmu = NULL;
 }
 
 void i915_pmu_irq(struct drm_i915_private *i915)
 {
+	if (!i915->pmu)
+		return;
+
 	/*
 	 * A clever compiler translates that into INC. A not so clever one
 	 * should at least prevent store tearing.
 	 */
-	WRITE_ONCE(i915->pmu.irq_count, i915->pmu.irq_count + 1);
+	WRITE_ONCE(i915->pmu->irq_count, i915->pmu->irq_count + 1);
 }
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 26b06132a44f..bd2f9a62413e 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -15,145 +15,12 @@
 struct drm_i915_private;
 struct intel_gt;
 
-/*
- * Non-engine events that we need to track enabled-disabled transition and
- * current state.
- */
-enum i915_pmu_tracked_events {
-	__I915_PMU_ACTUAL_FREQUENCY_ENABLED = 0,
-	__I915_PMU_REQUESTED_FREQUENCY_ENABLED,
-	__I915_PMU_RC6_RESIDENCY_ENABLED,
-	__I915_PMU_TRACKED_EVENT_COUNT, /* count marker */
-};
-
-/*
- * Slots used from the sampling timer (non-engine events) with some extras for
- * convenience.
- */
-enum {
-	__I915_SAMPLE_FREQ_ACT = 0,
-	__I915_SAMPLE_FREQ_REQ,
-	__I915_SAMPLE_RC6,
-	__I915_SAMPLE_RC6_LAST_REPORTED,
-	__I915_NUM_PMU_SAMPLERS
-};
-
-#define I915_PMU_MAX_GT 2
-
-/*
- * How many different events we track in the global PMU mask.
- *
- * It is also used to know to needed number of event reference counters.
- */
-#define I915_PMU_MASK_BITS \
-	(I915_ENGINE_SAMPLE_COUNT + \
-	 I915_PMU_MAX_GT * __I915_PMU_TRACKED_EVENT_COUNT)
-
 #define I915_ENGINE_SAMPLE_COUNT (I915_SAMPLE_SEMA + 1)
 
 struct i915_pmu_sample {
 	u64 cur;
 };
 
-struct i915_pmu {
-	/**
-	 * @cpuhp: Struct used for CPU hotplug handling.
-	 */
-	struct {
-		struct hlist_node node;
-		unsigned int cpu;
-	} cpuhp;
-	/**
-	 * @base: PMU base.
-	 */
-	struct pmu base;
-	/**
-	 * @closed: i915 is unregistering.
-	 */
-	bool closed;
-	/**
-	 * @name: Name as registered with perf core.
-	 */
-	const char *name;
-	/**
-	 * @lock: Lock protecting enable mask and ref count handling.
-	 */
-	spinlock_t lock;
-	/**
-	 * @unparked: GT unparked mask.
-	 */
-	unsigned int unparked;
-	/**
-	 * @timer: Timer for internal i915 PMU sampling.
-	 */
-	struct hrtimer timer;
-	/**
-	 * @enable: Bitmask of specific enabled events.
-	 *
-	 * For some events we need to track their state and do some internal
-	 * house keeping.
-	 *
-	 * Each engine event sampler type and event listed in enum
-	 * i915_pmu_tracked_events gets a bit in this field.
-	 *
-	 * Low bits are engine samplers and other events continue from there.
-	 */
-	u32 enable;
-
-	/**
-	 * @timer_last:
-	 *
-	 * Timestmap of the previous timer invocation.
-	 */
-	ktime_t timer_last;
-
-	/**
-	 * @enable_count: Reference counts for the enabled events.
-	 *
-	 * Array indices are mapped in the same way as bits in the @enable field
-	 * and they are used to control sampling on/off when multiple clients
-	 * are using the PMU API.
-	 */
-	unsigned int enable_count[I915_PMU_MASK_BITS];
-	/**
-	 * @timer_enabled: Should the internal sampling timer be running.
-	 */
-	bool timer_enabled;
-	/**
-	 * @sample: Current and previous (raw) counters for sampling events.
-	 *
-	 * These counters are updated from the i915 PMU sampling timer.
-	 *
-	 * Only global counters are held here, while the per-engine ones are in
-	 * struct intel_engine_cs.
-	 */
-	struct i915_pmu_sample sample[I915_PMU_MAX_GT][__I915_NUM_PMU_SAMPLERS];
-	/**
-	 * @sleep_last: Last time GT parked for RC6 estimation.
-	 */
-	ktime_t sleep_last[I915_PMU_MAX_GT];
-	/**
-	 * @irq_count: Number of interrupts
-	 *
-	 * Intentionally unsigned long to avoid atomics or heuristics on 32bit.
-	 * 4e9 interrupts are a lot and postprocessing can really deal with an
-	 * occasional wraparound easily. It's 32bit after all.
-	 */
-	unsigned long irq_count;
-	/**
-	 * @events_attr_group: Device events attribute group.
-	 */
-	struct attribute_group events_attr_group;
-	/**
-	 * @i915_attr: Memory block holding device attributes.
-	 */
-	void *i915_attr;
-	/**
-	 * @pmu_attr: Memory block holding device attributes.
-	 */
-	void *pmu_attr;
-};
-
 #ifdef CONFIG_PERF_EVENTS
 int i915_pmu_init(void);
 void i915_pmu_exit(void);
-- 
2.39.2

