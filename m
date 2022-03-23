Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 267544E5970
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 20:54:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 579F789E3B;
	Wed, 23 Mar 2022 19:54:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A2B389E3B
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 19:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648065291; x=1679601291;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=brlyykZhvVd/m1oEVp9U+TgqcpyzaF+zMGAPoBPHbl0=;
 b=HulRm7skVtp9sAGBvSgDXz/zG6hHnuInIcyDJYi2EKKl+zGEVb9cw6uu
 Zf/zn8jBkxgd+ayVBdmJvicWBd9I9PxYzNI7jZ6cLaCMOovA2M2IbZJCn
 rKtTdYzc+w4AbAY6oSZtRb/JY+HvGDFZR+Obi3kjRho8wSLnY42scVNbU
 1ZapRap3/fgw+8o5O06YAzqxKHAp4FC09F+X1ZVezDooiKTylybNV03D9
 ayRs7sQ7xP2SSletoSX9SPO3Pq8+X3HRUxjdr23SppAw5TwnL4FBFxvUA
 EUBOKmCcE05r1xI+csLOWD35VOE4K+8S3V337RNt7eb5uprGTMedKvzAz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="238156079"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="238156079"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 12:54:50 -0700
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="825437018"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 12:54:50 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 12:54:35 -0700
Message-Id: <20220323195435.38524-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/rps: Centralize computation of freq
 caps
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Freq caps (i.e. RP0, RP1 and RPn frequencies) are read from HW. However the
formats (bit positions, widths, registers and units) of these vary for
different generations with even more variations arriving in the future. In
order not to have to do identical computation for these caps in multiple
places, here we centralize the computation of these caps. This makes the
code cleaner and also more extensible for the future.

v2: Clarify that caps are in "hw units" in comments (Lucas De Marchi)
v3: Minor checkpatch fix
v4: s/intel_rps_get_freq_caps/gen6_rps_get_freq_caps/ (Badal Nilawar)

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  24 +----
 drivers/gpu/drm/i915/gt/intel_rps.c           | 101 ++++++++++--------
 drivers/gpu/drm/i915/gt/intel_rps.h           |   2 +-
 drivers/gpu/drm/i915/gt/intel_rps_types.h     |  10 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  14 +--
 5 files changed, 79 insertions(+), 72 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 31dbb2b96738..280a27cb9bdf 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -342,17 +342,16 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
 	} else if (GRAPHICS_VER(i915) >= 6) {
 		u32 rp_state_limits;
 		u32 gt_perf_status;
-		u32 rp_state_cap;
+		struct intel_rps_freq_caps caps;
 		u32 rpmodectl, rpinclimit, rpdeclimit;
 		u32 rpstat, cagf, reqf;
 		u32 rpcurupei, rpcurup, rpprevup;
 		u32 rpcurdownei, rpcurdown, rpprevdown;
 		u32 rpupei, rpupt, rpdownei, rpdownt;
 		u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
-		int max_freq;
 
 		rp_state_limits = intel_uncore_read(uncore, GEN6_RP_STATE_LIMITS);
-		rp_state_cap = intel_rps_read_state_cap(rps);
+		gen6_rps_get_freq_caps(rps, &caps);
 		if (IS_GEN9_LP(i915))
 			gt_perf_status = intel_uncore_read(uncore, BXT_GT_PERF_STATUS);
 		else
@@ -474,25 +473,12 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
 		drm_printf(p, "RP DOWN THRESHOLD: %d (%lldns)\n",
 			   rpdownt, intel_gt_pm_interval_to_ns(gt, rpdownt));
 
-		max_freq = (IS_GEN9_LP(i915) ? rp_state_cap >> 0 :
-			    rp_state_cap >> 16) & 0xff;
-		max_freq *= (IS_GEN9_BC(i915) ||
-			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
 		drm_printf(p, "Lowest (RPN) frequency: %dMHz\n",
-			   intel_gpu_freq(rps, max_freq));
-
-		max_freq = (rp_state_cap & 0xff00) >> 8;
-		max_freq *= (IS_GEN9_BC(i915) ||
-			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
+			   intel_gpu_freq(rps, caps.min_freq));
 		drm_printf(p, "Nominal (RP1) frequency: %dMHz\n",
-			   intel_gpu_freq(rps, max_freq));
-
-		max_freq = (IS_GEN9_LP(i915) ? rp_state_cap >> 16 :
-			    rp_state_cap >> 0) & 0xff;
-		max_freq *= (IS_GEN9_BC(i915) ||
-			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
+			   intel_gpu_freq(rps, caps.rp1_freq));
 		drm_printf(p, "Max non-overclocked (RP0) frequency: %dMHz\n",
-			   intel_gpu_freq(rps, max_freq));
+			   intel_gpu_freq(rps, caps.rp0_freq));
 		drm_printf(p, "Max overclocked frequency: %dMHz\n",
 			   intel_gpu_freq(rps, rps->max_freq));
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 6c9fdf7906c5..f21f6e454998 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1070,23 +1070,59 @@ int intel_rps_set(struct intel_rps *rps, u8 val)
 	return 0;
 }
 
