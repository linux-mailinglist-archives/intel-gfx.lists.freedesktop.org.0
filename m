Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EBD5FF687
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Oct 2022 01:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14E8910E161;
	Fri, 14 Oct 2022 23:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB9E10E13A;
 Fri, 14 Oct 2022 23:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665788584; x=1697324584;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gpqg4Emucd1s8DEcq/kPKxViC8Z0cO+7BgptjAPMr8Y=;
 b=n5/JMUFs/kE0JUDCRllCkTYLxUoexQH+zdC8YqBIa31vKiYXwiFYGrz5
 uV1hCYFPoVizvccGhQByWVieBqwHRtMUIn3IHcCf1fb1t4xK4ZNm1eEcA
 jZe5VVFDFLtT1dkcdBVdWg3IgH64Zbpg8fnKTvKIdT4MHWG581SUCE2nO
 n7rhTidT4DOdWp5oU2zAfQNGD3276cDt/oWsKLDDkjCK0AcXbgHpgFPB/
 BKgurqWAk9idEYyeWwDIeCy7ugj81YxcWdOpgZ7sxs9kRSbpueiCmgDTw
 xwesRFqO7QVADeOdH9YVr2xg3RJqDdXo579BqvIhAbF1bGx3suJcYFarS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="285216969"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="285216969"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 16:03:02 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="696471706"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="696471706"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 16:03:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 16:02:31 -0700
Message-Id: <20221014230239.1023689-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221014230239.1023689-1-matthew.d.roper@intel.com>
References: <20221014230239.1023689-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 06/14] drm/i915/xehp: Check for faults on
 primary GAM
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Xe_HP the fault registers are now in a multicast register range.
However as part of the GAM these registers follow special rules and we
need only read from the "primary" GAM's instance to get the information
we need.  So a single intel_gt_mcr_read_any() (which will automatically
steer to the primary GAM) is sufficient; we don't need to loop over each
instance of the MCR register.

v2:
 - Update more instances of fault registers.  (Bala)

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c    | 52 +++++++++++++++++++++++----
 drivers/gpu/drm/i915/i915_gpu_error.c | 12 +++++--
 2 files changed, 55 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 445e171940fa..e14f159ad9fc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -270,7 +270,11 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
 				   I915_MASTER_ERROR_INTERRUPT);
 	}
 
-	if (GRAPHICS_VER(i915) >= 12) {
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+		intel_gt_mcr_multicast_rmw(gt, XEHP_RING_FAULT_REG,
+					   RING_FAULT_VALID, 0);
+		intel_gt_mcr_read_any(gt, XEHP_RING_FAULT_REG);
+	} else if (GRAPHICS_VER(i915) >= 12) {
 		rmw_clear(uncore, GEN12_RING_FAULT_REG, RING_FAULT_VALID);
 		intel_uncore_posting_read(uncore, GEN12_RING_FAULT_REG);
 	} else if (GRAPHICS_VER(i915) >= 8) {
@@ -308,17 +312,49 @@ static void gen6_check_faults(struct intel_gt *gt)
 	}
 }
 
