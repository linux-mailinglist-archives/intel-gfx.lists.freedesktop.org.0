Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFDF6CF852
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 02:41:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3014D10ECCD;
	Thu, 30 Mar 2023 00:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1376310EC94
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 00:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680136865; x=1711672865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TplmR7BiFldWX+J5NStJ5yy09BcNKireEkoAw1wEEsI=;
 b=FDgViSGeTlvEZ+JZB0PmPEz4ur7LSW4JvjrpKf1T+5WYiDKLNjVesPBZ
 MdwnQddinhcVOuU/TLmfc9rrK1RTD48iHu6E7aPzElOWJiiFpJ4qVhVYL
 4InwqdXTtYkp/DnzTbD9vCg0kHN0RK438Rj+1313Y1KrmNwNXH66CyUMs
 pFr1Kf1eVy/jUv8ma4/lTxv2G4WgmqqulmneBKJtu4D7IJ8ysO9c47Qat
 KR/MewYvS6i1J2QStQtvpVTC4qnCHv0btOWznRPb92M/VGQ6ab5HkQ4gy
 JRRxboFIxON6vxqeR+Mx700qU7Lr4zGUSEqCU8BGqnpCjYjfxBAlIOoaW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="427310375"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="427310375"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="634668687"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="634668687"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 17:41:02 -0700
Message-Id: <20230330004103.1295413-9-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/pmu: Split reading engine and
 other events into helpers
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

Split the event reading function into engine and other helpers.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 93 ++++++++++++++++++---------------
 1 file changed, 52 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 40ce1dc00067..9bd9605d2662 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -641,58 +641,69 @@ static u64 read_sample_us(struct i915_pmu *pmu, unsigned int gt_id, int sample)
 	return div_u64(read_sample(pmu, gt_id, sample), USEC_PER_SEC);
 }
 
-static u64 __i915_pmu_event_read(struct perf_event *event)
+static u64 __i915_pmu_event_read_engine(struct perf_event *event)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
-	struct i915_pmu *pmu = &i915->pmu;
+	struct drm_i915_private *i915 = container_of(event->pmu, typeof(*i915), pmu.base);
+	u8 sample = engine_event_sample(event);
+	struct intel_engine_cs *engine;
 	u64 val = 0;
 
-	if (is_engine_event(event)) {
-		u8 sample = engine_event_sample(event);
-		struct intel_engine_cs *engine;
-
-		engine = intel_engine_lookup_user(i915,
-						  engine_event_class(event),
-						  engine_event_instance(event));
+	engine = intel_engine_lookup_user(i915,
+					  engine_event_class(event),
+					  engine_event_instance(event));
 
-		if (drm_WARN_ON_ONCE(&i915->drm, !engine)) {
-			/* Do nothing */
-		} else if (sample == I915_SAMPLE_BUSY &&
-			   intel_engine_supports_stats(engine)) {
-			ktime_t unused;
+	if (drm_WARN_ON_ONCE(&i915->drm, !engine)) {
+		/* Do nothing */
+	} else if (sample == I915_SAMPLE_BUSY &&
+		   intel_engine_supports_stats(engine)) {
+		ktime_t unused;
 
-			val = ktime_to_ns(intel_engine_get_busy_time(engine,
-								     &unused));
-		} else {
-			val = engine->pmu.sample[sample].cur;
-		}
+		val = ktime_to_ns(intel_engine_get_busy_time(engine,
+							     &unused));
 	} else {
-		const unsigned int gt_id = config_gt_id(event->attr.config);
-		const u64 config = config_counter(event->attr.config);
-
-		switch (config) {
-		case I915_PMU_ACTUAL_FREQUENCY:
-			val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_ACT);
-			break;
-		case I915_PMU_REQUESTED_FREQUENCY:
-			val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_REQ);
-			break;
-		case I915_PMU_INTERRUPTS:
-			val = READ_ONCE(pmu->irq_count);
-			break;
-		case I915_PMU_RC6_RESIDENCY:
-			val = get_rc6(i915->gt[gt_id]);
-			break;
-		case I915_PMU_SOFTWARE_GT_AWAKE_TIME:
-			val = ktime_to_ns(intel_gt_get_awake_time(to_gt(i915)));
-			break;
-		}
+		val = engine->pmu.sample[sample].cur;
 	}
 
 	return val;
 }
 
+static u64 __i915_pmu_event_read_other(struct perf_event *event)
+{
+	struct drm_i915_private *i915 = container_of(event->pmu, typeof(*i915), pmu.base);
+	const unsigned int gt_id = config_gt_id(event->attr.config);
+	const u64 config = config_counter(event->attr.config);
+	struct i915_pmu *pmu = &i915->pmu;
+	u64 val = 0;
+
+	switch (config) {
+	case I915_PMU_ACTUAL_FREQUENCY:
+		val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_ACT);
+		break;
+	case I915_PMU_REQUESTED_FREQUENCY:
+		val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_REQ);
+		break;
+	case I915_PMU_INTERRUPTS:
+		val = READ_ONCE(pmu->irq_count);
+		break;
+	case I915_PMU_RC6_RESIDENCY:
+		val = get_rc6(i915->gt[gt_id]);
+		break;
+	case I915_PMU_SOFTWARE_GT_AWAKE_TIME:
+		val = ktime_to_ns(intel_gt_get_awake_time(to_gt(i915)));
+		break;
+	}
+
+	return val;
+}
+
+static u64 __i915_pmu_event_read(struct perf_event *event)
+{
+	if (is_engine_event(event))
+		return __i915_pmu_event_read_engine(event);
+	else
+		return __i915_pmu_event_read_other(event);
+}
+
 static void i915_pmu_event_read(struct perf_event *event)
 {
 	struct drm_i915_private *i915 =
-- 
2.36.1

