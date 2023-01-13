Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBD6668910
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 02:20:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFDC710E1B7;
	Fri, 13 Jan 2023 01:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 416BC10E1B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 01:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673572818; x=1705108818;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T0uHuSLcyrZNMGhGPOggJ9cyK3hE2hSA4EHAmHnIw6I=;
 b=hbqc8/53fOUbOIBiJ6opoC2Ptw4Vxyzr4sy5tn7basvpfEgsRz1I9VTO
 fMEOIZh0d1jsoHoqA+NNUnWK0CstSj+kjHv+//o1Kz95MpKcMcWySARjt
 RiY13tcMNQxhNUrZRgSMRLx0RwlhPk43+ljVHJk6ubm57TsmgO+o3iOrO
 l3b2z5ekUfy7DCpek7ni+tahnba0A7NMEXz+RfNfbFWmw48HPeEgBohqY
 1mBClGYrDyUZN5I3JjP64DYdMls4Vd460RkddLV1RdB5OJ+1c+5VcD85c
 egAqb/rnHtSQoLre/g7r1ti7zkM4cX6EO5wWLLMstxydLkmIpVmYPfuPk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="351116349"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="351116349"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 17:20:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="635600933"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="635600933"
Received: from ramyapad-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.13.135])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 17:20:15 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jan 2023 22:19:47 -0300
Message-Id: <20230113011947.9631-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Move LSC_CHICKEN_BIT* workarounds
 to correct function
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

That register doesn't belong to a specific engine, so the proper
placement for workarounds programming it should be
general_render_compute_wa_init().

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 65 ++++++++++++---------
 1 file changed, 36 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 6dacd0dc5c2c..bd40b8c93d24 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2325,10 +2325,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		/* Wa_1509727124 */
 		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
 				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
-
-		/* Wa_22013037850 */
-		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
-				DISABLE_128B_EVICTION_COMMAND_UDW);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
@@ -2357,21 +2353,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 				 GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX);
 	}
 
-	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
-	    IS_DG2_G11(i915)) {
-		/*
-		 * Wa_22012826095:dg2
-		 * Wa_22013059131:dg2
-		 */
-		wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
-				     MAXREQS_PER_BANK,
-				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
-
-		/* Wa_22013059131:dg2 */
-		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
-				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
-	}
-
 	/* Wa_1308578152:dg2_g10 when first gslice is fused off */
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) &&
 	    needs_wa_1308578152(engine)) {
@@ -2396,16 +2377,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 */
 		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
 				 MDQ_ARBITRATION_MODE | UGM_BACKUP_MODE);
-
-		/*
-		 * Wa_14010918519:dg2_g10
-		 *
-		 * LSC_CHICKEN_BIT_0 always reads back as 0 is this stepping,
-		 * so ignoring verification.
-		 */
-		wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
-			   FORCE_SLM_FENCE_SCOPE_TO_TILE | FORCE_UGM_FENCE_SCOPE_TO_TILE,
-			   0, false);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
@@ -2990,6 +2961,15 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 
 	add_render_compute_tuning_settings(i915, wal);
 
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
+	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
+		/* Wa_22013037850 */
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
+				DISABLE_128B_EVICTION_COMMAND_UDW);
+	}
+
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
 	    IS_PONTEVECCHIO(i915) ||
@@ -3011,6 +2991,33 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
 	}
 
+	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
+	    IS_DG2_G11(i915)) {
+		/*
+		 * Wa_22012826095:dg2
+		 * Wa_22013059131:dg2
+		 */
+		wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
+				     MAXREQS_PER_BANK,
+				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
+
+		/* Wa_22013059131:dg2 */
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
+				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
+	}
+
+	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
+		/*
+		 * Wa_14010918519:dg2_g10
+		 *
+		 * LSC_CHICKEN_BIT_0 always reads back as 0 is this stepping,
+		 * so ignoring verification.
+		 */
+		wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
+			   FORCE_SLM_FENCE_SCOPE_TO_TILE | FORCE_UGM_FENCE_SCOPE_TO_TILE,
+			   0, false);
+	}
+
 	if (IS_PONTEVECCHIO(i915)) {
 		/* Wa_16016694945 */
 		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
-- 
2.39.0

