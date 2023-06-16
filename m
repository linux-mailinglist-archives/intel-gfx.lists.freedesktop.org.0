Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF42D733027
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 13:42:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3866410E603;
	Fri, 16 Jun 2023 11:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F9010E5F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 11:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686915730; x=1718451730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eSqg9/f2ai4Y76phY+7yysgT/32cm/Djy431RqikgAo=;
 b=U6J2QUJRO1NEtOGZDsWEx/rvox7j0+lcbwEmPRUNt1Xv5EyHn40RTvVp
 rmrSt52b7+rn2eoSALEe/ZfJjQZpQQW7PyiWPXoRf++ziiDJobW0GKZqq
 XR+UVRqdAp3Yhk43ThxKI7q+4tXcyjqEtHMnQvTE32c+jjSSOpfL0A+W/
 9uYDaHCSxeZJ1h8mMdP8kYHgJpKqd8u1qwrrOdXb7qR8TyCrpbo4CLTt4
 gnOR6qTNsgcJnwJ7ISrTgM4LuTlWMssCoFuByRMl4ZUj8yMbcBLhtdTZ0
 4io7igNnf4CAZk4Y17gcvoyZP8fQ+m9orQo3rELjliG5dWtx5v5nb5EgI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="358067431"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="358067431"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 04:42:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="742646263"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="742646263"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga008.jf.intel.com with ESMTP; 16 Jun 2023 04:42:08 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 17:11:51 +0530
Message-Id: <20230616114200.3228284-3-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616114200.3228284-1-dnyaneshwar.bhadane@intel.com>
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
 <20230616114200.3228284-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/11] drm/i915/kbl: s/KBL/KABYLAKE for
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

Follow consistent naming convention. Replace KBL with
KABYLAKE.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c |  4 ++--
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c        |  6 +++---
 drivers/gpu/drm/i915/i915_drv.h                    | 12 ++++++------
 drivers/gpu/drm/i915/intel_clock_gating.c          |  4 ++--
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 13a2c364b8eb..cd6915e9e138 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1718,9 +1718,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 			encoder->get_buf_trans = icl_get_mg_buf_trans;
 	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
 		encoder->get_buf_trans = bxt_get_buf_trans;
-	} else if (IS_CML_ULX(i915) || IS_CFL_ULX(i915) || IS_KBL_ULX(i915)) {
+	} else if (IS_CML_ULX(i915) || IS_CFL_ULX(i915) || IS_KABYLAKE_ULX(i915)) {
 		encoder->get_buf_trans = kbl_y_get_buf_trans;
-	} else if (IS_CML_ULT(i915) || IS_CFL_ULT(i915) || IS_KBL_ULT(i915)) {
+	} else if (IS_CML_ULT(i915) || IS_CFL_ULT(i915) || IS_KABYLAKE_ULT(i915)) {
 		encoder->get_buf_trans = kbl_u_get_buf_trans;
 	} else if (IS_COMETLAKE(i915) || IS_COFFEELAKE(i915) || IS_KABYLAKE(i915)) {
 		encoder->get_buf_trans = kbl_get_buf_trans;
diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 23857cc08eca..3173e811463d 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -43,7 +43,7 @@ int gen8_emit_flush_rcs(struct i915_request *rq, u32 mode)
 			vf_flush_wa = true;
 
 		/* WaForGAMHang:kbl */
-		if (IS_KBL_GRAPHICS_STEP(rq->engine->i915, 0, STEP_C0))
+		if (IS_KABYLAKE_GRAPHICS_STEP(rq->engine->i915, 0, STEP_C0))
 			dc_flush_wa = true;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 38ecbe793ea4..bb948ffc95ca 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -584,7 +584,7 @@ static void kbl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen9_ctx_workarounds_init(engine, wal);
 
 	/* WaToEnableHwFixForPushConstHWBug:kbl */
-	if (IS_KBL_GRAPHICS_STEP(i915, STEP_C0, STEP_FOREVER))
+	if (IS_KABYLAKE_GRAPHICS_STEP(i915, STEP_C0, STEP_FOREVER))
 		wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
 			     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 
@@ -1185,7 +1185,7 @@ kbl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	gen9_gt_workarounds_init(gt, wal);
 
 	/* WaDisableDynamicCreditSharing:kbl */
-	if (IS_KBL_GRAPHICS_STEP(gt->i915, 0, STEP_C0))
+	if (IS_KABYLAKE_GRAPHICS_STEP(gt->i915, 0, STEP_C0))
 		wa_write_or(wal,
 			    GAMT_CHKN_BIT_REG,
 			    GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING);
@@ -2933,7 +2933,7 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	struct drm_i915_private *i915 = engine->i915;
 
 	/* WaKBLVECSSemaphoreWaitPoll:kbl */
-	if (IS_KBL_GRAPHICS_STEP(i915, STEP_A0, STEP_F0)) {
+	if (IS_KABYLAKE_GRAPHICS_STEP(i915, STEP_A0, STEP_F0)) {
 		wa_write(wal,
 			 RING_SEMA_WAIT_POLL(engine->mmio_base),
 			 1);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 71dd1d80dc97..6102b127fe4d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -614,9 +614,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT)
 #define IS_SKYLAKE_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULX)
-#define IS_KBL_ULT(i915) \
+#define IS_KABYLAKE_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
-#define IS_KBL_ULX(i915) \
+#define IS_KABYLAKE_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULX)
 #define IS_SKYLAKE_GT2(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)
@@ -624,9 +624,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 				 INTEL_INFO(i915)->gt == 3)
 #define IS_SKYLAKE_GT4(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 4)
-#define IS_KBL_GT2(i915)	(IS_KABYLAKE(i915) && \
+#define IS_KABYLAKE_GT2(i915)	(IS_KABYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)
-#define IS_KBL_GT3(i915)	(IS_KABYLAKE(i915) && \
+#define IS_KABYLAKE_GT3(i915)	(IS_KABYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)
 #define IS_CFL_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULT)
@@ -652,9 +652,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define IS_SKYLAKE_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))
 
-#define IS_KBL_GRAPHICS_STEP(i915, since, until) \
+#define IS_KABYLAKE_GRAPHICS_STEP(i915, since, until) \
 	(IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, since, until))
-#define IS_KBL_DISPLAY_STEP(i915, since, until) \
+#define IS_KABYLAKE_DISPLAY_STEP(i915, since, until) \
 	(IS_KABYLAKE(i915) && IS_DISPLAY_STEP(i915, since, until))
 
 #define IS_JSL_EHL_GRAPHICS_STEP(p, since, until) \
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index a27600bc5976..bb349043522c 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -456,12 +456,12 @@ static void kbl_init_clock_gating(struct drm_i915_private *i915)
 	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
 
 	/* WaDisableSDEUnitClockGating:kbl */
-	if (IS_KBL_GRAPHICS_STEP(i915, 0, STEP_C0))
+	if (IS_KABYLAKE_GRAPHICS_STEP(i915, 0, STEP_C0))
 		intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6,
 				 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaDisableGamClockGating:kbl */
-	if (IS_KBL_GRAPHICS_STEP(i915, 0, STEP_C0))
+	if (IS_KABYLAKE_GRAPHICS_STEP(i915, 0, STEP_C0))
 		intel_uncore_rmw(&i915->uncore, GEN6_UCGCTL1,
 				 0, GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
 
-- 
2.34.1

