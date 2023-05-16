Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF53705B67
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 01:35:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2226F10E38A;
	Tue, 16 May 2023 23:35:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C36610E387
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 23:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684280139; x=1715816139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qH0zra8MWjzW157TJu44lU37iW4JiKKiuB+5sr1EUSg=;
 b=UdmaOripa+7jKRqV2uhA8YfhNu4LwoTIvGjzYb5z2+wp8dmyjJQet8r5
 xLeVc2cjOSYcgaZMUyOUG8sY+XpvXsyucSp66GkTOYNyra4L1KgelwXPm
 vQNEzo0Du5OD05qkbVZ8ISHcINBoQNSU9OwsNcXac/xfD89o3oEm5IgBS
 VGjYVr+B8FJKzJsIemkMkjM90uedwm6UwWwghRngR77RYJb12uwHvrbdh
 hVjaWTF2S1e2yWSgN2X1Z12+meV32S8k/97jv6WF3lJI9St8GyGXH4Y6n
 yc8q3PguTJtKZeCUvTy9qw4Niv61QtlCttbJme00VR7Z6mbeamqURV9sz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="340996420"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="340996420"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 16:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="732160686"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="732160686"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 16:35:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 May 2023 16:35:31 -0700
Message-Id: <20230516233534.3610598-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230516233534.3610598-1-umesh.nerlige.ramappa@intel.com>
References: <20230516233534.3610598-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 4/7] drm/i915/pmu: Transform PMU parking code
 to be GT based
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
index 6d594f67f365..890693fdaf9e 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -228,11 +228,11 @@ static void init_rc6(struct i915_pmu *pmu)
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
 
@@ -247,16 +247,16 @@ static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
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
@@ -267,9 +267,9 @@ void i915_pmu_gt_parked(struct drm_i915_private *i915)
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

