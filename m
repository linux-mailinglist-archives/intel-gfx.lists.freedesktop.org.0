Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B3970766D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 01:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D06AF10E2E7;
	Wed, 17 May 2023 23:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D309510E4BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684366342; x=1715902342;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V9RPfXp2JsYjZNdhY6W+VvJi3e/HO9mj9rEQ8hGDclA=;
 b=ioNzjte9I0Pb+ttc9P02nNnY+aq3T4JRN67o2jsxn+xdxNc40Lr9rR6N
 vHCq4E27EOfL4dlxedG51H15SSxQ/gmf/oYkcbAOpKVbApoQO2408Gnpz
 CVKQ0XaFp/kdDkamjjqTGAqfAgxmI09g+AjhiQP/RSaJgqOvMRBsk4fP7
 BDjaaWM3hhseCppCX2EEHJwZCdjHcpOWsX+i2qgpcQD7pgN3nxvOH2iS0
 krWwJN1O99JY7iePVfPGY9hByLqNv3pVW8i30fgJIz5HtYVVn7Gyu0d0K
 3o6f5PI/Jo2ZKUGE2/iXz2HAcm6FcMNtpngx9PA5rPOe9l38If5Az1CDg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="355087911"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="355087911"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 16:32:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="732642909"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="732642909"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 16:32:21 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 16:31:10 -0700
Message-Id: <20230517233111.297542-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/2] drm/i915/mtl: Add MTL performance tuning
 changes
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

MTL reuses the tuning parameters for DG2. Extend the dg2
performance tuning parameters to MTL.

v2: Add DRAW_WATERMARK tuning parameter.
v3: Limit DRAW_WATERMARK tuning to non A0 step.
v4: Reorder platform checks.
    Restrict Blend fill caching optimization to Render GT.
v5: Move mtl tuning params to its own function

Bspec: 68331
Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 23 ++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 786349e95487..4d2dece96011 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -812,11 +812,25 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
 }
 
+static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
+				   struct i915_wa_list *wal)
+{
+	struct drm_i915_private *i915 = engine->i915;
+
+	dg2_ctx_gt_tuning_init(engine, wal);
+
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
+		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
+}
+
 static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
 				     struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
 
+	mtl_ctx_gt_tuning_init(engine, wal);
+
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
 		/* Wa_14014947963 */
@@ -1748,6 +1762,13 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
  */
 static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
 {
+	if (IS_METEORLAKE(gt->i915)) {
+		if (gt->type != GT_MEDIA)
+			wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
+
+		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
+	}
+
 	if (IS_PONTEVECCHIO(gt->i915)) {
 		wa_mcr_write(wal, XEHPC_L3SCRUB,
 			     SCRUB_CL_DWNGRADE_SHARED | SCRUB_RATE_4B_PER_CLK);
@@ -2944,7 +2965,7 @@ static void
 add_render_compute_tuning_settings(struct drm_i915_private *i915,
 				   struct i915_wa_list *wal)
 {
-	if (IS_DG2(i915))
+	if (IS_METEORLAKE(i915) || IS_DG2(i915))
 		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
 
 	/*
-- 
2.34.1

