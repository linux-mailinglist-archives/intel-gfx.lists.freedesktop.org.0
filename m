Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9688C618713
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 19:07:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E03C10E788;
	Thu,  3 Nov 2022 18:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 152CB10E788
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 18:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667498829; x=1699034829;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XK7tVNWJTfMFHM55pYbBQN5XPXpg0WuqZc8001CVOOg=;
 b=ih6LHiknr23/kbSLyEiP4aEFPxwYG4OgCnOCZM+e0NChC2N1h5x3bn7s
 BIfebKzGNvDqsusrjlQFPuHzwV0OkJWX6M4SioOzVuvbhQm3JWVpPmwjy
 TSs2e/AFwhW9dw720xk2Q5oeDZmRzk+7RnsJXTJy0ZfCdRGGzvZJXEwQL
 YtNqERpB7mBm76gNk4pjQPsXatseTAP4oBWlZXVkoNigfUnJ7KJoUATdZ
 g5zsY8DvF93wi21+aHe6dEDPN2ZNPHjCUZu8GhAYqUFXmtL5BnnMW47Ak
 35EkM1/46ntuCb5FyHjqE8Z/hNlWia7recFeTwFk2Q5DMACMQu+HaNgJt w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="371866475"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="371866475"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 11:07:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="760036939"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="760036939"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 11:07:08 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Nov 2022 11:07:05 -0700
Message-Id: <20221103180705.1315142-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915/pmu: Use a faster read for 2x32 mmio reads
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

PMU reads the GT timestamp as a 2x32 mmio read and since upper and lower
32 bit registers are read in a loop, there is a latency involved in
getting the GT timestamp. To reduce the latency, define another version
of the helper that requires caller to acquire uncore->spinlock and
necessary forcewakes.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 26 ++++++++++++++++---
 drivers/gpu/drm/i915/intel_uncore.h           | 24 +++++++++++++++++
 2 files changed, 47 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 693b07a97789..64b0193c9ee4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1252,6 +1252,28 @@ static u32 gpm_timestamp_shift(struct intel_gt *gt)
 	return 3 - shift;
 }
 
+static u64 gpm_timestamp(struct intel_uncore *uncore, ktime_t *now)
+{
+	enum forcewake_domains fw_domains;
+	u64 reg;
+
+	/* Assume MISC_STATUS0 and MISC_STATUS1 are in the same fw_domain */
+	fw_domains = intel_uncore_forcewake_for_reg(uncore,
+						    MISC_STATUS0,
+						    FW_REG_READ);
+
+	spin_lock_irq(&uncore->lock);
+	intel_uncore_forcewake_get__locked(uncore, fw_domains);
+
+	reg = intel_uncore_read64_2x32_fw(uncore, MISC_STATUS0, MISC_STATUS1);
+	*now = ktime_get();
+
+	intel_uncore_forcewake_put__locked(uncore, fw_domains);
+	spin_unlock_irq(&uncore->lock);
+
+	return reg;
+}
+
 static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
@@ -1261,10 +1283,8 @@ static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
 	lockdep_assert_held(&guc->timestamp.lock);
 
 	gt_stamp_hi = upper_32_bits(guc->timestamp.gt_stamp);
-	gpm_ts = intel_uncore_read64_2x32(gt->uncore, MISC_STATUS0,
-					  MISC_STATUS1) >> guc->timestamp.shift;
+	gpm_ts = gpm_timestamp(gt->uncore, now) >> guc->timestamp.shift;
 	gt_stamp_lo = lower_32_bits(gpm_ts);
-	*now = ktime_get();
 
 	if (gt_stamp_lo < lower_32_bits(guc->timestamp.gt_stamp))
 		gt_stamp_hi++;
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 5449146a0624..dd0cf7d4ce6c 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -455,6 +455,30 @@ static inline void intel_uncore_rmw_fw(struct intel_uncore *uncore,
 		intel_uncore_write_fw(uncore, reg, val);
 }
 
+/*
+ * Introduce a _fw version of intel_uncore_read64_2x32 so that the 64 bit
+ * register read is as quick as possible.
+ *
+ * NOTE:
+ * Prior to calling this function, the caller must
+ * 1. obtain the uncore->lock
+ * 2. acquire forcewakes for the upper and lower register
+ */
+static inline u64
+intel_uncore_read64_2x32_fw(struct intel_uncore *uncore,
+			    i915_reg_t lower_reg, i915_reg_t upper_reg)
+{
+	u32 upper, lower, old_upper, loop = 0;
+
+	upper = intel_uncore_read_fw(uncore, upper_reg);
+	do {
+		old_upper = upper;
+		lower = intel_uncore_read_fw(uncore, lower_reg);
+		upper = intel_uncore_read_fw(uncore, upper_reg);
+	} while (upper != old_upper && loop++ < 2);
+	return (u64)upper << 32 | lower;
+}
+
 static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
 						i915_reg_t reg, u32 val,
 						u32 mask, u32 expected_val)
-- 
2.36.1

