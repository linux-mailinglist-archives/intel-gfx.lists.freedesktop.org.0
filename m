Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EB9672229
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 16:53:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 335B010E775;
	Wed, 18 Jan 2023 15:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0117110E788
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 15:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674057196; x=1705593196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ltpi4pv4JqN6PKM0UaG5lK7TABDpQx0qtttm3CB1QKs=;
 b=Kyjy8SlKIRgEJ5auG+XzovlTQceOBzJXi7/3X3icN5vD1dKbFZKfnYbC
 0GYLMQn1St/2Jj77sYs0tZ9dpXTCP0J5Z5IhJ0z0nk7N9ea0iOd0DlGXj
 PcA8mD9KVrLFwJRmQkjvsSQn6N7HmohFpycjfu5MDxE6x5KgGZExY44ws
 gBTpD9HLSrmJLpB9xrl5178UdDNawZmlRAmNdwKRqZmzX+MgZbI7071C0
 yDynR5HsgTmLMy96Xw2ZSFCH2JRONbyIPJLCXjwPkc32GSVUifQwFQp9L
 mJSIgfBu28IUV4cUENy9ZDMt2doTv5Y2Au5UD4lK75ez9oKfpYOwTNhob Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="411249694"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="411249694"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:53:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="802236758"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="802236758"
Received: from sgunturi-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.213.185.74])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:53:00 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 12:52:49 -0300
Message-Id: <20230118155249.41551-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118155249.41551-1-gustavo.sousa@intel.com>
References: <20230118155249.41551-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/gt: Move LSC_CHICKEN_BIT*
 workarounds to correct function
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
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
index ef6065ce8267..918a271447e2 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2341,10 +2341,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		/* Wa_1509727124 */
 		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
 				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
-
-		/* Wa_22013037850 */
-		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
-				DISABLE_128B_EVICTION_COMMAND_UDW);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
@@ -2373,21 +2369,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
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
@@ -2412,16 +2393,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
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
@@ -3006,6 +2977,15 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 
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
@@ -3027,6 +3007,33 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
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

