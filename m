Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E361FC31E84
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 16:46:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5586110E637;
	Tue,  4 Nov 2025 15:46:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BxvvtkMN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E85810E636
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Nov 2025 15:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762271189; x=1793807189;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FcbhFAZSuAQzxOKwY/cSCbutt0clzAO+LhjnFKgkpEQ=;
 b=BxvvtkMNMT/vFjs0WMrE3T8NT0CvMbOb1MjJnN63YMvHgFI2xuoJ+J03
 wX8nORUkMHkzo5jG/X/2Vde8hHVXJSF5QJgFz5BgAUusHEkGGogLGTbqc
 lEeLtMw2lEn4LQ2qsmuO+vQL92NIbC28zcTySPv/QrZZMSl2e5y0+CXSt
 NTinyIb4r+5wMggYyD6pnBHQyWhq2EWQUYl950S1Or1aYxi3NfdRWnKx7
 KHuSJ7d7MCRxU+fRMFIyOgmymCI7B+AQjsZDbMInq84WGoJxr6ylDtx0U
 uIEhRBaJGYr8hn4nl5Q2mZsrG1SphLZAisgetyGDeRme4dYOjULzpcTVB w==;
X-CSE-ConnectionGUID: 3YyfL3yQTV2+FnpZijqegw==
X-CSE-MsgGUID: W/nYsW4FT3q/alieK9tUmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64065302"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="64065302"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 07:46:28 -0800
X-CSE-ConnectionGUID: FguQWflCRc6wtKzYfFmdiA==
X-CSE-MsgGUID: oRR86mZRTcKuSZwGnk/WcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="187636556"
Received: from rvodapal-mobl.iind.intel.com ([10.190.239.40])
 by fmviesa009.fm.intel.com with ESMTP; 04 Nov 2025 07:46:24 -0800
From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: balasubramani.vivekanandan@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, gustavo.sousa@intel.com,
 clinton.a.taylor@intel.com, matthew.s.atwood@intel.com,
 dnyaneshwar.bhadane@intel.com, shekhar.chauhan@intel.com,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Subject: [PATCH v2] drm/i915/pmu: Use raw_spin_lock where ever needed in i915
 pmu
Date: Tue,  4 Nov 2025 21:16:21 +0530
Message-Id: <20251104154621.917892-1-ravi.kumar.vodapalli@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Currently i915 pmu driver gets registered with linux perf
subsystem with its callback functions implemented, it is
using spin_lock for synchronization where ever is needed.
linux perf subsystem in some instance is using raw_spin_locks
for synchronization and calls the i915 pmu callback functions with
raw_spin_lock held.

The issue is
When PREEMPT_RT is configured in kernel config the normal spin_lock
behaves as mutex lock and when these are called with raw_spin_lock
held race condition can occur.So in the path of the raw_spin_lock
held convert spin_lock into raw_spin_lock where ever is needed.

v2:
- Fix build error below
  drivers/gpu/drm/i915/i915_pmu.c:233:31: error: passing argument 1
  of ‘_raw_spin_lock_irqsave’ from incompatible pointer type
  [-Werror=incompatible-pointer-types]
  233 |         raw_spin_lock_irqsave(&pmu->lock, flags);
      |                               ^~~~~~~~~~

Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 22 +++++++++++-----------
 drivers/gpu/drm/i915/i915_pmu.h |  2 +-
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 5bc696bfbb0f..d760ec44a98c 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -230,7 +230,7 @@ static u64 get_rc6(struct intel_gt *gt)
 		intel_gt_pm_put_async(gt, wakeref);
 	}
 
-	spin_lock_irqsave(&pmu->lock, flags);
+	raw_spin_lock_irqsave(&pmu->lock, flags);
 
 	if (wakeref) {
 		store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
@@ -251,7 +251,7 @@ static u64 get_rc6(struct intel_gt *gt)
 	else
 		store_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED, val);
 
-	spin_unlock_irqrestore(&pmu->lock, flags);
+	raw_spin_unlock_irqrestore(&pmu->lock, flags);
 
 	return val;
 }
@@ -302,7 +302,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
 	if (!pmu->registered)
 		return;
 
-	spin_lock_irq(&pmu->lock);
+	raw_spin_lock_irq(&pmu->lock);
 
 	park_rc6(gt);
 
@@ -314,7 +314,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
 	if (pmu->unparked == 0)
 		pmu->timer_enabled = false;
 
-	spin_unlock_irq(&pmu->lock);
+	raw_spin_unlock_irq(&pmu->lock);
 }
 
 void i915_pmu_gt_unparked(struct intel_gt *gt)
@@ -324,7 +324,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
 	if (!pmu->registered)
 		return;
 
-	spin_lock_irq(&pmu->lock);
+	raw_spin_lock_irq(&pmu->lock);
 
 	/*
 	 * Re-enable sampling timer when GPU goes active.
@@ -334,7 +334,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
 
 	pmu->unparked |= BIT(gt->info.id);
 
-	spin_unlock_irq(&pmu->lock);
+	raw_spin_unlock_irq(&pmu->lock);
 }
 
 static void
@@ -740,7 +740,7 @@ static void i915_pmu_enable(struct perf_event *event)
 	if (bit == -1)
 		goto update;
 
-	spin_lock_irqsave(&pmu->lock, flags);
+	raw_spin_lock_irqsave(&pmu->lock, flags);
 
 	/*
 	 * Update the bitmask of enabled events and increment
@@ -782,7 +782,7 @@ static void i915_pmu_enable(struct perf_event *event)
 		engine->pmu.enable_count[sample]++;
 	}
 
-	spin_unlock_irqrestore(&pmu->lock, flags);
+	raw_spin_unlock_irqrestore(&pmu->lock, flags);
 
 update:
 	/*
@@ -803,7 +803,7 @@ static void i915_pmu_disable(struct perf_event *event)
 	if (bit == -1)
 		return;
 
-	spin_lock_irqsave(&pmu->lock, flags);
+	raw_spin_lock_irqsave(&pmu->lock, flags);
 
 	if (is_engine_event(event)) {
 		u8 sample = engine_event_sample(event);
@@ -836,7 +836,7 @@ static void i915_pmu_disable(struct perf_event *event)
 		pmu->timer_enabled &= pmu_needs_timer(pmu);
 	}
 
-	spin_unlock_irqrestore(&pmu->lock, flags);
+	raw_spin_unlock_irqrestore(&pmu->lock, flags);
 }
 
 static void i915_pmu_event_start(struct perf_event *event, int flags)
@@ -1154,7 +1154,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	};
 	int ret = -ENOMEM;
 
-	spin_lock_init(&pmu->lock);
+	raw_spin_lock_init(&pmu->lock);
 	hrtimer_setup(&pmu->timer, i915_sample, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 	init_rc6(pmu);
 
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 5826cc81858c..52d4b602310a 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -71,7 +71,7 @@ struct i915_pmu {
 	/**
 	 * @lock: Lock protecting enable mask and ref count handling.
 	 */
-	spinlock_t lock;
+	raw_spinlock_t lock;
 	/**
 	 * @unparked: GT unparked mask.
 	 */
-- 
2.34.1

