Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F30A82D956B
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 10:44:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A4866E131;
	Mon, 14 Dec 2020 09:44:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E8A76E131
 for <Intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 09:44:19 +0000 (UTC)
IronPort-SDR: 67PNsqXlG0QiWd2dxXy+ZNROyRTMd7rBgk6fs+jDO+l2i8jRaKEB8iaUqTVEhG/IDAsnAvjKuy
 41DWuEbDu3mw==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="171171405"
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="171171405"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 01:44:18 -0800
IronPort-SDR: oC6Z+sF8F/XBQ0+bKrQ+kZJRRNL8k38bYG5bUvO+7mXYBfMjo2/dl3fQm6PyjMNk4oPuJAUXyp
 o9OJJfW+hKAQ==
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="411100416"
Received: from yhorwitz-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.202.117])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 01:44:15 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 09:43:47 +0000
Message-Id: <20201214094349.3563876-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915/pmu: Don't grab wakeref when enabling
 events
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

Chris found a CI report which points out calling intel_runtime_pm_get from
inside i915_pmu_enable hook is not allowed since it can be invoked from
hard irq context. This is something we knew but forgot, so lets fix it
once again.

We do this by syncing the internal book keeping with hardware rc6 counter
on driver load.

v2:
 * Always sync on parking and fully sync on init.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: f4e9894b6952 ("drm/i915/pmu: Correct the rc6 offset upon enabling")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_pmu.c | 39 ++++++++++++++-------------------
 1 file changed, 16 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 97bb4aaa5236..204253c2f2c0 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -103,11 +103,6 @@ static unsigned int event_bit(struct perf_event *event)
 	return config_bit(event->attr.config);
 }
 
-static bool event_read_needs_wakeref(const struct perf_event *event)
-{
-	return event->attr.config == I915_PMU_RC6_RESIDENCY;
-}
-
 static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
 {
 	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
@@ -213,13 +208,24 @@ static u64 get_rc6(struct intel_gt *gt)
 	return val;
 }
 
-static void park_rc6(struct drm_i915_private *i915)
+static void init_rc6(struct i915_pmu *pmu)
 {
-	struct i915_pmu *pmu = &i915->pmu;
+	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
+	intel_wakeref_t wakeref;
 
-	if (pmu->enable & config_mask(I915_PMU_RC6_RESIDENCY))
+	with_intel_runtime_pm(i915->gt.uncore->rpm, wakeref) {
 		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
+		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur =
+					pmu->sample[__I915_SAMPLE_RC6].cur;
+		pmu->sleep_last = ktime_get();
+	}
+}
 
+static void park_rc6(struct drm_i915_private *i915)
+{
+	struct i915_pmu *pmu = &i915->pmu;
+
+	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
 	pmu->sleep_last = ktime_get();
 }
 
@@ -230,6 +236,7 @@ static u64 get_rc6(struct intel_gt *gt)
 	return __get_rc6(gt);
 }
 
+static void init_rc6(struct i915_pmu *pmu) { }
 static void park_rc6(struct drm_i915_private *i915) {}
 
 #endif
@@ -655,15 +662,10 @@ static void i915_pmu_enable(struct perf_event *event)
 {
 	struct drm_i915_private *i915 =
 		container_of(event->pmu, typeof(*i915), pmu.base);
-	bool need_wakeref = event_read_needs_wakeref(event);
 	struct i915_pmu *pmu = &i915->pmu;
-	intel_wakeref_t wakeref = 0;
 	unsigned long flags;
 	unsigned int bit;
 
-	if (need_wakeref)
-		wakeref = intel_runtime_pm_get(&i915->runtime_pm);
-
 	bit = event_bit(event);
 	if (bit == -1)
 		goto update;
@@ -678,13 +680,6 @@ static void i915_pmu_enable(struct perf_event *event)
 	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
 	GEM_BUG_ON(pmu->enable_count[bit] == ~0);
 
-	if (pmu->enable_count[bit] == 0 &&
-	    config_mask(I915_PMU_RC6_RESIDENCY) & BIT_ULL(bit)) {
-		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur = 0;
-		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
-		pmu->sleep_last = ktime_get();
-	}
-
 	pmu->enable |= BIT_ULL(bit);
 	pmu->enable_count[bit]++;
 
@@ -726,9 +721,6 @@ static void i915_pmu_enable(struct perf_event *event)
 	 * an existing non-zero value.
 	 */
 	local64_set(&event->hw.prev_count, __i915_pmu_event_read(event));
-
-	if (wakeref)
-		intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
 static void i915_pmu_disable(struct perf_event *event)
@@ -1187,6 +1179,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 	pmu->timer.function = i915_sample;
 	pmu->cpuhp.cpu = -1;
+	init_rc6(pmu);
 
 	if (!is_igp(i915)) {
 		pmu->name = kasprintf(GFP_KERNEL,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
