Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CED7013D3
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 03:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED5810E714;
	Sat, 13 May 2023 01:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B74C310E08F
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 01:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683942949; x=1715478949;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3+93WRwHTTVau2X2vTsKrl4S1s+RRBmZpfmVxoM4PoQ=;
 b=ia2jykjxDdi3jJLiPLQQJOOTc1n5fiH2qhOng3FRoMpkQz9F6eaZajCR
 nCsalY1nmQVZT9TT5tFOEzMau9/EJmDeFX4NsUe2/7Rs5KE2WFaqR8Dy4
 rB5CkO7Vxv8xkd+XwcABpJV24zQTxcDD/Igjj7/r9vfV+07tcZs6Wjf2U
 qFu/V+XgGVD09uUYi1NP4IY+NejV3y++M4/7g3qeWW8q0xHCauPZS0xKV
 k77+j31U6csDxIBXNL003XuMtUmJYmrF7bGGSCm4qfqHfArDKlbORbWW4
 pzWDa7XXpp8uA/Jxn53RxLtdiNCrwSWesVB6YPUPDqp5NtE5p7R3JIOxY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="354054424"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="354054424"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 18:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="731017023"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="731017023"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 18:55:48 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Fri, 12 May 2023 18:55:44 -0700
Message-Id: <20230513015545.2807282-6-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230513015545.2807282-1-umesh.nerlige.ramappa@intel.com>
References: <20230513015545.2807282-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/pmu: Prepare for multi-tile
 non-engine counters
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

Reserve some bits in the counter config namespace which will carry the
tile id and prepare the code to handle this.

No per tile counters have been added yet.

v2:
- Fix checkpatch issues
- Use 4 bits for gt id in non-engine counters. Drop FIXME.
- Set MAX GTs to 4. Drop FIXME.

v3: (Ashutosh, Tvrtko)
- Drop BUG_ON that would never fire
- Make enable u64
- Pull in some code from next patch

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 148 +++++++++++++++++++++++---------
 drivers/gpu/drm/i915/i915_pmu.h |  11 ++-
 include/uapi/drm/i915_drm.h     |  17 +++-
 3 files changed, 129 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 725b01b00775..b3dd9e51c5cc 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -56,11 +56,21 @@ static bool is_engine_config(u64 config)
 	return config < __I915_PMU_OTHER(0);
 }
 
+static unsigned int config_gt_id(const u64 config)
+{
+	return config >> __I915_PMU_GT_SHIFT;
+}
+
+static u64 config_counter(const u64 config)
+{
+	return config & ~(~0ULL << __I915_PMU_GT_SHIFT);
+}
+
 static unsigned int other_bit(const u64 config)
 {
 	unsigned int val;
 
-	switch (config) {
+	switch (config_counter(config)) {
 	case I915_PMU_ACTUAL_FREQUENCY:
 		val =  __I915_PMU_ACTUAL_FREQUENCY_ENABLED;
 		break;
@@ -78,7 +88,9 @@ static unsigned int other_bit(const u64 config)
 		return -1;
 	}
 
-	return I915_ENGINE_SAMPLE_COUNT + val;
+	return I915_ENGINE_SAMPLE_COUNT +
+	       config_gt_id(config) * __I915_PMU_TRACKED_EVENT_COUNT +
+	       val;
 }
 
 static unsigned int config_bit(const u64 config)
@@ -104,10 +116,22 @@ static unsigned int event_bit(struct perf_event *event)
 	return config_bit(event->attr.config);
 }
 
