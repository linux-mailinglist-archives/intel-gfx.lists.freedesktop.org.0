Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE595F178F
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Oct 2022 02:47:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C19710EDFD;
	Sat,  1 Oct 2022 00:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D161310EDF3;
 Sat,  1 Oct 2022 00:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664585183; x=1696121183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MWmYQejfGrh/T2TU2UgZu/SEYh2twhb2uhi56qcGliQ=;
 b=FRAEus8YPgwcdGbXo9/SU5k6BeEudxZHsZNCJAFpZ7YppUdhTHR9B5Ak
 g2V9qTtNmSFc7qf9Exw+25xKDdUWLfD5799yKhkbCphLOz5CKfexnCqQ0
 IOjyfZZq5ZrDYYXDgfUtJmGiOSMJ6wLhIWmv3d0ZFXITdPFuY9MgUTl9I
 G38OcQ1QJkH9Ib5shH0d3NEF9h2FfqnWlglsZDjt7z044MEckuUpXLCBi
 wCOqtTJWhb2odd7fgt7n3yJ/txyVPZT78QV4AyPdHHswxI5ehOMIolDOi
 4TBMs6mVA3dfdNiwLIjCCxhy/x8CabMA6+O46usWshpsWIzMpSCHfcZgn A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="388607936"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="388607936"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 17:46:12 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="685477629"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="685477629"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 17:46:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Sep 2022 17:45:42 -0700
Message-Id: <20221001004550.3031431-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221001004550.3031431-1-matthew.d.roper@intel.com>
References: <20221001004550.3031431-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/14] drm/i915/xehp: Check for faults on
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
Cc: ravi.kumar.vodapalli@intel.com, dri-devel@lists.freedesktop.org
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

Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
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

