Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBC6636628
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 17:49:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D82410E5B8;
	Wed, 23 Nov 2022 16:49:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5706E10E5B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 16:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669222173; x=1700758173;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QCmgyono1Q8yCkMfPWAQ7e7JS+tv46DSi9Ljpx+PFHQ=;
 b=cZ97UbrgR9sDMEFwuDjSwb9y64PaFELMO5ZcQWI7XD/JwX2k/GM2kVhn
 lfo/5bl3zKEjb9i/XKsl+AGFj2a/+1Uoyo427nFpZiOa28FmFrRbWVfG3
 KRO4NhU+vmdlXut5UXp1lf5TOfaHZNvWuwgh7Iza16+BNCReBma60kDgt
 YpufV6zTvcQlj3flD5gscLRFq9SCeRONPpy7VbyZA7j1zRySLcLXR1TEy
 w+atuWDnntrWUSvoIukT5LgviP1ormpK9QRInPMtsRcSGn+t2gPxeU+5c
 cD92d+5JbxfcztKqUSz4nLxpp0+XrN04V+WwntLgKzk3/ocsdMFTUu7DO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="340995659"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="340995659"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 08:49:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="766785208"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="766785208"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 08:49:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 18:49:16 +0200
Message-Id: <20221123164916.4128733-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: remove some limited use register
 access wrappers
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove rmw_set(), rmw_clear(), clear_register(), rmw_set_fw(), and
rmw_clear_fw(). They're just one too many levels of abstraction for
register access, for very specific purposes.

clear_register() seems like a micro-optimization bypassing the write
when the register is already clear, but that trick has ceased to work
since commit 06b975d58fd6 ("drm/i915: make intel_uncore_rmw() write
unconditionally"). Just clear the register in the most obvious way.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c    | 29 +++++++--------------------
 drivers/gpu/drm/i915/gt/intel_reset.c | 18 ++++-------------
 2 files changed, 11 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index b5ad9caa5537..efd9d722d77f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -210,21 +210,6 @@ int intel_gt_init_hw(struct intel_gt *gt)
 	return ret;
 }
 
