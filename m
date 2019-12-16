Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CD9121531
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 19:20:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DD66E0A5;
	Mon, 16 Dec 2019 18:20:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E69B6E0A5
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 18:20:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 10:20:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,322,1571727600"; d="scan'208";a="415167077"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.84.191])
 by fmsmga005.fm.intel.com with ESMTP; 16 Dec 2019 10:20:35 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 18:20:32 +0000
Message-Id: <20191216182032.22265-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Ensure monotonic rc6
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

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: 16ffe73c186b ("drm/i915/pmu: Use GT parked for estimating RC6 while asleep")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_pmu.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 5f2adfbf85be..c4581d8fc9ce 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -158,7 +158,10 @@ static u64 __pmu_estimate_rc6(struct i915_pmu *pmu)
 	val = ktime_since(pmu->sleep_last);
 	val += pmu->sample[__I915_SAMPLE_RC6].cur;
 
-	pmu->sample[__I915_SAMPLE_RC6_ESTIMATED].cur = val;
+	if (val > pmu->sample[__I915_SAMPLE_RC6_ESTIMATED].cur)
+		pmu->sample[__I915_SAMPLE_RC6_ESTIMATED].cur = val;
+	else
+		val = pmu->sample[__I915_SAMPLE_RC6_ESTIMATED].cur;
 
 	return val;
 }
@@ -185,17 +188,18 @@ static u64 get_rc6(struct intel_gt *gt)
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
+	if (awake)
 		val = __pmu_update_rc6(pmu, val);
 	else
 		val = __pmu_estimate_rc6(pmu);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
