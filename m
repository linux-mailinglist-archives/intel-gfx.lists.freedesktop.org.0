Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D949D2CE1EC
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 23:39:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 442ED6EC61;
	Thu,  3 Dec 2020 22:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2888A6EC61
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 22:39:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23208355-1500050 
 for multiple; Thu, 03 Dec 2020 22:38:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Dec 2020 22:38:49 +0000
Message-Id: <20201203223849.17350-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
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
cannot actually wake the device up. So let's not, and hope our gt wake
tracking is accurate.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 97bb4aaa5236..b3df73ba1cb0 100644
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
@@ -655,15 +650,10 @@ static void i915_pmu_enable(struct perf_event *event)
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
@@ -678,13 +668,6 @@ static void i915_pmu_enable(struct perf_event *event)
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
 
@@ -726,9 +709,6 @@ static void i915_pmu_enable(struct perf_event *event)
 	 * an existing non-zero value.
 	 */
 	local64_set(&event->hw.prev_count, __i915_pmu_event_read(event));
-
-	if (wakeref)
-		intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
 static void i915_pmu_disable(struct perf_event *event)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
