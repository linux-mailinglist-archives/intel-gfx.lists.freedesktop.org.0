Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A40A6CF850
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 02:41:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F01F10ECAC;
	Thu, 30 Mar 2023 00:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73DA910ECA2
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 00:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680136865; x=1711672865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UjbXSdzSG9mpHdVpUCXOsCof6Z27giUadqbQbdH4IR0=;
 b=JyiVbEU3WnjuTKdC/7dJJTNS8E2qXJyXN5k+H93h4pEOTwXS/nYXTqrr
 0RWrRzaPgiPFuwyBSuFDJ0iQxvy+d8/4b2B7KalIKk5lCaDUy51iteqXH
 f8p01iSFvIbXcG9jcc8uRSfA0r/WfcKh6RZcLpBMjLP4Yyxrf5JbOGT4Q
 1gxkHUlqBhp8sukcWEUJ493aC2VEJUZ6ZBWLnNY4/tOiSbN1Pfe3sobfn
 PolUaHkNerAPzqw/1RHqkaeAzCU9Z7nV6nlMQ4qscwkQZyleCqjXjmSTL
 PKNYB7ORZ4TNt/fAnrOrhdBN1POEUtSE+CeICqvc5jZ2jWN8kOAGzQ4wm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="427310378"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="427310378"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="634668690"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="634668690"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 17:41:03 -0700
Message-Id: <20230330004103.1295413-10-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/pmu: Enable legacy PMU events for
 MTL
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

MTL introduces separate GTs for render and media. This complicates the
definition of frequency and rc6 counters for the GPU as a whole since
each GT has an independent counter. The best way to support this change
is to deprecate the GPU-specific counters and create GT-specific
counters, however that just breaks ABI. Since perf tools and scripts may
be decentralized with probably many users, it's hard to deprecate the
legacy counters and have all the users on board with that.

Re-introduce the legacy counters and support them as min/max of
GT-specific counters as necessary to ensure backwards compatibility.

I915_PMU_ACTUAL_FREQUENCY - will show max of GT-specific counters
I915_PMU_REQUESTED_FREQUENCY - will show max of GT-specific counters
I915_PMU_INTERRUPTS - no changes since it is GPU specific on all platforms
I915_PMU_RC6_RESIDENCY - will show min of GT-specific counters
I915_PMU_SOFTWARE_GT_AWAKE_TIME - will show max of GT-specific counters

Note:
- For deeper debugging of performance issues, tools must be upgraded to
  read the GT-specific counters.
- This patch deserves to be separate from the other PMU features so that
  it can be easily dropped if legacy events are ever deprecated.
- Internal implementation relies on creating an extra entry in the
  arrays used for GT specific counters. Index 0 is empty.
  Index 1 through N are mapped to GTs 0 through N - 1.
- User interface will use GT numbers indexed from 0 to specify the GT of
  interest.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 134 +++++++++++++++++++++++++++-----
 drivers/gpu/drm/i915/i915_pmu.h |   2 +-
 include/uapi/drm/i915_drm.h     |  14 ++--
 3 files changed, 125 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 9bd9605d2662..0dc7711c3b4b 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -221,7 +221,7 @@ add_sample_mult(struct i915_pmu *pmu, unsigned int gt_id, int sample, u32 val,
 static u64 get_rc6(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
-	const unsigned int gt_id = gt->info.id;
+	const unsigned int gt_id = gt->info.id + 1;
 	struct i915_pmu *pmu = &i915->pmu;
 	unsigned long flags;
 	bool awake = false;
@@ -267,24 +267,26 @@ static void init_rc6(struct i915_pmu *pmu)
 
 	for_each_gt(gt, i915, i) {
 		intel_wakeref_t wakeref;
+		const unsigned int gt_id = i + 1;
 
 		with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
 			u64 val = __get_rc6(gt);
 
-			store_sample(pmu, i, __I915_SAMPLE_RC6, val);
-			store_sample(pmu, i, __I915_SAMPLE_RC6_LAST_REPORTED,
+			store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
+			store_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED,
 				     val);
-			pmu->sleep_last[i] = ktime_get_raw();
+			pmu->sleep_last[gt_id] = ktime_get_raw();
 		}
 	}
 }
 
 static void park_rc6(struct intel_gt *gt)
 {
+	const unsigned int gt_id = gt->info.id + 1;
 	struct i915_pmu *pmu = &gt->i915->pmu;
 
-	store_sample(pmu, gt->info.id, __I915_SAMPLE_RC6, __get_rc6(gt));
-	pmu->sleep_last[gt->info.id] = ktime_get_raw();
+	store_sample(pmu, gt_id, __I915_SAMPLE_RC6, __get_rc6(gt));
+	pmu->sleep_last[gt_id] = ktime_get_raw();
 }
 
 static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
