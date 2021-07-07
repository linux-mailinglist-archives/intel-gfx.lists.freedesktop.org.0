Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BD93BE25A
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 07:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A407F6E824;
	Wed,  7 Jul 2021 05:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59C026E821
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 05:06:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="196406285"
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="196406285"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 22:06:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="457348318"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008.jf.intel.com with ESMTP; 06 Jul 2021 22:06:49 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jul 2021 22:06:42 -0700
Message-Id: <20210707050645.31043-6-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210707050645.31043-1-anusha.srivatsa@intel.com>
References: <20210707050645.31043-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/icl: s/IS_ICL_REVID/IS_ICL_GT_STEP
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

Add stepping info table for ICL.
Remove stepping info table from intel_dmc.c and
instead use the centralized stepping_info from
intel_step.c

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c    | 153 +++++++++-----------
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  12 +-
 drivers/gpu/drm/i915/i915_drv.h             |  12 +-
 drivers/gpu/drm/i915/intel_step.c           |  12 ++
 drivers/gpu/drm/i915/intel_step.h           |   1 +
 5 files changed, 92 insertions(+), 98 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a1fa44ec4ca8..783a3a2a3dd7 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -247,97 +247,82 @@ bool intel_dmc_has_payload(struct drm_i915_private *i915)
 	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
 }
 
-static const struct stepping_info icl_stepping_info[] = {
-	{'A', '0'}, {'A', '1'}, {'A', '2'},
-	{'B', '0'}, {'B', '2'},
-	{'C', '0'}
-};
-
-static const struct stepping_info no_stepping_info = { '*', '*' };
 struct stepping_info *display_step;
 
 static const struct stepping_info *
 intel_get_stepping_info(struct drm_i915_private *dev_priv)
 {
 	struct intel_step_info step = RUNTIME_INFO(dev_priv)->step;
-	const struct stepping_info *si;
-	unsigned int size;
 
-	if (IS_ICELAKE(dev_priv)) {
-		size = ARRAY_SIZE(icl_stepping_info);
-		si = icl_stepping_info;
-	}
-
-	if (IS_ICELAKE(dev_priv))
-		return INTEL_REVID(dev_priv) < size ? si + INTEL_REVID(dev_priv) : &no_stepping_info;
-
-	else {
-		switch (step.display_step) {
-		case STEP_A0:
-			display_step->stepping = 'A';
-			display_step->substepping = '0';
-			break;
-		case STEP_A1:
-			display_step->stepping = 'A';
-			display_step->substepping = '1';
-			break;
-		case STEP_A2:
-			display_step->stepping = 'A';
-			display_step->substepping = '2';
-			break;
-		case STEP_B0:
-			display_step->stepping = 'B';
-			display_step->substepping = '0';
-			break;
-		case STEP_B1:
-			display_step->stepping = 'B';
-			display_step->substepping = '1';
-			break;
-		case STEP_B2:
-			display_step->stepping = 'B';
-			display_step->substepping = '2';
-			break;
-		case STEP_C0:
-			display_step->stepping = 'C';
-			display_step->substepping = '0';
-			break;
-		case STEP_D0:
-			display_step->stepping = 'D';
-			display_step->substepping = '0';
-			break;
-		case STEP_D1:
-			display_step->stepping = 'D';
-			display_step->substepping = '1';
-			break;
-		case STEP_E0:
-			display_step->stepping = 'E';
-			display_step->substepping = '0';
-			break;
-		case STEP_F0:
-			display_step->stepping = 'F';
-			display_step->substepping = '0';
-			break;
-		case STEP_G0:
-			display_step->stepping = 'G';
-			display_step->substepping = '0';
-			break;
-		case STEP_H0:
-			display_step->stepping = 'H';
-			display_step->substepping = '0';
-			break;
-		case STEP_I0:
-			display_step->stepping = 'I';
-			display_step->substepping = '0';
-			break;
-		case STEP_J0:
-			display_step->stepping = 'J';
-			display_step->substepping = '0';
-			break;
-		default:
-			display_step->stepping = '*';
-			display_step->substepping = '*';
-			break;
-		}
+	switch (step.display_step) {
+	case STEP_A0:
+		display_step->stepping = 'A';
+		display_step->substepping = '0';
+		break;
+	case STEP_A1:
+		display_step->stepping = 'A';
+		display_step->substepping = '1';
+		break;
+	case STEP_A2:
+		display_step->stepping = 'A';
+		display_step->substepping = '2';
+		break;
+	case STEP_B0:
+		display_step->stepping = 'B';
+		display_step->substepping = '0';
+		break;
+	case STEP_B1:
+		display_step->stepping = 'B';
+		display_step->substepping = '1';
+		break;
+	case STEP_B2:
+		display_step->stepping = 'B';
+		display_step->substepping = '2';
+		break;
+	case STEP_C0:
+		display_step->stepping = 'C';
+		display_step->substepping = '0';
+		break;
+	case STEP_C1:
+		display_step->stepping = 'C';
+		display_step->substepping = '1';
+		break;
+	case STEP_D0:
+		display_step->stepping = 'D';
+		display_step->substepping = '0';
+		break;
+	case STEP_D1:
+		display_step->stepping = 'D';
+		display_step->substepping = '1';
+		break;
+	case STEP_E0:
+		display_step->stepping = 'E';
+		display_step->substepping = '0';
+		break;
+	case STEP_F0:
+		display_step->stepping = 'F';
+		display_step->substepping = '0';
+		break;
+	case STEP_G0:
+		display_step->stepping = 'G';
+		display_step->substepping = '0';
+		break;
+	case STEP_H0:
+		display_step->stepping = 'H';
+		display_step->substepping = '0';
+		break;
+	case STEP_I0:
+		display_step->stepping = 'I';
+		display_step->substepping = '0';
+		break;
+	case STEP_J0:
+		display_step->stepping = 'J';
+		display_step->substepping = '0';
+		break;
+	default:
+		display_step->stepping = '*';
+		display_step->substepping = '*';
+		break;
 	}
 	return display_step;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 6dfd564e078f..e2d8acb8c1c9 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -557,7 +557,7 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	/* Wa_1604370585:icl (pre-prod)
 	 * Formerly known as WaPushConstantDereferenceHoldDisable
 	 */
-	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_B0))
+	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_B0))
 		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
 			     PUSH_CONSTANT_DEREF_DISABLE);
 