+static u64 frequency_enabled_mask(void)
+{
+	unsigned int i;
+	u64 mask = 0;
+
+	for (i = 0; i < I915_PMU_MAX_GTS; i++)
+		mask |= config_mask(__I915_PMU_ACTUAL_FREQUENCY(i)) |
+			config_mask(__I915_PMU_REQUESTED_FREQUENCY(i));
+
+	return mask;
+}
+
 static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
 {
 	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
-	u32 enable;
+	u64 enable;
 
 	/*
 	 * Only some counters need the sampling timer.
@@ -120,9 +144,7 @@ static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
 	 * Mask out all the ones which do not need the timer, or in
 	 * other words keep all the ones that could need the timer.
 	 */
-	enable &= config_mask(I915_PMU_ACTUAL_FREQUENCY) |
-		  config_mask(I915_PMU_REQUESTED_FREQUENCY) |
-		  ENGINE_SAMPLE_MASK;
+	enable &= frequency_enabled_mask() | ENGINE_SAMPLE_MASK;
 
 	/*
 	 * When the GPU is idle per-engine counters do not need to be
@@ -164,9 +186,37 @@ static inline s64 ktime_since_raw(const ktime_t kt)
 	return ktime_to_ns(ktime_sub(ktime_get_raw(), kt));
 }
 
+static unsigned int
+__sample_idx(struct i915_pmu *pmu, unsigned int gt_id, int sample)
+{
+	unsigned int idx = gt_id * __I915_NUM_PMU_SAMPLERS + sample;
+
+	GEM_BUG_ON(idx >= ARRAY_SIZE(pmu->sample));
+
+	return idx;
+}
+
+static u64 read_sample(struct i915_pmu *pmu, unsigned int gt_id, int sample)
+{
+	return pmu->sample[__sample_idx(pmu, gt_id, sample)].cur;
+}
+
+static void
+store_sample(struct i915_pmu *pmu, unsigned int gt_id, int sample, u64 val)
+{
+	pmu->sample[__sample_idx(pmu, gt_id, sample)].cur = val;
+}
+
+static void
+add_sample_mult(struct i915_pmu *pmu, unsigned int gt_id, int sample, u32 val, u32 mul)
+{
+	pmu->sample[__sample_idx(pmu, gt_id, sample)].cur += mul_u32_u32(val, mul);
+}
+
 static u64 get_rc6(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
+	const unsigned int gt_id = gt->info.id;
 	struct i915_pmu *pmu = &i915->pmu;
 	unsigned long flags;
 	bool awake = false;
@@ -181,7 +231,7 @@ static u64 get_rc6(struct intel_gt *gt)
 	spin_lock_irqsave(&pmu->lock, flags);
 
 	if (awake) {
-		pmu->sample[__I915_SAMPLE_RC6].cur = val;
+		store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
 	} else {
 		/*
 		 * We think we are runtime suspended.
@@ -190,14 +240,14 @@ static u64 get_rc6(struct intel_gt *gt)
 		 * on top of the last known real value, as the approximated RC6
 		 * counter value.
 		 */
-		val = ktime_since_raw(pmu->sleep_last);
-		val += pmu->sample[__I915_SAMPLE_RC6].cur;
+		val = ktime_since_raw(pmu->sleep_last[gt_id]);
+		val += read_sample(pmu, gt_id, __I915_SAMPLE_RC6);
 	}
 
-	if (val < pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur)
-		val = pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur;
+	if (val < read_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED))
+		val = read_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED);
 	else
-		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur = val;
+		store_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED, val);
 
 	spin_unlock_irqrestore(&pmu->lock, flags);
 
@@ -207,13 +257,20 @@ static u64 get_rc6(struct intel_gt *gt)
 static void init_rc6(struct i915_pmu *pmu)
 {
 	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
-	intel_wakeref_t wakeref;
+	struct intel_gt *gt;
+	unsigned int i;
+
+	for_each_gt(gt, i915, i) {
+		intel_wakeref_t wakeref;
+
+		with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
+			u64 val = __get_rc6(gt);
 
-	with_intel_runtime_pm(to_gt(i915)->uncore->rpm, wakeref) {
-		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(to_gt(i915));
-		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur =
-					pmu->sample[__I915_SAMPLE_RC6].cur;
-		pmu->sleep_last = ktime_get_raw();
+			store_sample(pmu, i, __I915_SAMPLE_RC6, val);
+			store_sample(pmu, i, __I915_SAMPLE_RC6_LAST_REPORTED,
+				     val);
+			pmu->sleep_last[i] = ktime_get_raw();
+		}
 	}
 }
 
@@ -221,8 +278,8 @@ static void park_rc6(struct intel_gt *gt)
 {
 	struct i915_pmu *pmu = &gt->i915->pmu;
 
-	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(gt);
-	pmu->sleep_last = ktime_get_raw();
+	store_sample(pmu, gt->info.id, __I915_SAMPLE_RC6, __get_rc6(gt));
+	pmu->sleep_last[gt->info.id] = ktime_get_raw();
 }
 
 static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
