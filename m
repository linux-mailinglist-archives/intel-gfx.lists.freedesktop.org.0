Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A23646CF84E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 02:41:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D4BD10ECA2;
	Thu, 30 Mar 2023 00:41:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA46210ECA2
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 00:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680136864; x=1711672864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U6kBJ8Bo2O0IG+5FZvD8CLg3x1X+NY5vXhWEX6uqC3o=;
 b=PP18pePStNy+jIjWUdR9r2Amr2AlvsAtxuqzgU5hqkP0dmPQEm2lcsOL
 7YGQTjAhwe0aR0x8IGpJEZc2jFYgVEAGdqRBRy9a7qx2LZYMRMmlsQ5js
 PukBYnXSAAdLyKBzlR7kIJOFxZtuE65dPDlE2/h6f22Q90swIM0R0RF6F
 1beXuQ8LlfvopBNiPJSdY40ZjF4IiRDHG7i11vZzbPgp4lIN7iFDWiq7q
 3rmQEt7oiNtGeGbhxB9Vi+MRVR+KJKFYgIDo5rZUJFwYOcRdRdirm2Dcj
 DhaE0HOzcoVXeevwX2fu6dxPujdsOz21AgFOr4JxgzOdC0ENhSgFOdAzf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="427310371"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="427310371"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="634668672"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="634668672"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 17:40:57 -0700
Message-Id: <20230330004103.1295413-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/9] drm/i915/pmu: Transform PMU parking code to
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
index 6abd5042dea3..6f7f9b40860d 100644
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
index 449057648f39..d98fbc7a2f45 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -13,6 +13,7 @@
 #include <uapi/drm/i915_drm.h>
 
 struct drm_i915_private;
+struct intel_gt;
 
 /**
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

