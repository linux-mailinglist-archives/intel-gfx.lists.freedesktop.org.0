Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E122CE2B0
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 00:30:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9E466E0DF;
	Thu,  3 Dec 2020 23:30:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40B36E0DF
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 23:30:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23208557-1500050 
 for multiple; Thu, 03 Dec 2020 23:30:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Dec 2020 23:30:35 +0000
Message-Id: <20201203233035.1641-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201203223849.17350-1-chris@chris-wilson.co.uk>
References: <20201203223849.17350-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Stop sampling rc6 from inside
 pmu_enable
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

Since rc6 is sampling the device registers, we try to acquire the device
wakeref. However, since i915_pmu_enable may be called from hardirq, we
cannot actually wake the device up and so much find another way to
calibrate the rc6 bias.

Having thought of no ideal solution, let's just always record the latest
rc6 measurement when parking, and so we will have an accurate value
should the user start measuring during an idle period -- at the cost of
an extra bunch of forcewaked register regs on every GT park.

Fortunately, we have changed the explicit forcewake holds to immediately
release rather than incur a timer delay and so it does not noticeable
increase power consumption for light testing.

Fixes: f4e9894b6952 ("drm/i915/pmu: Correct the rc6 offset upon enabling")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 38 +--------------------------------
 1 file changed, 1 insertion(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 97bb4aaa5236..2477068fffb5 100644
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
@@ -166,8 +161,6 @@ static u64 __get_rc6(struct intel_gt *gt)
 	return val;
 }
 
-#if IS_ENABLED(CONFIG_PM)
-
 static inline s64 ktime_since(const ktime_t kt)
 {
 	return ktime_to_ns(ktime_sub(ktime_get(), kt));
@@ -217,23 +210,10 @@ static void park_rc6(struct drm_i915_private *i915)
 {
 	struct i915_pmu *pmu = &i915->pmu;
 
-	if (pmu->enable & config_mask(I915_PMU_RC6_RESIDENCY))
-		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
-
+	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
 	pmu->sleep_last = ktime_get();
 }
 
-#else
-
-static u64 get_rc6(struct intel_gt *gt)
-{
-	return __get_rc6(gt);
-}
-
-static void park_rc6(struct drm_i915_private *i915) {}
-
-#endif
-
 static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
 {
 	if (!pmu->timer_enabled && pmu_needs_timer(pmu, true)) {
@@ -655,15 +635,10 @@ static void i915_pmu_enable(struct perf_event *event)
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
@@ -678,13 +653,6 @@ static void i915_pmu_enable(struct perf_event *event)
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
 
@@ -726,9 +694,6 @@ static void i915_pmu_enable(struct perf_event *event)
 	 * an existing non-zero value.
 	 */
 	local64_set(&event->hw.prev_count, __i915_pmu_event_read(event));
-
-	if (wakeref)
-		intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
 static void i915_pmu_disable(struct perf_event *event)
@@ -1175,7 +1140,6 @@ void i915_pmu_register(struct drm_i915_private *i915)
 		&i915_pmu_cpumask_attr_group,
 		NULL
 	};
-
 	int ret = -ENOMEM;
 
 	if (INTEL_GEN(i915) <= 2) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
