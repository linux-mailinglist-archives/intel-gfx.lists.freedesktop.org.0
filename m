Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3845BD776
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 00:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A321410E1CE;
	Mon, 19 Sep 2022 22:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2B1310E18E;
 Mon, 19 Sep 2022 22:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663626790; x=1695162790;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nR29ocO/Kq2FFlvK0fSBCib/wIEPrCvdWeGOUUR4TJ4=;
 b=Cs515yF7XET0QjQ92n7N5OAWG+cdGfV16r+gndA3PH4Mn6qjrSb7tfrh
 18DBtNG+m0Na25qwXeiNT+iI5IAwPRNGJrr/KEl6YTgjAe2eBgPIbV6nQ
 MCw2KABuQoVbnkZGS1L4MnuQ/kXE/ytjr1YWpfG79IROs0VeZFrHN8FQ8
 5JyftLGITDy4iYRrTECxVC+S1vjlMbk3fm/HKZjaAdp9HZq0yJ+Hjn+dW
 qgN4QQ4MfktsRWJqMApAZoCPQy1LVHfFda5/svMPwGr8YEeoc+4XNt6cu
 zYIVpS/gaQdIkCx+BwiFjOgj/KeBZ2wS0C6+xSZ+iIKHcqajleutZCOXD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="286585484"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="286585484"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 15:33:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="794030776"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 15:33:08 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Sep 2022 15:32:54 -0700
Message-Id: <20220919223259.263525-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220919223259.263525-1-matthew.d.roper@intel.com>
References: <20220919223259.263525-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/12] drm/i915/gt: Always use MCR functions on
 multicast registers
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

Rather than relying on the implicit behavior of intel_uncore_*()
functions, let's always use the intel_gt_mcr_*() functions to operate on
multicast/replicated registers.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c      |  4 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c       | 49 ++++++++++++-----------
 drivers/gpu/drm/i915/gt/intel_gtt.h       |  2 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c      | 13 +++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c | 12 ++++--
 drivers/gpu/drm/i915/intel_pm.c           | 20 +++++----
 6 files changed, 55 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 30cf5c3369d9..e2620f41d8b2 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -986,7 +986,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 
 	ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
 
-	setup_private_pat(ggtt->vm.gt->uncore);
+	setup_private_pat(ggtt->vm.gt);
 
 	return ggtt_probe_common(ggtt, size);
 }
@@ -1302,7 +1302,7 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
 		wbinvd_on_all_cpus();
 
 	if (GRAPHICS_VER(ggtt->vm.i915) >= 8)
-		setup_private_pat(ggtt->vm.gt->uncore);
+		setup_private_pat(ggtt->vm.gt);
 
 	intel_ggtt_restore_fences(ggtt);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 601d89b4feb1..6f61c8da0b61 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -15,6 +15,7 @@
 #include "i915_trace.h"
 #include "i915_utils.h"
 #include "intel_gt.h"
+#include "intel_gt_mcr.h"
 #include "intel_gt_regs.h"
 #include "intel_gtt.h"
 
@@ -477,27 +478,27 @@ void gtt_write_workarounds(struct intel_gt *gt)
 	}
 }
 