-static void gen6_rps_init(struct intel_rps *rps)
+static u32 intel_rps_read_state_cap(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
-	u32 rp_state_cap = intel_rps_read_state_cap(rps);
+	struct intel_uncore *uncore = rps_to_uncore(rps);
 
-	/* All of these values are in units of 50MHz */
+	if (IS_XEHPSDV(i915))
+		return intel_uncore_read(uncore, XEHPSDV_RP_STATE_CAP);
+	else if (IS_GEN9_LP(i915))
+		return intel_uncore_read(uncore, BXT_RP_STATE_CAP);
+	else
+		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
+}
+
+/* "Caps" frequencies should be converted to MHz using intel_gpu_freq() */
+void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps)
+{
+	struct drm_i915_private *i915 = rps_to_i915(rps);
+	u32 rp_state_cap;
+
+	rp_state_cap = intel_rps_read_state_cap(rps);
 
 	/* static values from HW: RP0 > RP1 > RPn (min_freq) */
 	if (IS_GEN9_LP(i915)) {
-		rps->rp0_freq = (rp_state_cap >> 16) & 0xff;
-		rps->rp1_freq = (rp_state_cap >>  8) & 0xff;
-		rps->min_freq = (rp_state_cap >>  0) & 0xff;
+		caps->rp0_freq = (rp_state_cap >> 16) & 0xff;
+		caps->rp1_freq = (rp_state_cap >>  8) & 0xff;
+		caps->min_freq = (rp_state_cap >>  0) & 0xff;
 	} else {
-		rps->rp0_freq = (rp_state_cap >>  0) & 0xff;
-		rps->rp1_freq = (rp_state_cap >>  8) & 0xff;
-		rps->min_freq = (rp_state_cap >> 16) & 0xff;
+		caps->rp0_freq = (rp_state_cap >>  0) & 0xff;
+		caps->rp1_freq = (rp_state_cap >>  8) & 0xff;
+		caps->min_freq = (rp_state_cap >> 16) & 0xff;
+	}
+
+	if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11) {
+		/*
+		 * In this case rp_state_cap register reports frequencies in
+		 * units of 50 MHz. Convert these to the actual "hw unit", i.e.
+		 * units of 16.67 MHz
+		 */
+		caps->rp0_freq *= GEN9_FREQ_SCALER;
+		caps->rp1_freq *= GEN9_FREQ_SCALER;
+		caps->min_freq *= GEN9_FREQ_SCALER;
 	}
+}
+
+static void gen6_rps_init(struct intel_rps *rps)
+{
+	struct drm_i915_private *i915 = rps_to_i915(rps);
+	struct intel_rps_freq_caps caps;
+
+	gen6_rps_get_freq_caps(rps, &caps);
+	rps->rp0_freq = caps.rp0_freq;
+	rps->rp1_freq = caps.rp1_freq;
+	rps->min_freq = caps.min_freq;
 
 	/* hw_max = RP0 until we check for overclocking */
 	rps->max_freq = rps->rp0_freq;
@@ -1095,26 +1131,18 @@ static void gen6_rps_init(struct intel_rps *rps)
 	if (IS_HASWELL(i915) || IS_BROADWELL(i915) ||
 	    IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11) {
 		u32 ddcc_status = 0;
+		u32 mult = 1;
 
+		if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11)
+			mult = GEN9_FREQ_SCALER;
 		if (snb_pcode_read(i915, HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
 				   &ddcc_status, NULL) == 0)
 			rps->efficient_freq =
-				clamp_t(u8,
-					(ddcc_status >> 8) & 0xff,
+				clamp_t(u32,
+					((ddcc_status >> 8) & 0xff) * mult,
 					rps->min_freq,
 					rps->max_freq);
 	}
-
-	if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11) {
-		/* Store the frequency values in 16.66 MHZ units, which is
-		 * the natural hardware unit for SKL
-		 */
-		rps->rp0_freq *= GEN9_FREQ_SCALER;
-		rps->rp1_freq *= GEN9_FREQ_SCALER;
-		rps->min_freq *= GEN9_FREQ_SCALER;
-		rps->max_freq *= GEN9_FREQ_SCALER;
-		rps->efficient_freq *= GEN9_FREQ_SCALER;
-	}
 }
 
 static bool rps_reset(struct intel_rps *rps)
@@ -2219,19 +2247,6 @@ int intel_rps_set_min_frequency(struct intel_rps *rps, u32 val)
 		return set_min_freq(rps, val);
 }
 
