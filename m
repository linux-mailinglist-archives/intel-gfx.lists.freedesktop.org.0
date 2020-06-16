Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD081FC27D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 01:58:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BFCC6E9D0;
	Tue, 16 Jun 2020 23:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5CF46E20B
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 23:58:21 +0000 (UTC)
IronPort-SDR: SrrQmSGTBAVRuS3F3CzqfyyzUut9SGmAo1sf1ct06futqJbzEzcJJzUCqpNO4leQoLM7DsAjvG
 04SOZ/1PqkKA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 16:58:21 -0700
IronPort-SDR: W5g11JC/afHZgIe3Ytvzm3BkAHFbdj6oCVklVwitFv7AmTEx0wMBRgR3jKFpPLOeZvS/e71EoW
 I0lS+OFXfq1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,520,1583222400"; d="scan'208";a="277097156"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga006.jf.intel.com with ESMTP; 16 Jun 2020 16:58:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 16:58:09 -0700
Message-Id: <20200616235810.3848540-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616235810.3848540-1-matthew.d.roper@intel.com>
References: <20200616235810.3848540-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 4/5] drm/i915/rkl: Add initial workarounds
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RKL and TGL share some general gen12 workarounds, but each platform also
has its own platform-specific workarounds.

v2:
 - Add Wa_1604555607 for RKL.  This makes RKL's ctx WA list identical to
   TGL's, so we'll have both functions call the tgl_ function for now;
   this workaround isn't listed for DG1 so we don't want to add it to
   the general gen12_ function.

Cc: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c |  5 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 88 +++++++++++++--------
 2 files changed, 59 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 3cd461bf9131..63ac79f88fa2 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -2842,8 +2842,9 @@ static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
 static bool gen12_plane_supports_mc_ccs(struct drm_i915_private *dev_priv,
 					enum plane_id plane_id)
 {
-	/* Wa_14010477008:tgl[a0..c0] */
-	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_C0))
+	/* Wa_14010477008:tgl[a0..c0],rkl[all] */
+	if (IS_ROCKETLAKE(dev_priv) ||
+	    IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_C0))
 		return false;
 
 	return plane_id < PLANE_SPRITE4;
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 2da366821dda..741710ca2b9a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -596,8 +596,8 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN11_DIS_PICK_2ND_EU);
 }
 
-static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
-				     struct i915_wa_list *wal)
+static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
+				       struct i915_wa_list *wal)
 {
 	/*
 	 * Wa_1409142259:tgl
@@ -607,12 +607,28 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 * Wa_1409207793:tgl
 	 * Wa_1409178076:tgl
 	 * Wa_1408979724:tgl
+	 * Wa_14010443199:rkl
+	 * Wa_14010698770:rkl
 	 */
 	WA_SET_BIT_MASKED(GEN11_COMMON_SLICE_CHICKEN3,
 			  GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
 
+	/* WaDisableGPGPUMidThreadPreemption:gen12 */
+	WA_SET_FIELD_MASKED(GEN8_CS_CHICKEN1,
+			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
+			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
+}
+
+static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
+				     struct i915_wa_list *wal)
+{
+	gen12_ctx_workarounds_init(engine, wal);
+
 	/*
-	 * Wa_1604555607:gen12 and Wa_1608008084:gen12
+	 * Wa_1604555607:tgl,rkl
+	 *
+	 * Note that the implementation of this workaround is further modified
+	 * according to the FF_MODE2 guidance given by Wa_1608008084:gen12.
 	 * FF_MODE2 register will return the wrong value when read. The default
 	 * value for this register is zero for all fields and there are no bit
 	 * masks. So instead of doing a RMW we should just write the GS Timer
@@ -623,11 +639,6 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	       FF_MODE2_GS_TIMER_MASK | FF_MODE2_TDS_TIMER_MASK,
 	       FF_MODE2_GS_TIMER_224  | FF_MODE2_TDS_TIMER_128,
 	       0);
-
-	/* WaDisableGPGPUMidThreadPreemption:tgl */
-	WA_SET_FIELD_MASKED(GEN8_CS_CHICKEN1,
-			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
-			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
 }
 
 static void
@@ -642,8 +653,10 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 
 	wa_init_start(wal, name, engine->name);
 
-	if (IS_GEN(i915, 12))
+	if (IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915))
 		tgl_ctx_workarounds_init(engine, wal);
+	else if (IS_GEN(i915, 12))
+		gen12_ctx_workarounds_init(engine, wal);
 	else if (IS_GEN(i915, 11))
 		icl_ctx_workarounds_init(engine, wal);
 	else if (IS_CANNONLAKE(i915))
@@ -1176,9 +1189,16 @@ icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 }
 
 static void
