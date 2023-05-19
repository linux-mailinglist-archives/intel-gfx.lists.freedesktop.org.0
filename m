Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1613709BA7
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 17:50:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D943910E5B4;
	Fri, 19 May 2023 15:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AAF210E55B
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 May 2023 15:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684511389; x=1716047389;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5foPLz3hX8+kvLpqF2fF0iQy+5fR4swqGym2SoYWqnQ=;
 b=Q3+4hB3KJivsVxgNZJTJ4eEkvKz27w/tWpBkmMOyilNfFBtuZ8kMdi6s
 0T+1Ew5oy3teYWreqsWu+56IFGT6tj6WXpl3b8A8YZkRuzE4fcU7BBXVo
 B3iD3Llc2dJJMzvoTvt6TXtQzAceSt8YU+lxHXVerLR9Z8S0juH50RAaH
 agsftEQYTZmeQU014Od/QcLolEbXWmnxzmdO83VeJ0eME6ygBAt/ZUuaq
 vDIq2Stk36+KdbFa7HxPFMovzaxCwuQl2KiwqwDUi5QvQYb0pXwb5DP7n
 kpQUwTsA57vCuHyeSW9aSYDmh5S9OwyLfidAky8X6zXrVwMl++2F2VXpf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="354759569"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="354759569"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 08:49:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="1032652190"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="1032652190"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 08:49:47 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 May 2023 08:49:44 -0700
Message-Id: <20230519154946.3751971-6-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230519154946.3751971-1-umesh.nerlige.ramappa@intel.com>
References: <20230519154946.3751971-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 5/7] drm/i915/pmu: Add reference counting to
 the sampling timer
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

We do not want to have timers per tile and waste CPU cycles and energy via
multiple wake-up sources, for a relatively un-important task of PMU
sampling, so keeping a single timer works well. But we also do not want
the first GT which goes idle to turn off the timer.

Add some reference counting, via a mask of unparked GTs, to solve this.

v2: Drop the check for unparked in i915_sample (Ashutosh)
v3: Revert v2 (Tvrtko)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 12 ++++++++++--
 drivers/gpu/drm/i915/i915_pmu.h |  4 ++++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 890693fdaf9e..ecb57a94143e 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -262,7 +262,9 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
 	 * Signal sampling timer to stop if only engine events are enabled and
 	 * GPU went idle.
 	 */
-	pmu->timer_enabled = pmu_needs_timer(pmu, false);
+	pmu->unparked &= ~BIT(gt->info.id);
+	if (pmu->unparked == 0)
+		pmu->timer_enabled = pmu_needs_timer(pmu, false);
 
 	spin_unlock_irq(&pmu->lock);
 }
@@ -279,7 +281,10 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
 	/*
 	 * Re-enable sampling timer when GPU goes active.
 	 */
-	__i915_pmu_maybe_start_timer(pmu);
+	if (pmu->unparked == 0)
+		__i915_pmu_maybe_start_timer(pmu);
+
+	pmu->unparked |= BIT(gt->info.id);
 
 	spin_unlock_irq(&pmu->lock);
 }
@@ -449,6 +454,9 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 	 */
 
 	for_each_gt(gt, i915, i) {
+		if (!(pmu->unparked & BIT(i)))
+			continue;
+
 		engines_sample(gt, period_ns);
 
 		if (i == 0) /* FIXME */
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index a686fd7ccedf..3a811266ac6a 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -76,6 +76,10 @@ struct i915_pmu {
 	 * @lock: Lock protecting enable mask and ref count handling.
 	 */
 	spinlock_t lock;
+	/**
+	 * @unparked: GT unparked mask.
+	 */
+	unsigned int unparked;
 	/**
 	 * @timer: Timer for internal i915 PMU sampling.
 	 */
-- 
2.36.1

