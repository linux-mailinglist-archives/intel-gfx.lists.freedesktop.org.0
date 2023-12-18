Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E657817A7F
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 20:02:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF1FD10E29D;
	Mon, 18 Dec 2023 19:01:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8791610E392
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 19:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702926047; x=1734462047;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=whS6M1fZvnDZp7wr9wjAL4c739NMNDRi6useoPkElAc=;
 b=g53ndV7eztqaByXiiWSMdqenmHpoBV6yHZQKxAhWjzBMhPeW2Jk+Pc1e
 9GpMnVi3CZ0E9ss78fxXy4xApgMSRmGPlHNl0U/zhq5LXGEC0YVWycaTz
 8cUKG1uH3T6iblEjaqbOzxxX+UZ2k6MG2G0kcAeJDdlwRbejhHExUX1cX
 lUxCf3+2FY0ZnOhapDnoFlKLjP50/Zh1I7VkSOn5GCwfo2LUDDqxvAACc
 qEnILt+mXj1BB5tZ1rj4XSP0KTqTExQk8Ao5MTkFL0Luy+Vx8G3O/QCpn
 1Qyv1aQ0SJ4aoEljU61UEk8K2q53gWRtUafkxdaldMHkjOecbkLjFrUTE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="461945172"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="461945172"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 03:47:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="725288922"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="725288922"
Received: from osgc-linux-buildserver.sh.intel.com ([10.112.232.61])
 by orsmga003.jf.intel.com with ESMTP; 18 Dec 2023 03:47:30 -0800
From: Shuicheng Lin <shuicheng.lin@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/guc: Add MCR type check for wa registers
Date: Mon, 18 Dec 2023 11:46:44 +0000
Message-Id: <20231218114644.3799660-1-shuicheng.lin@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <[PATCH] drm/i915/guc: Change wa registers to MCR type>
References: <[PATCH] drm/i915/guc: Change wa registers to MCR type>
MIME-Version: 1.0
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some of the wa registers are MCR registers, which have different
read/write process with normal MMIO registers.
Add function intel_gt_is_mcr_reg to check whether it is mcr register
or not.

Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c     | 27 ++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_mcr.h     |  2 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c |  6 ++++-
 3 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index e253750a51c5..b3ee9d152dbe 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -81,6 +81,11 @@ static const struct intel_mmio_range dg2_lncf_steering_table[] = {
 	{},
 };
 
+static const struct intel_mmio_range dg2_dss_steering_table[] = {
+	{ 0x00E400, 0x00E7FF },
+	{},
+};
+
 /*
  * We have several types of MCR registers on PVC where steering to (0,0)
  * will always provide us with a non-terminated value.  We'll stick them
@@ -190,6 +195,7 @@ void intel_gt_mcr_init(struct intel_gt *gt)
 	} else if (IS_DG2(i915)) {
 		gt->steering_table[MSLICE] = xehpsdv_mslice_steering_table;
 		gt->steering_table[LNCF] = dg2_lncf_steering_table;
+		gt->steering_table[DSS] = dg2_dss_steering_table;
 		/*
 		 * No need to hook up the GAM table since it has a dedicated
 		 * steering control register on DG2 and can use implicit
@@ -715,6 +721,27 @@ void intel_gt_mcr_get_nonterminated_steering(struct intel_gt *gt,
 	*instance = gt->default_steering.instanceid;
 }
 
+/*
+ * intel_gt_is_mcr_reg - check whether it is a mcr register or not
+ * @gt: GT structure
+ * @reg: the register to check
+ *
+ * Returns true if @reg belong to a register range of any steering type,
+ * otherwise, return false.
+ */
+bool intel_gt_is_mcr_reg(struct intel_gt *gt, i915_reg_t reg)
+{
+	int type;
+	i915_mcr_reg_t mcr_reg = {.reg = reg.reg};
+
+	for (type = 0; type < NUM_STEERING_TYPES; type++) {
+		if (reg_needs_read_steering(gt, mcr_reg, type)) {
+			return true;
+		}
+	}
+	return false;
+}
+
 /**
  * intel_gt_mcr_read_any_fw - reads one instance of an MCR register
  * @gt: GT structure
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.h b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
index 01ac565a56a4..1ac5e6e2814e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
@@ -30,6 +30,8 @@ void intel_gt_mcr_multicast_write_fw(struct intel_gt *gt,
 u32 intel_gt_mcr_multicast_rmw(struct intel_gt *gt, i915_mcr_reg_t reg,
 			       u32 clear, u32 set);
 
+bool intel_gt_is_mcr_reg(struct intel_gt *gt, i915_reg_t reg);
+
 void intel_gt_mcr_get_nonterminated_steering(struct intel_gt *gt,
 					     i915_mcr_reg_t reg,
 					     u8 *group, u8 *instance);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 63724e17829a..6c3910c9dce5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -377,8 +377,12 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 	    CCS_MASK(engine->gt))
 		ret |= GUC_MMIO_REG_ADD(gt, regset, GEN12_RCU_MODE, true);
 
+	/* Check whether there is MCR register or not */
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
-		ret |= GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa->masked_reg);
+		if (intel_gt_is_mcr_reg(gt, wa->reg))
+			ret |= GUC_MCR_REG_ADD(gt, regset, wa->mcr_reg, wa->masked_reg);
+		else
+			ret |= GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa->masked_reg);
 
 	/* Be extra paranoid and include all whitelist registers. */
 	for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++)
-- 
2.25.1

