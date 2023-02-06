Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFA868C3E8
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 17:54:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686CE10E422;
	Mon,  6 Feb 2023 16:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB3610E420;
 Mon,  6 Feb 2023 16:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675702475; x=1707238475;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IninUJUC1RJ2IBUp/eK41d8ykNSXgUnGq50RF+/utwk=;
 b=KdB6wh0A7kMRGa8Kp2V2aO9RqLeWl21d9w9NXR3EF4AkPxfuuc2IrLmv
 FB9uujkBbmH8V7jjrnnJABnsRMJT6YbBK/BHe5UJJW/6sWh6oZ2Jv/HId
 sWjYDFiJN15Ir8fad4mPGeAJYUUJXD7EkKfhO2CcLVy/Gs3fIARdAfQtA
 fT9fEzCRZY5pf9NDZSnhZA8w746pqzLyV11pRXoWUI2wjJuXqXWYLtRDd
 e/64I/1iVTZKBukllWzXBXgLqLgPfP6cGVFvmu1nfFC6Lyh4MpFOjRBk7
 paNlrRGGFdUn1XdoaaAmX0VJKI5dYHjhs5/mDe5fsBtL2BB1NNpJd2id5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="326939654"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="326939654"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:54:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="840410621"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="840410621"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:54:33 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Feb 2023 08:54:09 -0800
Message-Id: <20230206165410.3056073-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: Fix GEN8_MISCCPCTL
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
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Register 0x9424 is not replicated on any platform, so it shouldn't be
declared with REG_MCR(). Declaring it with _MMIO() is basically
duplicate of the GEN7 version, so just remove the GEN8 and change all
the callers to use the right functions.

Old versions of the gen8 bspec page used to contain a table with MCR
registers, apparently implying 0x9400 - 0x94ff registers were
replicated. However that table went away and there is no information
related to the ranges for gen8 anymore. Moreover the current behavior of
the driver wouldn't do anything special for 0x9424 since there is no
equivalent table in intel_gt_mcr.c: the driver would just fallback to
intel_uncore_{read,write}(). Therefore, do not care about the possible
special case for gen8 and just use the register as non-MCR for all the
platforms.

One place doing read + write is also converted to intel_uncore_rmw().

v2: Reword commit message adding the justification wrt gen8

Fixes: a9e69428b1b4 ("drm/i915: Define MCR registers explicitly")
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  5 +----
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c   |  5 ++---
 drivers/gpu/drm/i915/intel_pm.c             | 10 +++++-----
 4 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 7fa18a3b3957..cc1539c7a6b6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -686,10 +686,7 @@
 #define GEN6_RSTCTL				_MMIO(0x9420)
 
 #define GEN7_MISCCPCTL				_MMIO(0x9424)
-#define   GEN7_DOP_CLOCK_GATE_ENABLE		(1 << 0)
-
-#define GEN8_MISCCPCTL				MCR_REG(0x9424)
-#define   GEN8_DOP_CLOCK_GATE_ENABLE		REG_BIT(0)
+#define   GEN7_DOP_CLOCK_GATE_ENABLE		REG_BIT(0)
 #define   GEN12_DOP_CLOCK_GATE_RENDER_ENABLE	REG_BIT(1)
 #define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
 #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 29718d0595f4..cfc122c17e28 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1645,7 +1645,7 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
 
 	/* Wa_14015795083 */
-	wa_mcr_write_clr(wal, GEN8_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
+	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 
 	/* Wa_18018781329 */
 	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
@@ -1664,7 +1664,7 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	pvc_init_mcr(gt, wal);
 
 	/* Wa_14015795083 */
-	wa_mcr_write_clr(wal, GEN8_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
+	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 
 	/* Wa_18018781329 */
 	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index 3d2249bda368..69133420c78b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -39,9 +39,8 @@ static void guc_prepare_xfer(struct intel_gt *gt)
 
 	if (GRAPHICS_VER(uncore->i915) == 9) {
 		/* DOP Clock Gating Enable for GuC clocks */
-		intel_gt_mcr_multicast_write(gt, GEN8_MISCCPCTL,
-					     GEN8_DOP_CLOCK_GATE_GUC_ENABLE |
-					     intel_gt_mcr_read_any(gt, GEN8_MISCCPCTL));
+		intel_uncore_rmw(uncore, GEN7_MISCCPCTL, 0,
+				 GEN8_DOP_CLOCK_GATE_GUC_ENABLE);
 
 		/* allows for 5us (in 10ns units) before GT can go to RC6 */
 		intel_uncore_write(uncore, GUC_ARAT_C6DIS, 0x1FF);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index e0364c4141b8..798607959458 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4300,8 +4300,8 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
 	u32 val;
 
 	/* WaTempDisableDOPClkGating:bdw */
-	misccpctl = intel_gt_mcr_multicast_rmw(to_gt(dev_priv), GEN8_MISCCPCTL,
-					       GEN8_DOP_CLOCK_GATE_ENABLE, 0);
+	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL,
+				     GEN7_DOP_CLOCK_GATE_ENABLE, 0);
 
 	val = intel_gt_mcr_read_any(to_gt(dev_priv), GEN8_L3SQCREG1);
 	val &= ~L3_PRIO_CREDITS_MASK;
@@ -4315,7 +4315,7 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
 	 */
 	intel_gt_mcr_read_any(to_gt(dev_priv), GEN8_L3SQCREG1);
 	udelay(1);
-	intel_gt_mcr_multicast_write(to_gt(dev_priv), GEN8_MISCCPCTL, misccpctl);
+	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl);
 }
 
 static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -4453,8 +4453,8 @@ static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
 	gen9_init_clock_gating(dev_priv);
 
 	/* WaDisableDopClockGating:skl */
-	intel_gt_mcr_multicast_rmw(to_gt(dev_priv), GEN8_MISCCPCTL,
-				   GEN8_DOP_CLOCK_GATE_ENABLE, 0);
+	intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL,
+			 GEN7_DOP_CLOCK_GATE_ENABLE, 0);
 
 	/* WAC6entrylatency:skl */
 	intel_uncore_rmw(&dev_priv->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
-- 
2.39.0

