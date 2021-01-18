Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 423052F9C2C
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 11:07:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86D186E17C;
	Mon, 18 Jan 2021 10:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C6746E17C
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 10:07:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23626525-1500050 
 for multiple; Mon, 18 Jan 2021 10:07:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 10:07:24 +0000
Message-Id: <20210118100724.465555-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <87lfcqobpl.fsf@intel.com>
References: <87lfcqobpl.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Don't grab wakeref when enabling
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
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
Link: https://patchwork.freedesktop.org/patch/msgid/20201214094349.3563876-1-tvrtko.ursulin@linux.intel.com
(cherry picked from commit dbe13ae1d6abaab417edf3c37601c6a56594a4cd)
---
 drivers/gpu/drm/i915/i915_pmu.c | 30 ++++++++++++++++--------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index d76685ce0399..9856479b56d8 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -184,13 +184,24 @@ static u64 get_rc6(struct intel_gt *gt)
 	return val;
 }
 
-static void park_rc6(struct drm_i915_private *i915)
+static void init_rc6(struct i915_pmu *pmu)
 {
-	struct i915_pmu *pmu = &i915->pmu;
+	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
+	intel_wakeref_t wakeref;
 
-	if (pmu->enable & config_enabled_mask(I915_PMU_RC6_RESIDENCY))
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
 
@@ -201,6 +212,7 @@ static u64 get_rc6(struct intel_gt *gt)
 	return __get_rc6(gt);
 }
 
+static void init_rc6(struct i915_pmu *pmu) { }
 static void park_rc6(struct drm_i915_private *i915) {}
 
 #endif
@@ -612,10 +624,8 @@ static void i915_pmu_enable(struct perf_event *event)
 		container_of(event->pmu, typeof(*i915), pmu.base);
 	unsigned int bit = event_enabled_bit(event);
 	struct i915_pmu *pmu = &i915->pmu;
-	intel_wakeref_t wakeref;
 	unsigned long flags;
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 	spin_lock_irqsave(&pmu->lock, flags);
 
 	/*
@@ -626,13 +636,6 @@ static void i915_pmu_enable(struct perf_event *event)
 	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
 	GEM_BUG_ON(pmu->enable_count[bit] == ~0);
 
-	if (pmu->enable_count[bit] == 0 &&
-	    config_enabled_mask(I915_PMU_RC6_RESIDENCY) & BIT_ULL(bit)) {
-		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur = 0;
-		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
-		pmu->sleep_last = ktime_get();
-	}
-
 	pmu->enable |= BIT_ULL(bit);
 	pmu->enable_count[bit]++;
 
@@ -673,8 +676,6 @@ static void i915_pmu_enable(struct perf_event *event)
 	 * an existing non-zero value.
 	 */
 	local64_set(&event->hw.prev_count, __i915_pmu_event_read(event));
-
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
 static void i915_pmu_disable(struct perf_event *event)
@@ -1130,6 +1131,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 	pmu->timer.function = i915_sample;
 	pmu->cpuhp.cpu = -1;
+	init_rc6(pmu);
 
 	if (!is_igp(i915)) {
 		pmu->name = kasprintf(GFP_KERNEL,
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
