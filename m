Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B93743B01
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 13:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F26D110E454;
	Fri, 30 Jun 2023 11:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AD0010E454
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 11:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688125220; x=1719661220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XCtdBLGfXv6pGbMSUmzAWcY+BVSPnHb0Z9TXsz6Kr1Q=;
 b=O/N2nIFIod8Ot4xvWmJb/+KJPEAXPwC8urAuCf4K1dSsQXTtqfVHe4S7
 vcvupg6GqkG1kcCGL4EQs8zIblZdxtlb8Tt4V/FW/Uu8Z98Ne5eaCR8Kw
 yxI7YXUefqVy5GRbug+8qlgJQ8+BBi1DQOeALrSabVkEpLgXOXaDlAX++
 PnFL9DC4wv+N78HfCcSpfwjaPFMJINji+qu9QyfmAR6ImDe2QNkJ52scj
 le/pcWKQUMgrGbggBEx00cYMFq69g0oT3HTAL9NE42KaY/Uppsdwmt4lX
 v7ILaoWnSu7ZG0SL2O7X/FcY/MqeJbIZN7WOzn86RSF5T97dKFhJTFAMl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="342713777"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; d="scan'208";a="342713777"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 04:40:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="891731695"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; d="scan'208";a="891731695"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga005.jf.intel.com with ESMTP; 30 Jun 2023 04:40:16 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jun 2023 17:10:10 +0530
Message-Id: <20230630114010.508930-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616114200.3228284-12-dnyaneshwar.bhadane@intel.com>
References: <20230616114200.3228284-12-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2] drm/i915/mtl: s/MTL/METEORLAKE for
 platform/subplatform defines
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow consistent naming convention. Replace MTL with
METEORLAKE. Added defines that are replacing IS_MTL_GRAPHICS_STEP with
IS_METEORLAKE_P_GRAPHICS_STEP and IS_METEORLAKE_M_GRAPHICS_STEP.

v2:
- Replace IS_MLT_GRAPHICS_STEP with IS_METEROLAKE_(P/M)_GRAPHICS_STEP (Tvrtko).
- Changed subject prefix mtl with MTL (Anusha)

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <Anusha.Srivatsa@intel.com>

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 10 ++---
 .../drm/i915/display/skl_universal_plane.c    |  4 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  8 ++--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 .../drm/i915/gt/intel_execlists_submission.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 44 +++++++++----------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
 drivers/gpu/drm/i915/i915_drv.h               | 15 +++++--
 drivers/gpu/drm/i915/i915_perf.c              |  4 +-
 15 files changed, 60 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 7f8b2d7713c7..6358a8b26172 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1093,7 +1093,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 
 	/* Wa_14016291713 */
 	if ((IS_DISPLAY_VER(i915, 12, 13) ||
-	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
+	     IS_METEORLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
 	    crtc_state->has_psr) {
 		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index f7608d363634..8c3158b188ef 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
 				     &pmdemand_state->base,
 				     &intel_pmdemand_funcs);
 
-	if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
+	if (IS_METEORLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
 		/* Wa_14016740474 */
 		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 62151abe4748..ecd4e36119b2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1247,7 +1247,7 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 	bool set_wa_bit = false;
 
 	/* Wa_14015648006 */
-	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
 	    IS_DISPLAY_VER(dev_priv, 11, 13))
 		set_wa_bit |= crtc_state->wm_level_disabled;
 
@@ -1320,7 +1320,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		 * All supported adlp panels have 1-based X granularity, this may
 		 * cause issues if non-supported panels are used.
 		 */
-		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
 				     ADLP_1_BASED_X_GRANULARITY);
 		else if (IS_ALDERLAKE_P(dev_priv))
