Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5877B76B655
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 15:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1583B10E402;
	Tue,  1 Aug 2023 13:54:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6610E10E3F8
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 13:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690898040; x=1722434040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y7ZZiHrHEAZ55TWlg/BKUatLmDj3lRYm11zxqV0lZRc=;
 b=NLXoIVC3yE6/ZI4v/f6QuwD05nyk5a2hZQ0UErkO1hWvm/Kn7FhVo2jw
 cl6F7jZBSJ9hkurboRJaVDK9mYMK2Yn5IbRbusO51YTAr6rNo+zVSYRgC
 3t3dfnwpb8Rm0LO2R4zrmzK5PxcQqvuWQr3EbJGWnngSdBk8C4R5WgUAa
 2J9WoFKAUd5v4welSwpKsMuWo5qWF2lzAaUs7R8w+fFdd1Xgp0cuOup1p
 iex6E3I+/2ui3mEM/94/XcsuB9cJ4BHB+Nslo4UBdGlcPjw6UkfdQzn0y
 BOl/FW3Wkrn7U8hLX861VNxM8A6HjvlMF9xVfkkhZJKcnXBQUTDt+FGOv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="435629330"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="435629330"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 06:54:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="818803904"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="818803904"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Aug 2023 06:53:57 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Aug 2023 19:23:34 +0530
Message-Id: <20230801135344.3797924-5-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
References: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 04/14] drm/i915/kbl: s/KBL/KABYLAKE for
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow consistent naming convention. Replace KBL with
KABYLAKE.Replace IS_KBL_GRAPHICS_STEP with
IS_KABYLAKE () && IS_GRAPHICS_STEP().

v2:
- s/KBL/kbl in the subject prefix(Anusha)

v3:
- Unrolled wrapper IS_KBL_GRAPHICS_STEP.
- Replace with IS_PLATFORM && DISPLAY_STEP(tvrtko/jani)

v4:
- Removed unused macro.

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <Anusha.Srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c |  4 ++--
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c        |  6 +++---
 drivers/gpu/drm/i915/i915_drv.h                    | 12 ++++--------
 drivers/gpu/drm/i915/intel_clock_gating.c          |  4 ++--
 5 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index e85eab21b09d..39eab9ea02dd 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1740,9 +1740,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
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
index 8a3cbb01bcbe..a4ff55aa5e55 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -43,7 +43,7 @@ int gen8_emit_flush_rcs(struct i915_request *rq, u32 mode)
 			vf_flush_wa = true;
 
 		/* WaForGAMHang:kbl */
-		if (IS_KBL_GRAPHICS_STEP(rq->i915, 0, STEP_C0))
+		if (IS_KABYLAKE(rq->i915) && IS_GRAPHICS_STEP(rq->i915, 0, STEP_C0))
 			dc_flush_wa = true;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b0b7d448364a..a8ba843029bf 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -600,7 +600,7 @@ static void kbl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen9_ctx_workarounds_init(engine, wal);
 
 	/* WaToEnableHwFixForPushConstHWBug:kbl */
-	if (IS_KBL_GRAPHICS_STEP(i915, STEP_C0, STEP_FOREVER))
+	if (IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, STEP_C0, STEP_FOREVER))
 		wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
 			     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 
@@ -1204,7 +1204,7 @@ kbl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	gen9_gt_workarounds_init(gt, wal);
 
 	/* WaDisableDynamicCreditSharing:kbl */
-	if (IS_KBL_GRAPHICS_STEP(gt->i915, 0, STEP_C0))
+	if (IS_KABYLAKE(gt->i915) && IS_GRAPHICS_STEP(gt->i915, 0, STEP_C0))
 		wa_write_or(wal,
 			    GAMT_CHKN_BIT_REG,
 			    GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING);
@@ -2945,7 +2945,7 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	struct drm_i915_private *i915 = engine->i915;
 
 	/* WaKBLVECSSemaphoreWaitPoll:kbl */
-	if (IS_KBL_GRAPHICS_STEP(i915, STEP_A0, STEP_F0)) {
+	if (IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, STEP_A0, STEP_F0)) {
 		wa_write(wal,
 			 RING_SEMA_WAIT_POLL(engine->mmio_base),
 			 1);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d7f7ca135000..ba075bb183db 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -613,9 +613,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
@@ -623,9 +623,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
@@ -650,10 +650,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
 
 
-#define IS_KBL_GRAPHICS_STEP(i915, since, until) \
-	(IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, since, until))
-#define IS_KBL_DISPLAY_STEP(i915, since, until) \
-	(IS_KABYLAKE(i915) && IS_DISPLAY_STEP(i915, since, until))
 
 #define IS_JSL_EHL_GRAPHICS_STEP(p, since, until) \
 	(IS_JSL_EHL(p) && IS_GRAPHICS_STEP(p, since, until))
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index d9600cd1ab06..81a4d32734e9 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -456,12 +456,12 @@ static void kbl_init_clock_gating(struct drm_i915_private *i915)
 	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
 
 	/* WaDisableSDEUnitClockGating:kbl */
-	if (IS_KBL_GRAPHICS_STEP(i915, 0, STEP_C0))
+	if (IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, 0, STEP_C0))
 		intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6,
 				 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaDisableGamClockGating:kbl */
-	if (IS_KBL_GRAPHICS_STEP(i915, 0, STEP_C0))
+	if (IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, 0, STEP_C0))
 		intel_uncore_rmw(&i915->uncore, GEN6_UCGCTL1,
 				 0, GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
 
-- 
2.34.1

