Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F4D691449
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 00:22:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDB5610EBF6;
	Thu,  9 Feb 2023 23:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB81910EBF6
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Feb 2023 23:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675984953; x=1707520953;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hwyaMv5JrtDQClAoEBmYU6tp8N19nrA5DHAxDd8MLZw=;
 b=aTx+eh0QThJIpNQXd0l9URSnHYVsDjcrE32OSD3SOw6xgV0wG2XnXGhH
 QmsdGaI9eLUyKHX0p6Gp2Tp3t9RNhkaJNKsdiL13wiguhNQo739w6hfu7
 kB8aqtPa5BjA7SIGBXBEtxZdPF20NPngffr4hyU2xdYJ1vzjN9bjSNdJl
 PN3X3uLCpMT4TvNHon3wZe1j7m39b5IAvZGlSBtwWlSFE6UUfSX8z9o42
 /1oPN5fMzJZOubkdQNaYZBi+pQnMae8GXjRjGoIrwD2+jQhfSf55aLTnI
 nIbCV+QShQdulzWpP3AUXdowGB8T9wUZsKYn+74S0c7wPo/WcYPsMwlZ/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="416505837"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="416505837"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 15:22:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="756588974"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="756588974"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 15:22:33 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Feb 2023 15:22:28 -0800
Message-Id: <20230209232228.859317-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/xehp: LNCF/LBCF workarounds should
 be on the GT list
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

Although registers in the L3 bank/node configuration ranges are marked
as having "DEV" reset characteristics in the bspec, this appears to be a
hold-over from pre-Xe_HP platforms.  In reality, these registers
maintain their values across engine resets, meaning that workarounds
and tuning settings targetting them should be placed on the GT
workaround list rather than an engine workaround list.

Note that an extra clue here is that these registers moved from the
RENDER forcewake domain to the GT forcewake domain in Xe_HP; generally
RCS/CCS engine resets should not lead to the reset of a register that
lives outside the RENDER domain.

Re-applying these registers on engine resets wouldn't actually hurt
anything, but is unnecessary and just makes it more confusing to anyone
trying to decipher how these registers really work.

v2:
 - Also move DG2's Wa_14010648519 to the GT list.  (Gustavo)

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 70 ++++++++++++---------
 1 file changed, 42 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 8859eb118510..989e9578e122 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1499,6 +1499,12 @@ xehpsdv_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	/* Wa_1409757795:xehpsdv */
 	wa_mcr_write_or(wal, SCCGCTL94DC, CG3DDISURB);
 
+	/* Wa_18011725039:xehpsdv */
+	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A1, STEP_B0)) {
+		wa_mcr_masked_dis(wal, MLTICTXCTL, TDONRENDER);
+		wa_mcr_write_or(wal, L3SQCREG1_CCS0, FLUSHALLNONCOH);
+	}
+
 	/* Wa_16011155590:xehpsdv */
 	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
@@ -1548,6 +1554,9 @@ xehpsdv_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	/* Wa_14014368820:xehpsdv */
 	wa_mcr_write_or(wal, XEHP_GAMCNTRL_CTRL,
 			INVALIDATION_BROADCAST_MODE_DIS | GLOBAL_INVALIDATION_MODE);
+
+	/* Wa_14010670810:xehpsdv */
+	wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
 }
 
 static void
@@ -1669,6 +1678,9 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	/* Wa_1509235366:dg2 */
 	wa_mcr_write_or(wal, XEHP_GAMCNTRL_CTRL,
 			INVALIDATION_BROADCAST_MODE_DIS | GLOBAL_INVALIDATION_MODE);
+
+	/* Wa_14010648519:dg2 */
+	wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
 }
 
 static void
@@ -1684,6 +1696,9 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
 	wa_mcr_write_or(wal, XEHP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
 	wa_mcr_write_or(wal, XEHP_VEBX_MOD_CTRL, FORCE_MISS_FTLB);
+
+	/* Wa_16016694945 */
+	wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
 }
 
 static void
@@ -1724,11 +1739,36 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	debug_dump_steering(gt);
 }
 
+/*
+ * The bspec performance guide has recommended MMIO tuning settings.  These
+ * aren't truly "workarounds" but we want to program them through the
+ * workaround infrastructure to make sure they're (re)applied at the proper
+ * times.
+ *
+ * The settings in this function are for settings that persist through
+ * engine resets and also are not part of any engine's register state context.
+ * I.e., settings that only need to be re-applied in the event of a full GT
+ * reset.
+ */
+static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
+{
+	if (IS_PONTEVECCHIO(gt->i915)) {
+		wa_mcr_write(wal, XEHPC_L3SCRUB,
+			     SCRUB_CL_DWNGRADE_SHARED | SCRUB_RATE_4B_PER_CLK);
+		wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_HOSTCACHEEN);
+	}
+
+	if (IS_DG2(gt->i915))
+		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
+}
+
 static void
 gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = gt->i915;
 
+	gt_tuning_settings(gt, wal);
+
 	if (gt->type == GT_MEDIA) {
 		if (MEDIA_VER(i915) >= 13)
 			xelpmp_gt_workarounds_init(gt, wal);
@@ -2403,16 +2443,12 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 				 MDQ_ARBITRATION_MODE | UGM_BACKUP_MODE);
 	}
 
-	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
+	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0))
 		/* Wa_22010430635:dg2 */
 		wa_mcr_masked_en(wal,
 				 GEN9_ROW_CHICKEN4,
 				 GEN12_DISABLE_GRF_CLEAR);
 
-		/* Wa_14010648519:dg2 */
-		wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
-	}
-
 	/* Wa_14013202645:dg2 */
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0))
@@ -2897,16 +2933,8 @@ static void
 add_render_compute_tuning_settings(struct drm_i915_private *i915,
 				   struct i915_wa_list *wal)
 {
-	if (IS_PONTEVECCHIO(i915)) {
-		wa_mcr_write(wal, XEHPC_L3SCRUB,
-			     SCRUB_CL_DWNGRADE_SHARED | SCRUB_RATE_4B_PER_CLK);
-		wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_HOSTCACHEEN);
-	}
-
-	if (IS_DG2(i915)) {
-		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
+	if (IS_DG2(i915))
 		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
-	}
 
 	/*
 	 * This tuning setting proves beneficial only on ATS-M designs; the
@@ -2988,11 +3016,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 			   0, false);
 	}
 
-	if (IS_PONTEVECCHIO(i915)) {
-		/* Wa_16016694945 */
-		wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
-	}
-
 	if (IS_XEHPSDV(i915)) {
 		/* Wa_1409954639 */
 		wa_mcr_masked_en(wal,
@@ -3004,18 +3027,9 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 				 GEN9_ROW_CHICKEN4,
 				 GEN12_DISABLE_GRF_CLEAR);
 
-		/* Wa_14010670810:xehpsdv */
-		wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
-
 		/* Wa_14010449647:xehpsdv */
 		wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
 				 GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
-
-		/* Wa_18011725039:xehpsdv */
-		if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A1, STEP_B0)) {
-			wa_mcr_masked_dis(wal, MLTICTXCTL, TDONRENDER);
-			wa_mcr_write_or(wal, L3SQCREG1_CCS0, FLUSHALLNONCOH);
-		}
 	}
 
 	if (IS_DG2(i915) || IS_PONTEVECCHIO(i915)) {
-- 
2.39.1