-static void tgl_setup_private_ppat(struct intel_uncore *uncore)
+static void tgl_setup_private_ppat(struct intel_gt *gt)
 {
-	if (GRAPHICS_VER_FULL(uncore->i915) >= IP_VER(12, 50)) {
-		intel_uncore_write(uncore, XEHP_PAT_INDEX(0), GEN8_PPAT_WB);
-		intel_uncore_write(uncore, XEHP_PAT_INDEX(1), GEN8_PPAT_WC);
-		intel_uncore_write(uncore, XEHP_PAT_INDEX(2), GEN8_PPAT_WT);
-		intel_uncore_write(uncore, XEHP_PAT_INDEX(3), GEN8_PPAT_UC);
-		intel_uncore_write(uncore, XEHP_PAT_INDEX(4), GEN8_PPAT_WB);
-		intel_uncore_write(uncore, XEHP_PAT_INDEX(5), GEN8_PPAT_WB);
-		intel_uncore_write(uncore, XEHP_PAT_INDEX(6), GEN8_PPAT_WB);
-		intel_uncore_write(uncore, XEHP_PAT_INDEX(7), GEN8_PPAT_WB);
+	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50)) {
+		intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(0), GEN8_PPAT_WB);
+		intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(1), GEN8_PPAT_WC);
+		intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(2), GEN8_PPAT_WT);
+		intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(3), GEN8_PPAT_UC);
+		intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(4), GEN8_PPAT_WB);
+		intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(5), GEN8_PPAT_WB);
+		intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(6), GEN8_PPAT_WB);
+		intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(7), GEN8_PPAT_WB);
 	} else {
 		/* TGL doesn't support LLC or AGE settings */
-		intel_uncore_write(uncore, GEN12_PAT_INDEX(0), GEN8_PPAT_WB);
-		intel_uncore_write(uncore, GEN12_PAT_INDEX(1), GEN8_PPAT_WC);
-		intel_uncore_write(uncore, GEN12_PAT_INDEX(2), GEN8_PPAT_WT);
-		intel_uncore_write(uncore, GEN12_PAT_INDEX(3), GEN8_PPAT_UC);
-		intel_uncore_write(uncore, GEN12_PAT_INDEX(4), GEN8_PPAT_WB);
-		intel_uncore_write(uncore, GEN12_PAT_INDEX(5), GEN8_PPAT_WB);
-		intel_uncore_write(uncore, GEN12_PAT_INDEX(6), GEN8_PPAT_WB);
-		intel_uncore_write(uncore, GEN12_PAT_INDEX(7), GEN8_PPAT_WB);
+		intel_uncore_write(gt->uncore, GEN12_PAT_INDEX(0), GEN8_PPAT_WB);
+		intel_uncore_write(gt->uncore, GEN12_PAT_INDEX(1), GEN8_PPAT_WC);
+		intel_uncore_write(gt->uncore, GEN12_PAT_INDEX(2), GEN8_PPAT_WT);
+		intel_uncore_write(gt->uncore, GEN12_PAT_INDEX(3), GEN8_PPAT_UC);
+		intel_uncore_write(gt->uncore, GEN12_PAT_INDEX(4), GEN8_PPAT_WB);
+		intel_uncore_write(gt->uncore, GEN12_PAT_INDEX(5), GEN8_PPAT_WB);
+		intel_uncore_write(gt->uncore, GEN12_PAT_INDEX(6), GEN8_PPAT_WB);
+		intel_uncore_write(gt->uncore, GEN12_PAT_INDEX(7), GEN8_PPAT_WB);
 	}
 }
 
@@ -593,20 +594,20 @@ static void chv_setup_private_ppat(struct intel_uncore *uncore)
 	intel_uncore_write(uncore, GEN8_PRIVATE_PAT_HI, upper_32_bits(pat));
 }
 
