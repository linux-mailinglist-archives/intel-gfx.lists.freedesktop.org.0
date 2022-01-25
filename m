Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DF949A2EF
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 03:01:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F8A10E8F5;
	Tue, 25 Jan 2022 02:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C64210E8AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 02:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643076090; x=1674612090;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r+CHK2VzKxznkQEdX0UKozAQOe1eTfrYgvxJlmHYyRQ=;
 b=ihNHGQXwr9Wtwe/0iblKLwNZQvUsIT8/5nkJOMRVzXkaI4lpQ25Kqsyg
 jkOXfz1vc/J6BBVbbP+XoJtJgQ6mc7zovpebWpoYZps/uQLwoqiJCUksu
 SxwGIzt7rWy2qv8hMLj97FDb1ExG0d3ZzAbSxljzd5ohdAdwEhxoFVE2r
 cZN1uCZPV8jSdfEB4/LwyhQdlH7yJUOrQJB7ZdyrrDxZjTYOvEUjTSiJ6
 /KxfN+gtg70mTKUPHoyHehh92YStpQtQVl3Q02wURwu+YM9kOFe9lmW9A
 sUDBT5aCGmr5mbSNAsmzdc4nHZ+onspKyiceBpMlqqpBCQ1loh9ciRvSs g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="226866828"
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="226866828"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 18:01:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="534514621"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 18:01:29 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, John.C.Harrison@Intel.com,
 alan.previn.teres.alexis@intel.com
Date: Mon, 24 Jan 2022 18:01:23 -0800
Message-Id: <20220125020124.788679-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/pmu: Use PM timestamp instead of
 RING TIMESTAMP for reference
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
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  5 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 56 ++++++++++++++-----
 drivers/gpu/drm/i915/i915_reg.h               |  3 +-
 3 files changed, 50 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index d59bbf49d1c2..697d9d66acef 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -215,6 +215,11 @@ struct intel_guc {
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
index 1331ff91c5b0..66760f5df0c1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1150,23 +1150,51 @@ static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)
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
@@ -1210,7 +1238,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
 		stats_saved = *stats;
 		gt_stamp_saved = guc->timestamp.gt_stamp;
 		guc_update_engine_gt_clks(engine);
-		guc_update_pm_timestamp(guc, engine, now);
+		guc_update_pm_timestamp(guc, now);
 		intel_gt_pm_put_async(gt);
 		if (i915_reset_count(gpu_error) != reset_count) {
 			*stats = stats_saved;
@@ -1242,8 +1270,8 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
 
 	spin_lock_irqsave(&guc->timestamp.lock, flags);
 
+	guc_update_pm_timestamp(guc, &unused);
 	for_each_engine(engine, gt, id) {
-		guc_update_pm_timestamp(guc, engine, &unused);
 		guc_update_engine_gt_clks(engine);
 		engine->stats.guc.prev_total = 0;
 	}
@@ -1260,10 +1288,11 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
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
 
@@ -1757,6 +1786,7 @@ int intel_guc_submission_init(struct intel_guc *guc)
 	spin_lock_init(&guc->timestamp.lock);
 	INIT_DELAYED_WORK(&guc->timestamp.work, guc_timestamp_ping);
 	guc->timestamp.ping_delay = (POLL_TIME_CLKS / gt->clock_frequency + 1) * HZ;
+	guc->timestamp.shift = gpm_timestamp_shift(gt);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 23b7c6930453..655517eb90ab 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1848,7 +1848,8 @@
 #define BLT_HWS_PGA_GEN7	_MMIO(0x04280)
 #define VEBOX_HWS_PGA_GEN7	_MMIO(0x04380)
 
-#define GUCPMTIMESTAMP          _MMIO(0xC3E8)
+#define MISC_STATUS0		_MMIO(0xA500)
+#define MISC_STATUS1		_MMIO(0xA504)
 
 #define GEN7_TLB_RD_ADDR	_MMIO(0x4700)
 
-- 
2.33.1