-static void rmw_set(struct intel_uncore *uncore, i915_reg_t reg, u32 set)
-{
-	intel_uncore_rmw(uncore, reg, 0, set);
-}
-
-static void rmw_clear(struct intel_uncore *uncore, i915_reg_t reg, u32 clr)
-{
-	intel_uncore_rmw(uncore, reg, clr, 0);
-}
-
-static void clear_register(struct intel_uncore *uncore, i915_reg_t reg)
-{
-	intel_uncore_rmw(uncore, reg, 0, 0);
-}
-
 static void gen6_clear_engine_error_register(struct intel_engine_cs *engine)
 {
 	GEN6_RING_FAULT_REG_RMW(engine, RING_FAULT_VALID, 0);
@@ -250,14 +235,14 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
 	u32 eir;
 
 	if (GRAPHICS_VER(i915) != 2)
-		clear_register(uncore, PGTBL_ER);
+		intel_uncore_write(uncore, PGTBL_ER, 0);
 
 	if (GRAPHICS_VER(i915) < 4)
-		clear_register(uncore, IPEIR(RENDER_RING_BASE));
+		intel_uncore_write(uncore, IPEIR(RENDER_RING_BASE), 0);
 	else
-		clear_register(uncore, IPEIR_I965);
+		intel_uncore_write(uncore, IPEIR_I965, 0);
 
-	clear_register(uncore, EIR);
+	intel_uncore_write(uncore, EIR, 0);
 	eir = intel_uncore_read(uncore, EIR);
 	if (eir) {
 		/*
@@ -265,7 +250,7 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
 		 * mask them.
 		 */
 		drm_dbg(&gt->i915->drm, "EIR stuck: 0x%08x, masking\n", eir);
-		rmw_set(uncore, EMR, eir);
+		intel_uncore_rmw(uncore, EMR, 0, eir);
 		intel_uncore_write(uncore, GEN2_IIR,
 				   I915_MASTER_ERROR_INTERRUPT);
 	}
@@ -275,10 +260,10 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
 					   RING_FAULT_VALID, 0);
 		intel_gt_mcr_read_any(gt, XEHP_RING_FAULT_REG);
 	} else if (GRAPHICS_VER(i915) >= 12) {
-		rmw_clear(uncore, GEN12_RING_FAULT_REG, RING_FAULT_VALID);
+		intel_uncore_rmw(uncore, GEN12_RING_FAULT_REG, RING_FAULT_VALID, 0);
 		intel_uncore_posting_read(uncore, GEN12_RING_FAULT_REG);
 	} else if (GRAPHICS_VER(i915) >= 8) {
-		rmw_clear(uncore, GEN8_RING_FAULT_REG, RING_FAULT_VALID);
+		intel_uncore_rmw(uncore, GEN8_RING_FAULT_REG, RING_FAULT_VALID, 0);
 		intel_uncore_posting_read(uncore, GEN8_RING_FAULT_REG);
 	} else if (GRAPHICS_VER(i915) >= 6) {
 		struct intel_engine_cs *engine;
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 24736ebee17c..ffde89c5835a 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -35,16 +35,6 @@
 /* XXX How to handle concurrent GGTT updates using tiling registers? */
 #define RESET_UNDER_STOP_MACHINE 0
 
-static void rmw_set_fw(struct intel_uncore *uncore, i915_reg_t reg, u32 set)
-{
-	intel_uncore_rmw_fw(uncore, reg, 0, set);
-}
-
-static void rmw_clear_fw(struct intel_uncore *uncore, i915_reg_t reg, u32 clr)
-{
-	intel_uncore_rmw_fw(uncore, reg, clr, 0);
-}
-
 static void client_mark_guilty(struct i915_gem_context *ctx, bool banned)
 {
 	struct drm_i915_file_private *file_priv = ctx->file_priv;
@@ -212,7 +202,7 @@ static int g4x_do_reset(struct intel_gt *gt,
 	int ret;
 
 	/* WaVcpClkGateDisableForMediaReset:ctg,elk */
-	rmw_set_fw(uncore, VDECCLK_GATE_D, VCP_UNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw_fw(uncore, VDECCLK_GATE_D, 0, VCP_UNIT_CLOCK_GATE_DISABLE);
 	intel_uncore_posting_read_fw(uncore, VDECCLK_GATE_D);
 
 	pci_write_config_byte(pdev, I915_GDRST,
@@ -234,7 +224,7 @@ static int g4x_do_reset(struct intel_gt *gt,
 out:
 	pci_write_config_byte(pdev, I915_GDRST, 0);
 
-	rmw_clear_fw(uncore, VDECCLK_GATE_D, VCP_UNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw_fw(uncore, VDECCLK_GATE_D, VCP_UNIT_CLOCK_GATE_DISABLE, 0);
 	intel_uncore_posting_read_fw(uncore, VDECCLK_GATE_D);
 
 	return ret;
@@ -448,7 +438,7 @@ static int gen11_lock_sfc(struct intel_engine_cs *engine,
 	 * to reset it as well (we will unlock it once the reset sequence is
 	 * completed).
 	 */
-	rmw_set_fw(uncore, sfc_lock.lock_reg, sfc_lock.lock_bit);
+	intel_uncore_rmw_fw(uncore, sfc_lock.lock_reg, 0, sfc_lock.lock_bit);
 
 	ret = __intel_wait_for_register_fw(uncore,
 					   sfc_lock.ack_reg,
@@ -498,7 +488,7 @@ static void gen11_unlock_sfc(struct intel_engine_cs *engine)
 
 	get_sfc_forced_lock_data(engine, &sfc_lock);
 
-	rmw_clear_fw(uncore, sfc_lock.lock_reg, sfc_lock.lock_bit);
+	intel_uncore_rmw_fw(uncore, sfc_lock.lock_reg, sfc_lock.lock_bit, 0);
 }
 
 static int __gen11_reset_engines(struct intel_gt *gt,
-- 
2.34.1