-u32 intel_rps_read_state_cap(struct intel_rps *rps)
-{
-	struct drm_i915_private *i915 = rps_to_i915(rps);
-	struct intel_uncore *uncore = rps_to_uncore(rps);
-
-	if (IS_XEHPSDV(i915))
-		return intel_uncore_read(uncore, XEHPSDV_RP_STATE_CAP);
-	else if (IS_GEN9_LP(i915))
-		return intel_uncore_read(uncore, BXT_RP_STATE_CAP);
-	else
-		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
-}
-
 static void intel_rps_set_manual(struct intel_rps *rps, bool enable)
 {
 	struct intel_uncore *uncore = rps_to_uncore(rps);
@@ -2244,18 +2259,18 @@ static void intel_rps_set_manual(struct intel_rps *rps, bool enable)
 void intel_rps_raise_unslice(struct intel_rps *rps)
 {
 	struct intel_uncore *uncore = rps_to_uncore(rps);
-	u32 rp0_unslice_req;
 
 	mutex_lock(&rps->lock);
 
 	if (rps_uses_slpc(rps)) {
 		/* RP limits have not been initialized yet for SLPC path */
-		rp0_unslice_req = ((intel_rps_read_state_cap(rps) >> 0)
-				   & 0xff) * GEN9_FREQ_SCALER;
+		struct intel_rps_freq_caps caps;
+
+		gen6_rps_get_freq_caps(rps, &caps);
 
 		intel_rps_set_manual(rps, true);
 		intel_uncore_write(uncore, GEN6_RPNSWREQ,
-				   ((rp0_unslice_req <<
+				   ((caps.rp0_freq <<
 				   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT) |
 				   GEN9_IGNORE_SLICE_RATIO));
 		intel_rps_set_manual(rps, false);
@@ -2269,18 +2284,18 @@ void intel_rps_raise_unslice(struct intel_rps *rps)
 void intel_rps_lower_unslice(struct intel_rps *rps)
 {
 	struct intel_uncore *uncore = rps_to_uncore(rps);
-	u32 rpn_unslice_req;
 
 	mutex_lock(&rps->lock);
 
 	if (rps_uses_slpc(rps)) {
 		/* RP limits have not been initialized yet for SLPC path */
-		rpn_unslice_req = ((intel_rps_read_state_cap(rps) >> 16)
-				   & 0xff) * GEN9_FREQ_SCALER;
+		struct intel_rps_freq_caps caps;
+
+		gen6_rps_get_freq_caps(rps, &caps);
 
 		intel_rps_set_manual(rps, true);
 		intel_uncore_write(uncore, GEN6_RPNSWREQ,
-				   ((rpn_unslice_req <<
+				   ((caps.min_freq <<
 				   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT) |
 				   GEN9_IGNORE_SLICE_RATIO));
 		intel_rps_set_manual(rps, false);
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index ba1ed9f7ecda..1e8d56491308 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -45,7 +45,7 @@ u32 intel_rps_get_rp1_frequency(struct intel_rps *rps);
 u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
 u32 intel_rps_read_punit_req(struct intel_rps *rps);
 u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
-u32 intel_rps_read_state_cap(struct intel_rps *rps);
+void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps);
 void intel_rps_raise_unslice(struct intel_rps *rps);
 void intel_rps_lower_unslice(struct intel_rps *rps);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
index 3941d8551f52..4f7a351e0997 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
@@ -37,6 +37,16 @@ enum {
 	INTEL_RPS_TIMER,
 };
 
+/*
+ * Freq caps exposed by HW, values are in "hw units" and intel_gpu_freq()
+ * should be used to convert to MHz
+ */
+struct intel_rps_freq_caps {
+	u8 rp0_freq;		/* non-overclocked max frequency */
+	u8 rp1_freq;		/* "less than" RP0 power/freqency */
+	u8 min_freq;		/* aka RPn, minimum frequency */
+};
+
 struct intel_rps {
 	struct mutex lock; /* protects enabling and the worker */
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 9f032c65a488..9e02355e44f1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -582,16 +582,12 @@ static int slpc_use_fused_rp0(struct intel_guc_slpc *slpc)
 static void slpc_get_rp_values(struct intel_guc_slpc *slpc)
 {
 	struct intel_rps *rps = &slpc_to_gt(slpc)->rps;
-	u32 rp_state_cap;
+	struct intel_rps_freq_caps caps;
 
-	rp_state_cap = intel_rps_read_state_cap(rps);
-
-	slpc->rp0_freq = REG_FIELD_GET(RP0_CAP_MASK, rp_state_cap) *
-					GT_FREQUENCY_MULTIPLIER;
-	slpc->rp1_freq = REG_FIELD_GET(RP1_CAP_MASK, rp_state_cap) *
-					GT_FREQUENCY_MULTIPLIER;
-	slpc->min_freq = REG_FIELD_GET(RPN_CAP_MASK, rp_state_cap) *
-					GT_FREQUENCY_MULTIPLIER;
+	gen6_rps_get_freq_caps(rps, &caps);
+	slpc->rp0_freq = intel_gpu_freq(rps, caps.rp0_freq);
+	slpc->rp1_freq = intel_gpu_freq(rps, caps.rp1_freq);
+	slpc->min_freq = intel_gpu_freq(rps, caps.min_freq);
 
 	if (!slpc->boost_freq)
 		slpc->boost_freq = slpc->rp0_freq;
-- 
2.34.1

