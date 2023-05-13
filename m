Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF177013D1
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 03:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1579D10E717;
	Sat, 13 May 2023 01:55:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BBE910E053
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 01:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683942949; x=1715478949;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=916hXGphRZb5CRfvE7cuXgAYE5B39UiPyV1ZZY0wzEA=;
 b=YSGYP8O01ECdczBgXnynXf821v7JMqW4QQzgZVruu/de+w/3cLmlTM0a
 LVo59BXqGgfkJVNks3Mv8bGE8NK4+RIOMN42rFkodvUzkgTFIlPnmAIU+
 smKqzBNIVw6vdx2ID/v551Xlu/k4jfz4ZAf1ZW07+WCzVlPURbbEQEMEP
 s+SL9eWmrzTBVf9xJ8YR+qwrLRqoAnKtfkmZZE9VN8KYqkXkg6czKzRRP
 1yvIktegBvuqg4nOG/d1BsOFRxpv++xTb96H5RbSQGyoEKU2TnLby/Z23
 is8YdgJ9MTqE2vDeO4LMHPn+LtCBNVqUADxyuyLvjRneVDz6XKa545+ma Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="354054422"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="354054422"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 18:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="731017017"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="731017017"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 18:55:48 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Fri, 12 May 2023 18:55:42 -0700
Message-Id: <20230513015545.2807282-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230513015545.2807282-1-umesh.nerlige.ramappa@intel.com>
References: <20230513015545.2807282-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/pmu: Transform PMU parking code to
 be GT based
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

Trivial prep work for full multi-tile enablement later.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c |  4 ++--
 drivers/gpu/drm/i915/i915_pmu.c       | 16 ++++++++--------
 drivers/gpu/drm/i915/i915_pmu.h       |  9 +++++----
 3 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index e02cb90723ae..c2e69bafd02b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -87,7 +87,7 @@ static int __gt_unpark(struct intel_wakeref *wf)
 
 	intel_rc6_unpark(&gt->rc6);
 	intel_rps_unpark(&gt->rps);
-	i915_pmu_gt_unparked(i915);
+	i915_pmu_gt_unparked(gt);
 	intel_guc_busyness_unpark(gt);
 
 	intel_gt_unpark_requests(gt);
@@ -109,7 +109,7 @@ static int __gt_park(struct intel_wakeref *wf)
 
 	intel_guc_busyness_park(gt);
 	i915_vma_parked(gt);
-	i915_pmu_gt_parked(i915);
+	i915_pmu_gt_parked(gt);
 	intel_rps_park(&gt->rps);
 	intel_rc6_park(&gt->rc6);
 
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index ba769f7fc385..2b63ee31e1b3 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -217,11 +217,11 @@ static void init_rc6(struct i915_pmu *pmu)
 	}
 }
 
-static void park_rc6(struct drm_i915_private *i915)
+static void park_rc6(struct intel_gt *gt)
 {
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = &gt->i915->pmu;
 
-	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(to_gt(i915));
+	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(gt);
 	pmu->sleep_last = ktime_get_raw();
 }
 
@@ -236,16 +236,16 @@ static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
 	}
 }
 
-void i915_pmu_gt_parked(struct drm_i915_private *i915)
+void i915_pmu_gt_parked(struct intel_gt *gt)
 {
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = &gt->i915->pmu;
 
 	if (!pmu->base.event_init)
 		return;
 
 	spin_lock_irq(&pmu->lock);
 
-	park_rc6(i915);
+	park_rc6(gt);
 
 	/*
 	 * Signal sampling timer to stop if only engine events are enabled and
@@ -256,9 +256,9 @@ void i915_pmu_gt_parked(struct drm_i915_private *i915)
 	spin_unlock_irq(&pmu->lock);
 }
 
-void i915_pmu_gt_unparked(struct drm_i915_private *i915)
+void i915_pmu_gt_unparked(struct intel_gt *gt)
 {
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = &gt->i915->pmu;
 
 	if (!pmu->base.event_init)
 		return;
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index c30f43319a78..a686fd7ccedf 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -13,6 +13,7 @@
 #include <uapi/drm/i915_drm.h>
 
 struct drm_i915_private;
+struct intel_gt;
 
 /*
  * Non-engine events that we need to track enabled-disabled transition and
@@ -151,15 +152,15 @@ int i915_pmu_init(void);
 void i915_pmu_exit(void);
 void i915_pmu_register(struct drm_i915_private *i915);
 void i915_pmu_unregister(struct drm_i915_private *i915);
-void i915_pmu_gt_parked(struct drm_i915_private *i915);
-void i915_pmu_gt_unparked(struct drm_i915_private *i915);
+void i915_pmu_gt_parked(struct intel_gt *gt);
+void i915_pmu_gt_unparked(struct intel_gt *gt);
 #else
 static inline int i915_pmu_init(void) { return 0; }
 static inline void i915_pmu_exit(void) {}
 static inline void i915_pmu_register(struct drm_i915_private *i915) {}
 static inline void i915_pmu_unregister(struct drm_i915_private *i915) {}
-static inline void i915_pmu_gt_parked(struct drm_i915_private *i915) {}
-static inline void i915_pmu_gt_unparked(struct drm_i915_private *i915) {}
+static inline void i915_pmu_gt_parked(struct intel_gt *gt) {}
+static inline void i915_pmu_gt_unparked(struct intel_gt *gt) {}
 #endif
 
 #endif
-- 
2.36.1