@@ -436,18 +438,18 @@ static void
 frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 {
 	struct drm_i915_private *i915 = gt->i915;
-	const unsigned int gt_id = gt->info.id;
+	const unsigned int gt_id = gt->info.id + 1;
 	struct i915_pmu *pmu = &i915->pmu;
 	struct intel_rps *rps = &gt->rps;
 
-	if (!frequency_sampling_enabled(pmu, gt_id))
+	if (!frequency_sampling_enabled(pmu, gt->info.id))
 		return;
 
 	/* Report 0/0 (actual/requested) frequency while parked. */
 	if (!intel_gt_pm_get_if_awake(gt))
 		return;
 
-	if (pmu->enable & config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt_id))) {
+	if (pmu->enable & config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt->info.id))) {
 		u32 val;
 
 		/*
@@ -467,7 +469,7 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 				val, period_ns / 1000);
 	}
 
-	if (pmu->enable & config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt_id))) {
+	if (pmu->enable & config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt->info.id))) {
 		add_sample_mult(pmu, gt_id, __I915_SAMPLE_FREQ_REQ,
 				intel_rps_get_requested_frequency(rps),
 				period_ns / 1000);
@@ -545,14 +547,15 @@ engine_event_status(struct intel_engine_cs *engine,
 static int
 config_status(struct drm_i915_private *i915, u64 config)
 {
-	struct intel_gt *gt = to_gt(i915);
-
 	unsigned int gt_id = config_gt_id(config);
-	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
+	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 2 : 1;
+	struct intel_gt *gt;
 
 	if (gt_id > max_gt_id)
 		return -ENOENT;
 
+	gt = !gt_id ? to_gt(i915) : i915->gt[gt_id - 1];
+
 	switch (config_counter(config)) {
 	case I915_PMU_ACTUAL_FREQUENCY:
 		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
@@ -673,23 +676,58 @@ static u64 __i915_pmu_event_read_other(struct perf_event *event)
 	const unsigned int gt_id = config_gt_id(event->attr.config);
 	const u64 config = config_counter(event->attr.config);
 	struct i915_pmu *pmu = &i915->pmu;
+	struct intel_gt *gt;
 	u64 val = 0;
+	int i;
 
 	switch (config) {
 	case I915_PMU_ACTUAL_FREQUENCY:
-		val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_ACT);
+		if (gt_id)
+			return read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_ACT);
+
+		if (!HAS_EXTRA_GT_LIST(i915))
+			return read_sample_us(pmu, 1, __I915_SAMPLE_FREQ_ACT);
+
+		for_each_gt(gt, i915, i)
+			val = max(val, read_sample_us(pmu, i + 1, __I915_SAMPLE_FREQ_ACT));
+
 		break;
 	case I915_PMU_REQUESTED_FREQUENCY:
-		val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_REQ);
+		if (gt_id)
+			return read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_REQ);
+
+		if (!HAS_EXTRA_GT_LIST(i915))
+			return read_sample_us(pmu, 1, __I915_SAMPLE_FREQ_REQ);
+
+		for_each_gt(gt, i915, i)
+			val = max(val, read_sample_us(pmu, i + 1, __I915_SAMPLE_FREQ_REQ));
+
 		break;
 	case I915_PMU_INTERRUPTS:
 		val = READ_ONCE(pmu->irq_count);
 		break;
 	case I915_PMU_RC6_RESIDENCY:
-		val = get_rc6(i915->gt[gt_id]);
+		if (gt_id)
+			return get_rc6(i915->gt[gt_id - 1]);
+
+		if (!HAS_EXTRA_GT_LIST(i915))
+			return get_rc6(i915->gt[0]);
+
+		val = U64_MAX;
+		for_each_gt(gt, i915, i)
+			val = min(val, get_rc6(gt));
+
 		break;
 	case I915_PMU_SOFTWARE_GT_AWAKE_TIME:
-		val = ktime_to_ns(intel_gt_get_awake_time(to_gt(i915)));
+		if (gt_id)
+			return ktime_to_ns(intel_gt_get_awake_time(i915->gt[gt_id - 1]));
+
+		if (!HAS_EXTRA_GT_LIST(i915))
+			return ktime_to_ns(intel_gt_get_awake_time(i915->gt[0]));
+
+		val = 0;
+		for_each_gt(gt, i915, i)
+			val = max((s64)val, ktime_to_ns(intel_gt_get_awake_time(gt)));
 		break;
 	}
 
@@ -728,11 +766,14 @@ static void i915_pmu_event_read(struct perf_event *event)
 
 static void i915_pmu_enable(struct perf_event *event)
 {
+	const unsigned int gt_id = config_gt_id(event->attr.config);
 	struct drm_i915_private *i915 =
 		container_of(event->pmu, typeof(*i915), pmu.base);
 	struct i915_pmu *pmu = &i915->pmu;
+	struct intel_gt *gt;
 	unsigned long flags;
 	unsigned int bit;
+	u64 i;
 
 	bit = event_bit(event);
 	if (bit == -1)
@@ -745,12 +786,42 @@ static void i915_pmu_enable(struct perf_event *event)
 	 * the event reference counter.
 	 */
 	BUILD_BUG_ON(ARRAY_SIZE(pmu->enable_count) != I915_PMU_MASK_BITS);
+	BUILD_BUG_ON(BITS_PER_TYPE(pmu->enable) < I915_PMU_MASK_BITS);
 	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
 	GEM_BUG_ON(pmu->enable_count[bit] == ~0);
 
 	pmu->enable |= BIT_ULL(bit);
 	pmu->enable_count[bit]++;
 
+	/*
+	 * The arrays that i915_pmu maintains are now indexed as
+	 *
+	 * 0 - aggregate events (a.k.a !gt_id)
+	 * 1 - gt0
+	 * 2 - gt1
+	 *
+	 * The same logic applies to event_bit masks. The first set of mask are
+	 * for aggregate, followed by gt0 and gt1 masks. The idea here is to
+	 * enable the event on all gts if the aggregate event bit is set. This
+	 * applies only to the non-engine-events.
+	 */
+	if (!gt_id && !is_engine_event(event)) {
+		for_each_gt(gt, i915, i) {
+			u64 counter = config_counter(event->attr.config);
+			u64 config = ((i + 1) << __I915_PMU_GT_SHIFT) | counter;
+			unsigned int bit = config_bit(config);
+
+			if (bit == -1)
+				continue;
+
+			GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
+			GEM_BUG_ON(pmu->enable_count[bit] == ~0);
+
+			pmu->enable |= BIT_ULL(bit);
+			pmu->enable_count[bit]++;
+		}
+	}
+
 	/*
 	 * Start the sampling timer if needed and not already enabled.
 	 */
@@ -793,6 +864,7 @@ static void i915_pmu_enable(struct perf_event *event)
 
 static void i915_pmu_disable(struct perf_event *event)
 {
+	const unsigned int gt_id = config_gt_id(event->attr.config);
 	struct drm_i915_private *i915 =
 		container_of(event->pmu, typeof(*i915), pmu.base);
 	unsigned int bit = event_bit(event);
@@ -822,6 +894,26 @@ static void i915_pmu_disable(struct perf_event *event)
 		 */
 		if (--engine->pmu.enable_count[sample] == 0)
 			engine->pmu.enable &= ~BIT(sample);
+	} else if (!gt_id) {
+		struct intel_gt *gt;
+		u64 i;
+
+		for_each_gt(gt, i915, i) {
+			u64 counter = config_counter(event->attr.config);
+			u64 config = ((i + 1) << __I915_PMU_GT_SHIFT) | counter;
+			unsigned int bit = config_bit(config);
+
+			if (bit == -1)
+				continue;
+
+			GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
+			GEM_BUG_ON(pmu->enable_count[bit] == 0);
+
+			if (--pmu->enable_count[bit] == 0) {
+				pmu->enable &= ~BIT_ULL(bit);
+				pmu->timer_enabled &= pmu_needs_timer(pmu, true);
+			}
+		}
 	}
 
 	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
@@ -1002,7 +1094,11 @@ create_event_attributes(struct i915_pmu *pmu)
 		const char *name;
 		const char *unit;
 	} global_events[] = {
+		__event(0, "actual-frequency", "M"),
+		__event(1, "requested-frequency", "M"),
 		__event(2, "interrupts", NULL),
+		__event(3, "rc6-residency", "ns"),
+		__event(4, "software-gt-awake-time", "ns"),
 	};
 	static const struct {
 		enum drm_i915_pmu_engine_sample sample;
@@ -1024,7 +1120,7 @@ create_event_attributes(struct i915_pmu *pmu)
 	/* per gt counters */
 	for_each_gt(gt, i915, j) {
 		for (i = 0; i < ARRAY_SIZE(events); i++) {
-			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
+			u64 config = ___I915_PMU_OTHER(j + 1, events[i].counter);
 
 			if (!config_status(i915, config))
 				count++;
@@ -1070,7 +1166,7 @@ create_event_attributes(struct i915_pmu *pmu)
 	/* per gt counters */
 	for_each_gt(gt, i915, j) {
 		for (i = 0; i < ARRAY_SIZE(events); i++) {
-			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
+			u64 config = ___I915_PMU_OTHER(j + 1, events[i].counter);
 			char *str;
 
 			if (config_status(i915, config))
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index a708e44a227e..a4cc1eb218fc 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -38,7 +38,7 @@ enum {
 	__I915_NUM_PMU_SAMPLERS
 };
 
-#define I915_PMU_MAX_GTS (4) /* FIXME */
+#define I915_PMU_MAX_GTS (4 + 1) /* FIXME */
 
 /**
  * How many different events we track in the global PMU mask.
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index bbab7f3dbeb4..18794c30027f 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -290,6 +290,7 @@ enum drm_i915_pmu_engine_sample {
 	(((__u64)__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x)) | \
 	((__u64)(gt) << __I915_PMU_GT_SHIFT))
 
+/* Aggregate from all gts */
 #define __I915_PMU_OTHER(x) ___I915_PMU_OTHER(0, x)
 
 #define I915_PMU_ACTUAL_FREQUENCY	__I915_PMU_OTHER(0)
@@ -300,11 +301,14 @@ enum drm_i915_pmu_engine_sample {
 
 #define I915_PMU_LAST /* Deprecated - do not use */ I915_PMU_RC6_RESIDENCY
 
-#define __I915_PMU_ACTUAL_FREQUENCY(gt)		___I915_PMU_OTHER(gt, 0)
-#define __I915_PMU_REQUESTED_FREQUENCY(gt)	___I915_PMU_OTHER(gt, 1)
-#define __I915_PMU_INTERRUPTS(gt)		___I915_PMU_OTHER(gt, 2)
-#define __I915_PMU_RC6_RESIDENCY(gt)		___I915_PMU_OTHER(gt, 3)
-#define __I915_PMU_SOFTWARE_GT_AWAKE_TIME(gt)	___I915_PMU_OTHER(gt, 4)
+/* GT specific counters */
+#define ____I915_PMU_OTHER(gt, x) ___I915_PMU_OTHER(((gt) + 1), x)
+
+#define __I915_PMU_ACTUAL_FREQUENCY(gt)		____I915_PMU_OTHER(gt, 0)
+#define __I915_PMU_REQUESTED_FREQUENCY(gt)	____I915_PMU_OTHER(gt, 1)
+#define __I915_PMU_INTERRUPTS(gt)		____I915_PMU_OTHER(gt, 2)
+#define __I915_PMU_RC6_RESIDENCY(gt)		____I915_PMU_OTHER(gt, 3)
+#define __I915_PMU_SOFTWARE_GT_AWAKE_TIME(gt)	____I915_PMU_OTHER(gt, 4)
 
 /* Each region is a minimum of 16k, and there are at most 255 of them.
  */
-- 
2.36.1