-tgl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
+gen12_gt_workarounds_init(struct drm_i915_private *i915,
+			  struct i915_wa_list *wal)
 {
 	wa_init_mcr(i915, wal);
+}
+
+static void
+tgl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
+{
+	gen12_gt_workarounds_init(i915, wal);
 
 	/* Wa_1409420604:tgl */
 	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
@@ -1196,8 +1216,10 @@ tgl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 static void
 gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
-	if (IS_GEN(i915, 12))
+	if (IS_TIGERLAKE(i915))
 		tgl_gt_workarounds_init(i915, wal);
+	else if (IS_GEN(i915, 12))
+		gen12_gt_workarounds_init(i915, wal);
 	else if (IS_GEN(i915, 11))
 		icl_gt_workarounds_init(i915, wal);
 	else if (IS_CANNONLAKE(i915))
@@ -1629,18 +1651,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    GEN9_CTX_PREEMPT_REG,
 			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
 
-		/*
-		 * Wa_1607030317:tgl
-		 * Wa_1607186500:tgl
-		 * Wa_1607297627:tgl there is 3 entries for this WA on BSpec, 2
-		 * of then says it is fixed on B0 the other one says it is
-		 * permanent
-		 */
-		wa_masked_en(wal,
-			     GEN6_RC_SLEEP_PSMI_CONTROL,
-			     GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
-			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
-
 		/*
 		 * Wa_1606679103:tgl
 		 * (see also Wa_1606682166:icl)
@@ -1659,24 +1669,38 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    VSUNIT_CLKGATE_DIS_TGL);
 	}
 
-	if (IS_TIGERLAKE(i915)) {
-		/* Wa_1606931601:tgl */
+	if (IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
+		/* Wa_1606931601:tgl,rkl */
 		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_DISABLE_EARLY_READ);
 
-		/* Wa_1409804808:tgl */
+		/* Wa_1409804808:tgl,rkl */
 		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
 			     GEN12_PUSH_CONST_DEREF_HOLD_DIS);
 
-		/* Wa_1606700617:tgl */
-		wa_masked_en(wal,
-			     GEN9_CS_DEBUG_MODE1,
-			     FF_DOP_CLOCK_GATE_DISABLE);
-
 		/*
 		 * Wa_1409085225:tgl
-		 * Wa_14010229206:tgl
+		 * Wa_14010229206:tgl,rkl
 		 */
 		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
+
+		/*
+		 * Wa_1607030317:tgl
+		 * Wa_1607186500:tgl
+		 * Wa_1607297627:tgl,rkl there are multiple entries for this
+		 * WA in the BSpec; some indicate this is an A0-only WA,
+		 * others indicate it applies to all steppings.
+		 */
+		wa_masked_en(wal,
+			     GEN6_RC_SLEEP_PSMI_CONTROL,
+			     GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
+			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
+	}
+
+	if (IS_TIGERLAKE(i915)) {
+		/* Wa_1606700617:tgl */
+		wa_masked_en(wal,
+			     GEN9_CS_DEBUG_MODE1,
+			     FF_DOP_CLOCK_GATE_DISABLE);
 	}
 
 	if (IS_GEN(i915, 11)) {
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
