Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 890492C626B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 11:01:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D21A46EB72;
	Fri, 27 Nov 2020 10:01:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA9256EB72
 for <Intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 10:01:26 +0000 (UTC)
IronPort-SDR: wmJyIMR90amzPm7MnYcdF9ySzgUzniR+DUcxA5mcGkj/sy4D7b8dQ6T7TgdkITVSMbWjkCuhZY
 TOtq8Kltdi6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="172530053"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="172530053"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 02:01:25 -0800
IronPort-SDR: ZtGfD7+L1bKnMXm2fzKgJIfWvex3WqOEuCwMxJLQaLRwmM7Ji4lH5mbtLixFmK5s7Jw24zcTBG
 XnNFwFxOZXPg==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="363106322"
Received: from einatsch-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.245.41])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 02:01:23 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 10:01:09 +0000
Message-Id: <20201127100109.1968571-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201126164703.1578226-1-tvrtko.ursulin@linux.intel.com>
References: <20201126164703.1578226-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/pmu: Deprecate I915_PMU_LAST and
 optimize state tracking
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Adding any kinds of "last" abi markers is usually a mistake which I
repeated when implementing the PMU because it felt convenient at the time.

This patch marks I915_PMU_LAST as deprecated and stops the internal
implementation using it for sizing the event status bitmask and array.

New way of sizing the fields is a bit less elegant, but it omits reserving
slots for tracking events we are not interested in, and as such saves some
runtime space. Adding sampling events is likely to be a special event and
the new plumbing needed will be easily detected in testing. Existing
asserts against the bitfield and array sizes are keeping the code safe.

First event which gets the new treatment in this new scheme are the
interrupts - which neither needs any tracking in i915 pmu nor needs
waking up the GPU to read it.

v2:
 * Streamline helper names. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_pmu.c | 80 ++++++++++++++++++++++++---------
 drivers/gpu/drm/i915/i915_pmu.h | 35 ++++++++++-----
 include/uapi/drm/i915_drm.h     |  2 +-
 3 files changed, 83 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index cd786ad12be7..06dc63bf84d7 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -27,8 +27,6 @@
 	 BIT(I915_SAMPLE_WAIT) | \
 	 BIT(I915_SAMPLE_SEMA))
 
-#define ENGINE_SAMPLE_BITS (1 << I915_PMU_SAMPLE_BITS)
-
 static cpumask_t i915_pmu_cpumask;
 static unsigned int i915_pmu_target_cpu = -1;
 
@@ -57,17 +55,38 @@ static bool is_engine_config(u64 config)
 	return config < __I915_PMU_OTHER(0);
 }
 
-static unsigned int config_enabled_bit(u64 config)
+static unsigned int other_bit(const u64 config)
+{
+	unsigned int val;
+
+	switch (config) {
+	case I915_PMU_ACTUAL_FREQUENCY:
+		val =  __I915_PMU_ACTUAL_FREQUENCY_ENABLED;
+		break;
+	case I915_PMU_REQUESTED_FREQUENCY:
+		val = __I915_PMU_REQUESTED_FREQUENCY_ENABLED;
+		break;
+	case I915_PMU_RC6_RESIDENCY:
+		val = __I915_PMU_RC6_RESIDENCY_ENABLED;
+		break;
+	default:
+		return -1;
+	}
+
+	return I915_ENGINE_SAMPLE_COUNT + val;
+}
+
+static unsigned int config_bit(const u64 config)
 {
 	if (is_engine_config(config))
 		return engine_config_sample(config);
 	else
-		return ENGINE_SAMPLE_BITS + (config - __I915_PMU_OTHER(0));
+		return other_bit(config);
 }
 
-static u64 config_enabled_mask(u64 config)
+static u64 config_mask(u64 config)
 {
-	return BIT_ULL(config_enabled_bit(config));
+	return BIT_ULL(config_bit(config));
 }
 
 static bool is_engine_event(struct perf_event *event)
@@ -75,15 +94,20 @@ static bool is_engine_event(struct perf_event *event)
 	return is_engine_config(event->attr.config);
 }
 