+static void xehp_check_faults(struct intel_gt *gt)
+{
+	u32 fault;
+
+	/*
+	 * Although the fault register now lives in an MCR register range,
+	 * the GAM registers are special and we only truly need to read
+	 * the "primary" GAM instance rather than handling each instance
+	 * individually.  intel_gt_mcr_read_any() will automatically steer
+	 * toward the primary instance.
+	 */
+	fault = intel_gt_mcr_read_any(gt, XEHP_RING_FAULT_REG);
+	if (fault & RING_FAULT_VALID) {
+		u32 fault_data0, fault_data1;
+		u64 fault_addr;
+
+		fault_data0 = intel_gt_mcr_read_any(gt, XEHP_FAULT_TLB_DATA0);
+		fault_data1 = intel_gt_mcr_read_any(gt, XEHP_FAULT_TLB_DATA1);
+
+		fault_addr = ((u64)(fault_data1 & FAULT_VA_HIGH_BITS) << 44) |
+			     ((u64)fault_data0 << 12);
+
+		drm_dbg(&gt->i915->drm, "Unexpected fault\n"
+			"\tAddr: 0x%08x_%08x\n"
+			"\tAddress space: %s\n"
+			"\tEngine ID: %d\n"
+			"\tSource ID: %d\n"
+			"\tType: %d\n",
+			upper_32_bits(fault_addr), lower_32_bits(fault_addr),
+			fault_data1 & FAULT_GTT_SEL ? "GGTT" : "PPGTT",
+			GEN8_RING_FAULT_ENGINE_ID(fault),
+			RING_FAULT_SRCID(fault),
+			RING_FAULT_FAULT_TYPE(fault));
+	}
+}
+
 static void gen8_check_faults(struct intel_gt *gt)
 {
 	struct intel_uncore *uncore = gt->uncore;
 	i915_reg_t fault_reg, fault_data0_reg, fault_data1_reg;
 	u32 fault;
 
-	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50)) {
-		fault_reg = XEHP_RING_FAULT_REG;
-		fault_data0_reg = XEHP_FAULT_TLB_DATA0;
-		fault_data1_reg = XEHP_FAULT_TLB_DATA1;
-	} else if (GRAPHICS_VER(gt->i915) >= 12) {
+	if (GRAPHICS_VER(gt->i915) >= 12) {
 		fault_reg = GEN12_RING_FAULT_REG;
 		fault_data0_reg = GEN12_FAULT_TLB_DATA0;
 		fault_data1_reg = GEN12_FAULT_TLB_DATA1;
@@ -358,7 +394,9 @@ void intel_gt_check_and_clear_faults(struct intel_gt *gt)
 	struct drm_i915_private *i915 = gt->i915;
 
 	/* From GEN8 onwards we only have one 'All Engine Fault Register' */
-	if (GRAPHICS_VER(i915) >= 8)
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+		xehp_check_faults(gt);
+	else if (GRAPHICS_VER(i915) >= 8)
 		gen8_check_faults(gt);
 	else if (GRAPHICS_VER(i915) >= 6)
 		gen6_check_faults(gt);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 9ea2fe34e7d3..f2d53edcd2ee 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1221,7 +1221,10 @@ static void engine_record_registers(struct intel_engine_coredump *ee)
 	if (GRAPHICS_VER(i915) >= 6) {
 		ee->rc_psmi = ENGINE_READ(engine, RING_PSMI_CTL);
 
-		if (GRAPHICS_VER(i915) >= 12)
+		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+			ee->fault_reg = intel_gt_mcr_read_any(engine->gt,
+							      XEHP_RING_FAULT_REG);
+		else if (GRAPHICS_VER(i915) >= 12)
 			ee->fault_reg = intel_uncore_read(engine->uncore,
 							  GEN12_RING_FAULT_REG);
 		else if (GRAPHICS_VER(i915) >= 8)
@@ -1820,7 +1823,12 @@ static void gt_record_global_regs(struct intel_gt_coredump *gt)
 	if (GRAPHICS_VER(i915) == 7)
 		gt->err_int = intel_uncore_read(uncore, GEN7_ERR_INT);
 
-	if (GRAPHICS_VER(i915) >= 12) {
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+		gt->fault_data0 = intel_gt_mcr_read_any((struct intel_gt *)gt->_gt,
+							XEHP_FAULT_TLB_DATA0);
+		gt->fault_data1 = intel_gt_mcr_read_any((struct intel_gt *)gt->_gt,
+							XEHP_FAULT_TLB_DATA1);
+	} else if (GRAPHICS_VER(i915) >= 12) {
 		gt->fault_data0 = intel_uncore_read(uncore,
 						    GEN12_FAULT_TLB_DATA0);
 		gt->fault_data1 = intel_uncore_read(uncore,
-- 
2.37.3