@@ -573,12 +573,12 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	/* Wa_2006611047:icl (pre-prod)
 	 * Formerly known as WaDisableImprovedTdlClkGating
 	 */
-	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_A0))
+	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_A0))
 		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
 			     GEN11_TDL_CLOCK_GATING_FIX_DISABLE);
 
 	/* Wa_2006665173:icl (pre-prod) */
-	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_A0))
+	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_A0))
 		wa_masked_en(wal, GEN11_COMMON_SLICE_CHICKEN3,
 			     GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC);
 
@@ -1023,13 +1023,13 @@ icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		    GAMW_ECO_DEV_CTX_RELOAD_DISABLE);
 
 	/* Wa_1405779004:icl (pre-prod) */
-	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_A0))
+	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_A0))
 		wa_write_or(wal,
 			    SLICE_UNIT_LEVEL_CLKGATE,
 			    MSCUNIT_CLKGATE_DIS);
 
 	/* Wa_1406838659:icl (pre-prod) */
-	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_B0))
+	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_B0))
 		wa_write_or(wal,
 			    INF_UNIT_LEVEL_CLKGATE,
 			    CGPSF_CLKGATE_DIS);
@@ -1725,7 +1725,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    PMFLUSHDONE_LNEBLK);
 
 		/* Wa_1406609255:icl (pre-prod) */
-		if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_B0))
+		if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_B0))
 			wa_write_or(wal,
 				    GEN7_SARCHKMD,
 				    GEN7_DISABLE_DEMAND_PREFETCH);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index defa084ccd08..217c58c14a88 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1491,14 +1491,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_CNL_REVID(p, since, until) \
 	(IS_CANNONLAKE(p) && IS_REVID(p, since, until))
 
-#define ICL_REVID_A0		0x0
-#define ICL_REVID_A2		0x1
-#define ICL_REVID_B0		0x3
-#define ICL_REVID_B2		0x4
-#define ICL_REVID_C0		0x5
-
-#define IS_ICL_REVID(p, since, until) \
-	(IS_ICELAKE(p) && IS_REVID(p, since, until))
+#define IS_ICL_GT_STEP(__i915, since, until) \
+	(IS_ICELAKE(__i915) && \
+	 IS_GT_STEP(__i915, since, until))
+
 
 #define EHL_REVID_A0            0x0
 #define EHL_REVID_B0            0x1
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index b00c192c6c3d..e1e5698d4998 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -35,6 +35,15 @@ static const struct intel_step_info bxt_revids[] = {
 	[8] = { .gt_step = STEP_B2 },
 };
 
+static const struct intel_step_info icl_revids[] = {
+	[0] = { .gt_step = STEP_A0 },
+	[3] = { .gt_step = STEP_B0 },
+	[4] = { .gt_step = STEP_B2 },
+	[5] = { .gt_step = STEP_C0 },
+	[6] = { .gt_step = STEP_C1 },
+	[7] = { .gt_step = STEP_D0 },
+};
+
 /* FIXME: what about REVID_E0 */
 static const struct intel_step_info kbl_revids[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
@@ -103,6 +112,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_BROXTON(i915)) {
 		revids = bxt_revids;
 		size = ARRAY_SIZE(bxt_revids);
+	} else if (IS_ICELAKE(i915)) {
+		revids = icl_revids;
+		size = ARRAY_SIZE(icl_revids);
 	}
 
 	/* Not using the stepping scheme for the platform yet. */
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 09acd822cabc..adfe0369508b 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -28,6 +28,7 @@ enum intel_step {
 	STEP_B1,
 	STEP_B2,
 	STEP_C0,
+	STEP_C1,
 	STEP_D0,
 	STEP_D1,
 	STEP_E0,
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