-void setup_private_pat(struct intel_uncore *uncore)
+void setup_private_pat(struct intel_gt *gt)
 {
-	struct drm_i915_private *i915 = uncore->i915;
+	struct drm_i915_private *i915 = gt->i915;
 
 	GEM_BUG_ON(GRAPHICS_VER(i915) < 8);
 
 	if (GRAPHICS_VER(i915) >= 12)
-		tgl_setup_private_ppat(uncore);
+		tgl_setup_private_ppat(gt);
 	else if (GRAPHICS_VER(i915) >= 11)
-		icl_setup_private_ppat(uncore);
+		icl_setup_private_ppat(gt->uncore);
 	else if (IS_CHERRYVIEW(i915) || IS_GEN9_LP(i915))
-		chv_setup_private_ppat(uncore);
+		chv_setup_private_ppat(gt->uncore);
 	else
-		bdw_setup_private_ppat(uncore);
+		bdw_setup_private_ppat(gt->uncore);
 }
 
 struct i915_vma *
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index c0ca53cba9f0..5236c60f2a68 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -667,7 +667,7 @@ void ppgtt_unbind_vma(struct i915_address_space *vm,
 
 void gtt_write_workarounds(struct intel_gt *gt);
 
-void setup_private_pat(struct intel_uncore *uncore);
+void setup_private_pat(struct intel_gt *gt);
 
 int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
 			   struct i915_vm_pt_stash *stash,
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 06643701bf24..89ef1e06bf1d 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -7,6 +7,7 @@
 
 #include "intel_engine.h"
 #include "intel_gt.h"
+#include "intel_gt_mcr.h"
 #include "intel_gt_regs.h"
 #include "intel_mocs.h"
 #include "intel_ring.h"
@@ -601,17 +602,17 @@ static u32 l3cc_combine(u16 low, u16 high)
 	     0; \
 	     i++)
 
-static void init_l3cc_table(struct intel_uncore *uncore,
+static void init_l3cc_table(struct intel_gt *gt,
 			    const struct drm_i915_mocs_table *table)
 {
 	unsigned int i;
 	u32 l3cc;
 
 	for_each_l3cc(l3cc, table, i)
-		if (GRAPHICS_VER_FULL(uncore->i915) >= IP_VER(12, 50))
-			intel_uncore_write_fw(uncore, XEHP_LNCFCMOCS(i), l3cc);
+		if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50))
+			intel_gt_mcr_multicast_write_fw(gt, XEHP_LNCFCMOCS(i), l3cc);
 		else
-			intel_uncore_write_fw(uncore, GEN9_LNCFCMOCS(i), l3cc);
+			intel_uncore_write_fw(gt->uncore, GEN9_LNCFCMOCS(i), l3cc);
 }
 
 void intel_mocs_init_engine(struct intel_engine_cs *engine)
@@ -631,7 +632,7 @@ void intel_mocs_init_engine(struct intel_engine_cs *engine)
 		init_mocs_table(engine, &table);
 
 	if (flags & HAS_RENDER_L3CC && engine->class == RENDER_CLASS)
-		init_l3cc_table(engine->uncore, &table);
+		init_l3cc_table(engine->gt, &table);
 }
 
 static u32 global_mocs_offset(void)
@@ -667,7 +668,7 @@ void intel_mocs_init(struct intel_gt *gt)
 	 * memory transactions including guc transactions
 	 */
 	if (flags & HAS_RENDER_L3CC)
-		init_l3cc_table(gt->uncore, &table);
+		init_l3cc_table(gt, &table);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index 9229243992c2..5b86b2e286e0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -10,12 +10,15 @@
  */
 
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_mcr.h"
 #include "gt/intel_gt_regs.h"
 #include "intel_guc_fw.h"
 #include "i915_drv.h"
 