@@ -362,34 +419,30 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
 	}
 }
 
-static void
-add_sample_mult(struct i915_pmu_sample *sample, u32 val, u32 mul)
-{
-	sample->cur += mul_u32_u32(val, mul);
-}
-
-static bool frequency_sampling_enabled(struct i915_pmu *pmu)
+static bool
+frequency_sampling_enabled(struct i915_pmu *pmu, unsigned int gt)
 {
 	return pmu->enable &
-	       (config_mask(I915_PMU_ACTUAL_FREQUENCY) |
-		config_mask(I915_PMU_REQUESTED_FREQUENCY));
+	       (config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt)) |
+		config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt)));
 }
 
 static void
 frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 {
 	struct drm_i915_private *i915 = gt->i915;
+	const unsigned int gt_id = gt->info.id;
 	struct i915_pmu *pmu = &i915->pmu;
 	struct intel_rps *rps = &gt->rps;
 
-	if (!frequency_sampling_enabled(pmu))
+	if (!frequency_sampling_enabled(pmu, gt_id))
 		return;
 
 	/* Report 0/0 (actual/requested) frequency while parked. */
 	if (!intel_gt_pm_get_if_awake(gt))
 		return;
 
-	if (pmu->enable & config_mask(I915_PMU_ACTUAL_FREQUENCY)) {
+	if (pmu->enable & config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt_id))) {
 		u32 val;
 
 		/*
@@ -405,12 +458,12 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 		if (!val)
 			val = intel_gpu_freq(rps, rps->cur_freq);
 
-		add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_ACT],
+		add_sample_mult(pmu, gt_id, __I915_SAMPLE_FREQ_ACT,
 				val, period_ns / 1000);
 	}
 
-	if (pmu->enable & config_mask(I915_PMU_REQUESTED_FREQUENCY)) {
-		add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_REQ],
+	if (pmu->enable & config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt_id))) {
+		add_sample_mult(pmu, gt_id, __I915_SAMPLE_FREQ_REQ,
 				intel_rps_get_requested_frequency(rps),
 				period_ns / 1000);
 	}
@@ -444,9 +497,7 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 
 	for_each_gt(gt, i915, i) {
 		engines_sample(gt, period_ns);
-
-		if (i == 0) /* FIXME */
-			frequency_sample(gt, period_ns);
+		frequency_sample(gt, period_ns);
 	}
 
 	hrtimer_forward(hrtimer, now, ns_to_ktime(PERIOD));