-static unsigned int event_enabled_bit(struct perf_event *event)
+static unsigned int event_bit(struct perf_event *event)
 {
-	return config_enabled_bit(event->attr.config);
+	return config_bit(event->attr.config);
+}
+
+static bool event_read_needs_wakeref(const struct perf_event *event)
+{
+	return event->attr.config == I915_PMU_RC6_RESIDENCY;
 }
 
 static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
 {
 	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
-	u64 enable;
+	u32 enable;
 
 	/*
 	 * Only some counters need the sampling timer.
@@ -96,8 +120,8 @@ static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
 	 * Mask out all the ones which do not need the timer, or in
 	 * other words keep all the ones that could need the timer.
 	 */
-	enable &= config_enabled_mask(I915_PMU_ACTUAL_FREQUENCY) |
-		  config_enabled_mask(I915_PMU_REQUESTED_FREQUENCY) |
+	enable &= config_mask(I915_PMU_ACTUAL_FREQUENCY) |
+		  config_mask(I915_PMU_REQUESTED_FREQUENCY) |
 		  ENGINE_SAMPLE_MASK;
 
 	/*
@@ -189,7 +213,7 @@ static void park_rc6(struct drm_i915_private *i915)
 {
 	struct i915_pmu *pmu = &i915->pmu;
 
-	if (pmu->enable & config_enabled_mask(I915_PMU_RC6_RESIDENCY))
+	if (pmu->enable & config_mask(I915_PMU_RC6_RESIDENCY))
 		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
 
 	pmu->sleep_last = ktime_get();
@@ -344,8 +368,8 @@ add_sample_mult(struct i915_pmu_sample *sample, u32 val, u32 mul)
 static bool frequency_sampling_enabled(struct i915_pmu *pmu)
 {
 	return pmu->enable &
-	       (config_enabled_mask(I915_PMU_ACTUAL_FREQUENCY) |
-		config_enabled_mask(I915_PMU_REQUESTED_FREQUENCY));
+	       (config_mask(I915_PMU_ACTUAL_FREQUENCY) |
+		config_mask(I915_PMU_REQUESTED_FREQUENCY));
 }
 
 static void
@@ -363,7 +387,7 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 	if (!intel_gt_pm_get_if_awake(gt))
 		return;
 
-	if (pmu->enable & config_enabled_mask(I915_PMU_ACTUAL_FREQUENCY)) {
+	if (pmu->enable & config_mask(I915_PMU_ACTUAL_FREQUENCY)) {
 		u32 val;
 
 		/*
@@ -385,7 +409,7 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 				intel_gpu_freq(rps, val), period_ns / 1000);
 	}
 
-	if (pmu->enable & config_enabled_mask(I915_PMU_REQUESTED_FREQUENCY)) {
+	if (pmu->enable & config_mask(I915_PMU_REQUESTED_FREQUENCY)) {
 		add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_REQ],
 				intel_gpu_freq(rps, rps->cur_freq),
 				period_ns / 1000);
@@ -627,12 +651,19 @@ static void i915_pmu_enable(struct perf_event *event)
 {
 	struct drm_i915_private *i915 =
 		container_of(event->pmu, typeof(*i915), pmu.base);
-	unsigned int bit = event_enabled_bit(event);
+	bool need_wakeref = event_read_needs_wakeref(event);
 	struct i915_pmu *pmu = &i915->pmu;
-	intel_wakeref_t wakeref;
+	intel_wakeref_t wakeref = 0;
 	unsigned long flags;
+	unsigned int bit;
+
+	if (need_wakeref)
+		wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+
+	bit = event_bit(event);
+	if (bit == -1)
+		goto update;
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 	spin_lock_irqsave(&pmu->lock, flags);
 
 	/*
@@ -644,7 +675,7 @@ static void i915_pmu_enable(struct perf_event *event)
 	GEM_BUG_ON(pmu->enable_count[bit] == ~0);
 
 	if (pmu->enable_count[bit] == 0 &&
-	    config_enabled_mask(I915_PMU_RC6_RESIDENCY) & BIT_ULL(bit)) {
+	    config_mask(I915_PMU_RC6_RESIDENCY) & BIT_ULL(bit)) {
 		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur = 0;
 		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
 		pmu->sleep_last = ktime_get();
@@ -684,6 +715,7 @@ static void i915_pmu_enable(struct perf_event *event)
 
 	spin_unlock_irqrestore(&pmu->lock, flags);
 
+update:
 	/*
 	 * Store the current counter value so we can report the correct delta
 	 * for all listeners. Even when the event was already enabled and has
@@ -691,17 +723,21 @@ static void i915_pmu_enable(struct perf_event *event)
 	 */
 	local64_set(&event->hw.prev_count, __i915_pmu_event_read(event));
 
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	if (wakeref)
+		intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
 static void i915_pmu_disable(struct perf_event *event)
 {
 	struct drm_i915_private *i915 =
 		container_of(event->pmu, typeof(*i915), pmu.base);
-	unsigned int bit = event_enabled_bit(event);
+	unsigned int bit = event_bit(event);
 	struct i915_pmu *pmu = &i915->pmu;
 	unsigned long flags;
 
+	if (bit == -1)
+		return;
+
 	spin_lock_irqsave(&pmu->lock, flags);
 
 	if (is_engine_event(event)) {
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index a24885ab415c..e33be99e6454 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -14,6 +14,21 @@
 
 struct drm_i915_private;
 
+/**
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
+/**
+ * Slots used from the sampling timer (non-engine events) with some extras for
+ * convenience.
+ */
 enum {
 	__I915_SAMPLE_FREQ_ACT = 0,
 	__I915_SAMPLE_FREQ_REQ,
@@ -28,8 +43,7 @@ enum {
  * It is also used to know to needed number of event reference counters.
  */
 #define I915_PMU_MASK_BITS \
-	((1 << I915_PMU_SAMPLE_BITS) + \
-	 (I915_PMU_LAST + 1 - __I915_PMU_OTHER(0)))
+	(I915_ENGINE_SAMPLE_COUNT + __I915_PMU_TRACKED_EVENT_COUNT)
 
 #define I915_ENGINE_SAMPLE_COUNT (I915_SAMPLE_SEMA + 1)
 
@@ -66,18 +80,17 @@ struct i915_pmu {
 	 */
 	struct hrtimer timer;
 	/**
-	 * @enable: Bitmask of all currently enabled events.
+	 * @enable: Bitmask of specific enabled events.
+	 *
+	 * For some events we need to track their state and do some internal
+	 * house keeping.
 	 *
-	 * Bits are derived from uAPI event numbers in a way that low 16 bits
-	 * correspond to engine event _sample_ _type_ (I915_SAMPLE_QUEUED is
-	 * bit 0), and higher bits correspond to other events (for instance
-	 * I915_PMU_ACTUAL_FREQUENCY is bit 16 etc).
+	 * Each engine event sampler type and event listed in enum
+	 * i915_pmu_tracked_events gets a bit in this field.
 	 *
-	 * In other words, low 16 bits are not per engine but per engine
-	 * sampler type, while the upper bits are directly mapped to other
-	 * event types.
+	 * Low bits are engine samplers and other events continue from there.
 	 */
-	u64 enable;
+	u32 enable;
 
 	/**
 	 * @timer_last:
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index fa1f3d62f9a6..6edcb2b6c708 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -178,7 +178,7 @@ enum drm_i915_pmu_engine_sample {
 #define I915_PMU_INTERRUPTS		__I915_PMU_OTHER(2)
 #define I915_PMU_RC6_RESIDENCY		__I915_PMU_OTHER(3)
 
-#define I915_PMU_LAST I915_PMU_RC6_RESIDENCY
+#define I915_PMU_LAST /* Deprecated - do not use */ I915_PMU_RC6_RESIDENCY
 
 /* Each region is a minimum of 16k, and there are at most 255 of them.
  */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