-static void guc_prepare_xfer(struct intel_uncore *uncore)
+static void guc_prepare_xfer(struct intel_gt *gt)
 {
+	struct intel_uncore *uncore = gt->uncore;
+
 	u32 shim_flags = GUC_ENABLE_READ_CACHE_LOGIC |
 			 GUC_ENABLE_READ_CACHE_FOR_SRAM_DATA |
 			 GUC_ENABLE_READ_CACHE_FOR_WOPCM_DATA |
@@ -35,8 +38,9 @@ static void guc_prepare_xfer(struct intel_uncore *uncore)
 
 	if (GRAPHICS_VER(uncore->i915) == 9) {
 		/* DOP Clock Gating Enable for GuC clocks */
-		intel_uncore_rmw(uncore, GEN8_MISCCPCTL,
-				 0, GEN8_DOP_CLOCK_GATE_GUC_ENABLE);
+		intel_gt_mcr_multicast_write(gt, GEN8_MISCCPCTL,
+					     GEN8_DOP_CLOCK_GATE_GUC_ENABLE |
+					     intel_gt_mcr_read_any(gt, GEN8_MISCCPCTL));
 
 		/* allows for 5us (in 10ns units) before GT can go to RC6 */
 		intel_uncore_write(uncore, GUC_ARAT_C6DIS, 0x1FF);
@@ -168,7 +172,7 @@ int intel_guc_fw_upload(struct intel_guc *guc)
 	struct intel_uncore *uncore = gt->uncore;
 	int ret;
 
-	guc_prepare_xfer(uncore);
+	guc_prepare_xfer(gt);
 
 	/*
 	 * Note that GuC needs the CSS header plus uKernel code to be copied
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 1aa77b18fd3c..fd1286d1908c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -30,6 +30,8 @@
 #include "display/skl_watermark.h"
 
 #include "gt/intel_engine_regs.h"
+#include "gt/intel_gt.h"
+#include "gt/intel_gt_mcr.h"
 #include "gt/intel_gt_regs.h"
 
 #include "i915_drv.h"
@@ -4325,22 +4327,23 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
 	u32 val;
 
 	/* WaTempDisableDOPClkGating:bdw */
-	misccpctl = intel_uncore_read(&dev_priv->uncore, GEN8_MISCCPCTL);
-	intel_uncore_write(&dev_priv->uncore, GEN8_MISCCPCTL, misccpctl & ~GEN8_DOP_CLOCK_GATE_ENABLE);
+	misccpctl = intel_gt_mcr_read_any(to_gt(dev_priv), GEN8_MISCCPCTL);
+	intel_gt_mcr_multicast_write(to_gt(dev_priv), GEN8_MISCCPCTL,
+				     misccpctl & ~GEN8_DOP_CLOCK_GATE_ENABLE);
 
-	val = intel_uncore_read(&dev_priv->uncore, GEN8_L3SQCREG1);
+	val = intel_gt_mcr_read_any(to_gt(dev_priv), GEN8_L3SQCREG1);
 	val &= ~L3_PRIO_CREDITS_MASK;
 	val |= L3_GENERAL_PRIO_CREDITS(general_prio_credits);
 	val |= L3_HIGH_PRIO_CREDITS(high_prio_credits);
-	intel_uncore_write(&dev_priv->uncore, GEN8_L3SQCREG1, val);
+	intel_gt_mcr_multicast_write(to_gt(dev_priv), GEN8_L3SQCREG1, val);
 
 	/*
 	 * Wait at least 100 clocks before re-enabling clock gating.
 	 * See the definition of L3SQCREG1 in BSpec.
 	 */
-	intel_uncore_posting_read(&dev_priv->uncore, GEN8_L3SQCREG1);
+	intel_gt_mcr_read_any(to_gt(dev_priv), GEN8_L3SQCREG1);
 	udelay(1);
-	intel_uncore_write(&dev_priv->uncore, GEN8_MISCCPCTL, misccpctl);
+	intel_gt_mcr_multicast_write(to_gt(dev_priv), GEN8_MISCCPCTL, misccpctl);
 }
 
 static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -4500,8 +4503,9 @@ static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
 	gen9_init_clock_gating(dev_priv);
 
 	/* WaDisableDopClockGating:skl */
-	intel_uncore_write(&dev_priv->uncore, GEN8_MISCCPCTL, intel_uncore_read(&dev_priv->uncore, GEN8_MISCCPCTL) &
-		   ~GEN8_DOP_CLOCK_GATE_ENABLE);
+	intel_gt_mcr_multicast_write(to_gt(dev_priv), GEN8_MISCCPCTL,
+				     intel_gt_mcr_read_any(to_gt(dev_priv), GEN8_MISCCPCTL) &
+				     ~GEN8_DOP_CLOCK_GATE_ENABLE);
 
 	/* WAC6entrylatency:skl */
 	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |
-- 
2.37.3

