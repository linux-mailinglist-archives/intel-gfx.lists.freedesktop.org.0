Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C30248A55A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 02:55:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 690E210E416;
	Tue, 11 Jan 2022 01:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31DFB10E416
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 01:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641866132; x=1673402132;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7AakAGZJ68TXMBwURyEvlDcbtKhUNluo0bK7HYDlKQQ=;
 b=Ln8VC50r1JiUlL//p27o+UBuGrOQ+nSlkDJhn7FP8Lo2Cq7qixKAOmT9
 AZlBMeIXsk6bK3NNMM5ynivvadpKBimOaSFd+Z70S8f1ganhkrlsWsbfK
 aIrOamkaXQFfm1FYoq3kVm5waJknggijeGjj/uLHk46UttMfeex7DP6L3
 JAXPYXG1wGrQU9O3Z1VP1y2SLj0tHoVrCDJMccZhKVmDdt2TNUWKtKpsu
 qQsnILPIJ55sUXZkDh53AAqBjFFAhW96Veis/twN0LoE96O+eZyvJ4sUQ
 Ie+swHPZWFtlDo6mxT3NlXdU5XZbL1YfA6tNrB5z2byaQVZi0dSbZn+ys A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="243333520"
X-IronPort-AV: E=Sophos;i="5.88,278,1635231600"; d="scan'208";a="243333520"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 17:55:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,278,1635231600"; d="scan'208";a="474343734"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 17:55:31 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>,
 John.C.Harrison@Intel.com
Date: Mon, 10 Jan 2022 17:55:23 -0800
Message-Id: <20220111015523.225562-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Use PM timestamp instead of RING
 TIMESTAMP for reference
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

All timestamps returned by GuC for GuC PMU busyness are captured from
GUC PM TIMESTAMP. Since this timestamp does not tick when GuC goes idle,
kmd uses RING_TIMESTAMP to measure busyness of an engine with an active
context. In further stress testing, the MMIO read of the RING_TIMESTAMP
is seen to cause a rare hang. Resolve the issue by using gt specific
timestamp from PM which is in sync with the GuC PM timestamp.

Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  5 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 56 ++++++++++++++-----
 drivers/gpu/drm/i915/i915_reg.h               |  3 +-
 3 files changed, 50 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index f9240d4baa69..3aabe164c329 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -206,6 +206,11 @@ struct intel_guc {
 		 * context usage for overflows.
 		 */
 		struct delayed_work work;
+
+		/**
+		 * @shift: Right shift value for the gpm timestamp
+		 */
+		u32 shift;
 	} timestamp;
 
 #ifdef CONFIG_DRM_I915_SELFTEST
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 9989d121127d..d93e9547f5e4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1149,23 +1149,51 @@ static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)
 	}
 }
 
-static void guc_update_pm_timestamp(struct intel_guc *guc,
-				    struct intel_engine_cs *engine,
-				    ktime_t *now)
+static u32 gpm_timestamp_shift(struct intel_gt *gt)
 {
-	u32 gt_stamp_now, gt_stamp_hi;
+	intel_wakeref_t wakeref;
+	u32 reg, shift;
+
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+		reg = intel_uncore_read(gt->uncore, RPM_CONFIG0);
+
+	shift = (reg & GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK) >>
+		GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT;
+
+	return 3 - shift;
+}
+
+static u64 gpm_timestamp(struct intel_gt *gt)
+{
+	u32 lo, hi, old_hi, loop = 0;
+
+	hi = intel_uncore_read(gt->uncore, MISC_STATUS1);
+	do {
+		lo = intel_uncore_read(gt->uncore, MISC_STATUS0);
+		old_hi = hi;
+		hi = intel_uncore_read(gt->uncore, MISC_STATUS1);
+	} while (old_hi != hi && loop++ < 2);
+
+	return ((u64)hi << 32) | lo;
+}
+
+static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	u32 gt_stamp_lo, gt_stamp_hi;
+	u64 gpm_ts;
 
 	lockdep_assert_held(&guc->timestamp.lock);
 
 	gt_stamp_hi = upper_32_bits(guc->timestamp.gt_stamp);
-	gt_stamp_now = intel_uncore_read(engine->uncore,
-					 RING_TIMESTAMP(engine->mmio_base));
+	gpm_ts = gpm_timestamp(gt) >> guc->timestamp.shift;
+	gt_stamp_lo = lower_32_bits(gpm_ts);
 	*now = ktime_get();
 
-	if (gt_stamp_now < lower_32_bits(guc->timestamp.gt_stamp))
+	if (gt_stamp_lo < lower_32_bits(guc->timestamp.gt_stamp))
 		gt_stamp_hi++;
 
-	guc->timestamp.gt_stamp = ((u64)gt_stamp_hi << 32) | gt_stamp_now;
+	guc->timestamp.gt_stamp = ((u64)gt_stamp_hi << 32) | gt_stamp_lo;
 }
 
 /*
@@ -1209,7 +1237,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
 		stats_saved = *stats;
 		gt_stamp_saved = guc->timestamp.gt_stamp;
 		guc_update_engine_gt_clks(engine);
-		guc_update_pm_timestamp(guc, engine, now);
+		guc_update_pm_timestamp(guc, now);
 		intel_gt_pm_put_async(gt);
 		if (i915_reset_count(gpu_error) != reset_count) {
 			*stats = stats_saved;
@@ -1241,8 +1269,8 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
 
 	spin_lock_irqsave(&guc->timestamp.lock, flags);
 
+	guc_update_pm_timestamp(guc, &unused);
 	for_each_engine(engine, gt, id) {
-		guc_update_pm_timestamp(guc, engine, &unused);
 		guc_update_engine_gt_clks(engine);
 		engine->stats.guc.prev_total = 0;
 	}
@@ -1259,10 +1287,11 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
 	ktime_t unused;
 
 	spin_lock_irqsave(&guc->timestamp.lock, flags);
-	for_each_engine(engine, gt, id) {
-		guc_update_pm_timestamp(guc, engine, &unused);
+
+	guc_update_pm_timestamp(guc, &unused);
+	for_each_engine(engine, gt, id)
 		guc_update_engine_gt_clks(engine);
-	}
+
 	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
@@ -1784,6 +1813,7 @@ int intel_guc_submission_init(struct intel_guc *guc)
 	spin_lock_init(&guc->timestamp.lock);
 	INIT_DELAYED_WORK(&guc->timestamp.work, guc_timestamp_ping);
 	guc->timestamp.ping_delay = (POLL_TIME_CLKS / gt->clock_frequency + 1) * HZ;
+	guc->timestamp.shift = gpm_timestamp_shift(gt);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 61ade07068c8..70c5e7c237eb 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2435,7 +2435,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   RING_WAIT		(1 << 11) /* gen3+, PRBx_CTL */
 #define   RING_WAIT_SEMAPHORE	(1 << 10) /* gen6+ */
 
-#define GUCPMTIMESTAMP          _MMIO(0xC3E8)
+#define MISC_STATUS0		_MMIO(0xA500)
+#define MISC_STATUS1		_MMIO(0xA504)
 
 /* There are 16 64-bit CS General Purpose Registers per-engine on Gen8+ */
 #define GEN8_RING_CS_GPR(base, n)	_MMIO((base) + 0x600 + (n) * 8)
-- 
2.33.1

