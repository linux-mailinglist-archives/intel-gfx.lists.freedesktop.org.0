Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72725122E7A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 15:21:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32A326E9F4;
	Tue, 17 Dec 2019 14:21:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C24A16E9F4
 for <Intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 14:21:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 06:21:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,325,1571727600"; d="scan'208";a="212586946"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.84.191])
 by fmsmga008.fm.intel.com with ESMTP; 17 Dec 2019 06:21:20 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 14:20:57 +0000
Message-Id: <20191217142057.1000-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216182032.22265-1-tvrtko.ursulin@linux.intel.com>
References: <20191216182032.22265-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/pmu: Ensure monotonic rc6
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

Avoid rc6 counter going backward in close to 0% RC6 scenarios like:

    15.005477996        114,246,613 ns   i915/rc6-residency/
    16.005876662            667,657 ns   i915/rc6-residency/
    17.006131417              7,286 ns   i915/rc6-residency/
    18.006615031 18,446,744,073,708,914,688 ns   i915/rc6-residency/
    19.007158361 18,446,744,073,709,447,168 ns   i915/rc6-residency/
    20.007806498                  0 ns   i915/rc6-residency/
    21.008227495          1,440,403 ns   i915/rc6-residency/

There are two aspects to this fix.

First is not assuming rc6 value zero means GT is asleep since that can
also mean GPU is fully busy and we do not want to enter the estimation
path in that case.

Second is ensuring monotonicity on the estimation path itself. I suspect
what is happening is with extremely rapid park/unpark cycles we get no
updates on the real rc6 and therefore have to careful not to
unconditionally trust use last known real rc6 when creating a new
estimation.

v2:
 * Simplify logic by not tracking the estimate but last reported value.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: 16ffe73c186b ("drm/i915/pmu: Use GT parked for estimating RC6 while asleep")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk> # v1
---
 drivers/gpu/drm/i915/i915_pmu.c | 73 +++++++++------------------------
 drivers/gpu/drm/i915/i915_pmu.h |  2 +-
 2 files changed, 21 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 5f2adfbf85be..c6cb77c8249b 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -144,61 +144,40 @@ static inline s64 ktime_since(const ktime_t kt)
 	return ktime_to_ns(ktime_sub(ktime_get(), kt));
 }
 
-static u64 __pmu_estimate_rc6(struct i915_pmu *pmu)
-{
-	u64 val;
-
-	/*
-	 * We think we are runtime suspended.
-	 *
-	 * Report the delta from when the device was suspended to now,
-	 * on top of the last known real value, as the approximated RC6
-	 * counter value.
-	 */
-	val = ktime_since(pmu->sleep_last);
-	val += pmu->sample[__I915_SAMPLE_RC6].cur;
-
-	pmu->sample[__I915_SAMPLE_RC6_ESTIMATED].cur = val;
-
-	return val;
-}
-
-static u64 __pmu_update_rc6(struct i915_pmu *pmu, u64 val)
-{
-	/*
-	 * If we are coming back from being runtime suspended we must
-	 * be careful not to report a larger value than returned
-	 * previously.
-	 */
-	if (val >= pmu->sample[__I915_SAMPLE_RC6_ESTIMATED].cur) {
-		pmu->sample[__I915_SAMPLE_RC6_ESTIMATED].cur = 0;
-		pmu->sample[__I915_SAMPLE_RC6].cur = val;
-	} else {
-		val = pmu->sample[__I915_SAMPLE_RC6_ESTIMATED].cur;
-	}
-
-	return val;
-}
-
 static u64 get_rc6(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	struct i915_pmu *pmu = &i915->pmu;
 	unsigned long flags;
+	bool awake = false;
 	u64 val;
 
-	val = 0;
 	if (intel_gt_pm_get_if_awake(gt)) {
 		val = __get_rc6(gt);
 		intel_gt_pm_put_async(gt);
+		awake = true;
 	}
 
 	spin_lock_irqsave(&pmu->lock, flags);
 
-	if (val)
-		val = __pmu_update_rc6(pmu, val);
+	if (awake) {
+		pmu->sample[__I915_SAMPLE_RC6].cur = val;
+	} else {
+		/*
+		 * We think we are runtime suspended.
+		 *
+		 * Report the delta from when the device was suspended to now,
+		 * on top of the last known real value, as the approximated RC6
+		 * counter value.
+		 */
+		val = ktime_since(pmu->sleep_last);
+		val += pmu->sample[__I915_SAMPLE_RC6].cur;
+	}
+
+	if (val < pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur)
+		val = pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur;
 	else
-		val = __pmu_estimate_rc6(pmu);
+		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur = val;
 
 	spin_unlock_irqrestore(&pmu->lock, flags);
 
@@ -210,20 +189,11 @@ static void park_rc6(struct drm_i915_private *i915)
 	struct i915_pmu *pmu = &i915->pmu;
 
 	if (pmu->enable & config_enabled_mask(I915_PMU_RC6_RESIDENCY))
-		__pmu_update_rc6(pmu, __get_rc6(&i915->gt));
+		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
 
 	pmu->sleep_last = ktime_get();
 }
 
-static void unpark_rc6(struct drm_i915_private *i915)
-{
-	struct i915_pmu *pmu = &i915->pmu;
-
-	/* Estimate how long we slept and accumulate that into rc6 counters */
-	if (pmu->enable & config_enabled_mask(I915_PMU_RC6_RESIDENCY))
-		__pmu_estimate_rc6(pmu);
-}
-
 #else
 
 static u64 get_rc6(struct intel_gt *gt)
@@ -232,7 +202,6 @@ static u64 get_rc6(struct intel_gt *gt)
 }
 
 static void park_rc6(struct drm_i915_private *i915) {}
-static void unpark_rc6(struct drm_i915_private *i915) {}
 
 #endif
 
@@ -281,8 +250,6 @@ void i915_pmu_gt_unparked(struct drm_i915_private *i915)
 	 */
 	__i915_pmu_maybe_start_timer(pmu);
 
-	unpark_rc6(i915);
-
 	spin_unlock_irq(&pmu->lock);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index bf52e3983631..6c1647c5daf2 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -18,7 +18,7 @@ enum {
 	__I915_SAMPLE_FREQ_ACT = 0,
 	__I915_SAMPLE_FREQ_REQ,
 	__I915_SAMPLE_RC6,
-	__I915_SAMPLE_RC6_ESTIMATED,
+	__I915_SAMPLE_RC6_LAST_REPORTED,
 	__I915_NUM_PMU_SAMPLERS
 };
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