@@ -1328,7 +1328,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 				     ADLP_1_BASED_X_GRANULARITY);
 
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
-		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
@@ -1489,7 +1489,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	if (intel_dp->psr.psr2_enabled) {
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
-		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
@@ -1963,7 +1963,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		goto skip_sel_fetch_set_loop;
 
 	/* Wa_14014971492 */
-	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	if ((IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
 	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
 	    crtc_state->splitter.enable)
 		pipe_clip.y1 = 0;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 636a88827a8f..cf1bcc6bff08 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2169,8 +2169,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 				 enum pipe pipe, enum plane_id plane_id)
 {
 	/* Wa_14017240301 */
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 		return false;
 
 	/* Wa_22011186057 */
diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 3173e811463d..26656d4be61e 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -180,8 +180,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
 static int mtl_dummy_pipe_control(struct i915_request *rq)
 {
 	/* Wa_14016712196 */
-	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(rq->engine->i915, STEP_A0, STEP_B0) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(rq->engine->i915, STEP_A0, STEP_B0)) {
 		u32 *cs;
 
 		/* dummy PIPE_CONTROL + depth flush */
@@ -765,8 +765,8 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 		     PIPE_CONTROL_FLUSH_ENABLE);
 
 	/* Wa_14016712196 */
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 		/* dummy PIPE_CONTROL + depth flush */
 		cs = gen12_emit_pipe_control(cs, 0,
 					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 0aff5bb13c53..df4883764ad4 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1616,7 +1616,7 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
 	 * Wa_22011802037: Prior to doing a reset, ensure CS is
 	 * stopped, set ring stop bit and prefetch disable bit to halt CS
 	 */
-	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915, STEP_A0, STEP_B0) ||
 	    (GRAPHICS_VER(engine->i915) >= 11 &&
 	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
 		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 2ebd937f3b4c..802b31ad982e 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3001,7 +3001,7 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	 * Wa_22011802037: In addition to stopping the cs, we need
 	 * to wait for any pending mi force wakeups
 	 */
-	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915, STEP_A0, STEP_B0) ||
 	    (GRAPHICS_VER(engine->i915) >= 11 &&
 	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
 		intel_engine_wait_for_pending_mi_fw(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index 0b414eae1683..e30b56be0cb8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -166,8 +166,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
 		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
 	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
 		/* Wa_14016747170 */
-		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+		if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
+		    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
 					     intel_uncore_read(gt->uncore,
 							       MTL_GT_ACTIVITY_FACTOR));
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index a4ec20aaafe2..80608090fb1e 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1370,8 +1370,8 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 					      cs, GEN12_GFX_CCS_AUX_NV);
 
 	/* Wa_16014892111 */
-	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(ce->engine->i915, STEP_A0, STEP_B0) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(ce->engine->i915, STEP_A0, STEP_B0) ||
 	    IS_DG2(ce->engine->i915))
 		cs = dg2_emit_draw_watermark_setting(cs);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 58bb1c55294c..cc8b09b8a7fa 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -526,7 +526,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 		return false;
 	}
 
-	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
+	if (IS_METEORLAKE_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
 	    gt->type == GT_MEDIA) {
 		drm_notice(&i915->drm,
 			   "Media RC6 disabled on A step\n");
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index bb948ffc95ca..f840376f107f 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -819,8 +819,8 @@ static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
 
 	dg2_ctx_gt_tuning_init(engine, wal);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER))
 		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
 }
 
@@ -831,8 +831,8 @@ static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	mtl_ctx_gt_tuning_init(engine, wal);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
 		/* Wa_14014947963 */
 		wa_masked_field_set(wal, VF_PREEMPTION,
 				    PREEMPTION_VERTEX_COUNT, 0x4000);
@@ -1716,8 +1716,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	/* Wa_22016670082 */
 	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
 
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0)) {
 		/* Wa_14014830051 */
 		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
 
@@ -2413,15 +2413,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
 		/* Wa_22014600077 */
 		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
 				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
 	}
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
 	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
 		/* Wa_1509727124 */
@@ -2431,7 +2431,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
 	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
-	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
+	    IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
 		/* Wa_22012856258 */
 		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
 				 GEN12_DISABLE_READ_SUPPRESSION);