@@ -488,7 +539,13 @@ config_status(struct drm_i915_private *i915, u64 config)
 {
 	struct intel_gt *gt = to_gt(i915);
 
-	switch (config) {
+	unsigned int gt_id = config_gt_id(config);
+	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
+
+	if (gt_id > max_gt_id)
+		return -ENOENT;
+
+	switch (config_counter(config)) {
 	case I915_PMU_ACTUAL_FREQUENCY:
 		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 			/* Requires a mutex for sampling! */
@@ -499,6 +556,8 @@ config_status(struct drm_i915_private *i915, u64 config)
 			return -ENODEV;
 		break;
 	case I915_PMU_INTERRUPTS:
+		if (gt_id)
+			return -ENOENT;
 		break;
 	case I915_PMU_RC6_RESIDENCY:
 		if (!gt->rc6.supported)
@@ -596,22 +655,27 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
 			val = engine->pmu.sample[sample].cur;
 		}
 	} else {
-		switch (event->attr.config) {
+		const unsigned int gt_id = config_gt_id(event->attr.config);
+		const u64 config = config_counter(event->attr.config);
+
+		switch (config) {
 		case I915_PMU_ACTUAL_FREQUENCY:
 			val =
-			   div_u64(pmu->sample[__I915_SAMPLE_FREQ_ACT].cur,
+			   div_u64(read_sample(pmu, gt_id,
+					       __I915_SAMPLE_FREQ_ACT),
 				   USEC_PER_SEC /* to MHz */);
 			break;
 		case I915_PMU_REQUESTED_FREQUENCY:
 			val =
-			   div_u64(pmu->sample[__I915_SAMPLE_FREQ_REQ].cur,
+			   div_u64(read_sample(pmu, gt_id,
+					       __I915_SAMPLE_FREQ_REQ),
 				   USEC_PER_SEC /* to MHz */);
 			break;
 		case I915_PMU_INTERRUPTS:
 			val = READ_ONCE(pmu->irq_count);
 			break;
 		case I915_PMU_RC6_RESIDENCY:
-			val = get_rc6(to_gt(i915));
+			val = get_rc6(i915->gt[gt_id]);
 			break;
 		case I915_PMU_SOFTWARE_GT_AWAKE_TIME:
 			val = ktime_to_ns(intel_gt_get_awake_time(to_gt(i915)));
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 3a811266ac6a..ea2d24ef5664 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -38,13 +38,16 @@ enum {
 	__I915_NUM_PMU_SAMPLERS
 };
 
+#define I915_PMU_MAX_GTS 4
+
 /*
  * How many different events we track in the global PMU mask.
  *
  * It is also used to know to needed number of event reference counters.
  */
 #define I915_PMU_MASK_BITS \
-	(I915_ENGINE_SAMPLE_COUNT + __I915_PMU_TRACKED_EVENT_COUNT)
+	(I915_ENGINE_SAMPLE_COUNT + \
+	 I915_PMU_MAX_GTS * __I915_PMU_TRACKED_EVENT_COUNT)
 
 #define I915_ENGINE_SAMPLE_COUNT (I915_SAMPLE_SEMA + 1)
 
@@ -95,7 +98,7 @@ struct i915_pmu {
 	 *
 	 * Low bits are engine samplers and other events continue from there.
 	 */
-	u32 enable;
+	u64 enable;
 
 	/**
 	 * @timer_last:
@@ -124,11 +127,11 @@ struct i915_pmu {
 	 * Only global counters are held here, while the per-engine ones are in
 	 * struct intel_engine_cs.
 	 */
-	struct i915_pmu_sample sample[__I915_NUM_PMU_SAMPLERS];
+	struct i915_pmu_sample sample[I915_PMU_MAX_GTS * __I915_NUM_PMU_SAMPLERS];
 	/**
 	 * @sleep_last: Last time GT parked for RC6 estimation.
 	 */
-	ktime_t sleep_last;
+	ktime_t sleep_last[I915_PMU_MAX_GTS];
 	/**
 	 * @irq_count: Number of interrupts
 	 *
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index dba7c5a5b25e..d5ac1fdeb2b1 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -280,7 +280,16 @@ enum drm_i915_pmu_engine_sample {
 #define I915_PMU_ENGINE_SEMA(class, instance) \
 	__I915_PMU_ENGINE(class, instance, I915_SAMPLE_SEMA)
 
-#define __I915_PMU_OTHER(x) (__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x))
+/*
+ * Top 4 bits of every non-engine counter are GT id.
+ */
+#define __I915_PMU_GT_SHIFT (60)
+
+#define ___I915_PMU_OTHER(gt, x) \
+	(((__u64)__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x)) | \
+	((__u64)(gt) << __I915_PMU_GT_SHIFT))
+
+#define __I915_PMU_OTHER(x) ___I915_PMU_OTHER(0, x)
 
 #define I915_PMU_ACTUAL_FREQUENCY	__I915_PMU_OTHER(0)
 #define I915_PMU_REQUESTED_FREQUENCY	__I915_PMU_OTHER(1)
@@ -290,6 +299,12 @@ enum drm_i915_pmu_engine_sample {
 
 #define I915_PMU_LAST /* Deprecated - do not use */ I915_PMU_RC6_RESIDENCY
 
+#define __I915_PMU_ACTUAL_FREQUENCY(gt)		___I915_PMU_OTHER(gt, 0)
+#define __I915_PMU_REQUESTED_FREQUENCY(gt)	___I915_PMU_OTHER(gt, 1)
+#define __I915_PMU_INTERRUPTS(gt)		___I915_PMU_OTHER(gt, 2)
+#define __I915_PMU_RC6_RESIDENCY(gt)		___I915_PMU_OTHER(gt, 3)
+#define __I915_PMU_SOFTWARE_GT_AWAKE_TIME(gt)	___I915_PMU_OTHER(gt, 4)
+
 /* Each region is a minimum of 16k, and there are at most 255 of them.
  */
 #define I915_NR_TEX_REGIONS 255	/* table size 2k - maximum due to use
-- 
2.36.1