@@ -3016,13 +3016,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 				 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
 	}
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER))
 		/* Wa_14017856879 */
 		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 		/*
 		 * Wa_14017066071
 		 * Wa_14017654203
@@ -3030,13 +3030,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
 				 MTL_DISABLE_SAMPLER_SC_OOO);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+	if (IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 		/* Wa_22015279794 */
 		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
 				 DISABLE_PREFETCH_INTO_IC);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
 	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
 		/* Wa_22013037850 */
@@ -3044,16 +3044,16 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 				DISABLE_128B_EVICTION_COMMAND_UDW);
 	}
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
 	    IS_PONTEVECCHIO(i915) ||
 	    IS_DG2(i915)) {
 		/* Wa_22014226127 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
 	}
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
+	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
 	    IS_DG2(i915)) {
 		/* Wa_18017747507 */
 		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 2eb891b270ae..c8e2a110b833 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 		flags |= GUC_WA_GAM_CREDITS;
 
 	/* Wa_14014475959 */
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0) ||
 	    IS_DG2(gt->i915))
 		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
 
@@ -292,7 +292,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 		flags |= GUC_WA_DUAL_QUEUE;
 
 	/* Wa_22011802037: graphics version 11/12 */
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0) ||
 	    (GRAPHICS_VER(gt->i915) >= 11 &&
 	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
 		flags |= GUC_WA_PRE_PARSER;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index a0e3ef1c65d2..6f0e07c4488e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1658,7 +1658,7 @@ static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
 	 * Wa_22011802037: In addition to stopping the cs, we need
 	 * to wait for any pending mi force wakeups
 	 */
-	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+	if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915, STEP_A0, STEP_B0) ||
 	    (GRAPHICS_VER(engine->i915) >= 11 &&
 	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
 		intel_engine_stop_cs(engine);
@@ -4267,7 +4267,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 
 	/* Wa_14014475959:dg2 */
 	if (engine->class == COMPUTE_CLASS)
-		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+		if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915, STEP_A0, STEP_B0) ||
 		    IS_DG2(engine->i915))
 			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index deb5b9064621..8b4cc3f4df1f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -688,15 +688,24 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
 	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
 
-#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
+#define IS_METEORLAKE_GRAPHICS_STEP(__i915, variant, since, until) \
 	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))
 
-#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
+#define IS_METEORLAKE_P_GRAPHICS_STEP(__i915, since, until) \
+	(IS_METEORLAKE_P(__i915) && \
+	 IS_GRAPHICS_STEP(__i915, since, until))
+
+#define IS_METEORLAKE_M_GRAPHICS_STEP(__i915, since, until) \
+	(IS_METEORLAKE_M(__i915) && \
+	 IS_GRAPHICS_STEP(__i915, since, until))
+
+
+#define IS_METEORLAKE_DISPLAY_STEP(__i915, since, until) \
 	(IS_METEORLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_MTL_MEDIA_STEP(__i915, since, until) \
+#define IS_METEORLAKE_MEDIA_STEP(__i915, since, until) \
 	(IS_METEORLAKE(__i915) && \
 	 IS_MEDIA_STEP(__i915, since, until))
 
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 0a111b281578..e943ffbaecbc 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4214,7 +4214,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where OAM
 	 * does not work as expected.
 	 */
-	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
+	if (IS_METEORLAKE_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
 	    props->engine->oa_group->type == TYPE_OAM &&
 	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
 		drm_dbg(&perf->i915->drm,
@@ -5322,7 +5322,7 @@ int i915_perf_ioctl_version(struct drm_i915_private *i915)
 	 * C6 disable in BIOS. If Media C6 is enabled in BIOS, return version 6
 	 * to indicate that OA media is not supported.
 	 */
-	if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
+	if (IS_METEORLAKE_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
 		struct intel_gt *gt;
 		int i;
 
-- 
2.34.1

