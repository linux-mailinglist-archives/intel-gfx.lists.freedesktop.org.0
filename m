Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBB076B654
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 15:54:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BAC310E3FE;
	Tue,  1 Aug 2023 13:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF6D410E3F8
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 13:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690898037; x=1722434037;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LV90g6Up2FRzQXglmEyBeYRfMSvJ3g1ec1wSZtN3EC0=;
 b=F1zXG9D+2zjaIOah1cMaDvBcEpOCyGdiMSxyZ9e32Sduf06rdT2bqd2v
 LUNosbARGlaKs407REpGGDGYqZej4KAaRQkf7qyMhMZKf8OMDy2UojMgO
 680rzHz/smWez1bTnssLYDvl53it76cCBa7GnkCz+aeya9BuEcDen6vg5
 v1ZBqjVIQWUD8rjUUW+4Zqv0E6CXo8SbQjcRL2wN+4zrsjzaA29KeotGv
 3lbdsarNxdg+8+bYfk5uPggg2Tc5eKuhVi5TpgY0P76tfAypEoRyGr9rO
 Kq2GtflKdCnd/0gIyCONirDUke8p062PCSlMnLeIfrEhs5aHXc/mG0a9N A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="435629325"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="435629325"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 06:53:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="818803897"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="818803897"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Aug 2023 06:53:55 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Aug 2023 19:23:33 +0530
Message-Id: <20230801135344.3797924-4-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
References: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 03/14] drm/i915/skl: s/SKL/SKYLAKE for
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

Follow consistent naming convention. Replace SKL with
SKYLAKE and Replace IS_SKL_GRAPHICS_STEP with
IS_SKYLAKE() && IS_GRAPHICS_STEP().

v2:
- Change subject skl instead of SKL(Anusha)

v3:
- Unrolled wrapper IS_SKL_GRAPHICS_STEP.
- Replace with IS_PLATFORM && DISPLAY_STEP(tvrtko/jani)

v4:
- Removed the unused macro.

Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c |  4 ++--
 drivers/gpu/drm/i915/gt/intel_workarounds.c        |  2 +-
 drivers/gpu/drm/i915/i915_drv.h                    | 13 ++++++-------
 3 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 5b2665a9d86d..e85eab21b09d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1746,9 +1746,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 		encoder->get_buf_trans = kbl_u_get_buf_trans;
 	} else if (IS_COMETLAKE(i915) || IS_COFFEELAKE(i915) || IS_KABYLAKE(i915)) {
 		encoder->get_buf_trans = kbl_get_buf_trans;
-	} else if (IS_SKL_ULX(i915)) {
+	} else if (IS_SKYLAKE_ULX(i915)) {
 		encoder->get_buf_trans = skl_y_get_buf_trans;
-	} else if (IS_SKL_ULT(i915)) {
+	} else if (IS_SKYLAKE_ULT(i915)) {
 		encoder->get_buf_trans = skl_u_get_buf_trans;
 	} else if (IS_SKYLAKE(i915)) {
 		encoder->get_buf_trans = skl_get_buf_trans;
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 9634ab8d738b..b0b7d448364a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1192,7 +1192,7 @@ skl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 		    GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaInPlaceDecompressionHang:skl */
-	if (IS_SKL_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_H0))
+	if (IS_SKYLAKE(gt->i915) && IS_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_H0))
 		wa_write_or(wal,
 			    GEN9_GAMT_ECO_REG_RW_IA,
 			    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6607f233461a..d7f7ca135000 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -609,19 +609,19 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 /* ULX machines are also considered ULT. */
 #define IS_HASWELL_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
-#define IS_SKL_ULT(i915) \
+#define IS_SKYLAKE_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT)
-#define IS_SKL_ULX(i915) \
+#define IS_SKYLAKE_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULX)
 #define IS_KBL_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
 #define IS_KBL_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULX)
-#define IS_SKL_GT2(i915)	(IS_SKYLAKE(i915) && \
+#define IS_SKYLAKE_GT2(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)
-#define IS_SKL_GT3(i915)	(IS_SKYLAKE(i915) && \
+#define IS_SKYLAKE_GT3(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)
-#define IS_SKL_GT4(i915)	(IS_SKYLAKE(i915) && \
+#define IS_SKYLAKE_GT4(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 4)
 #define IS_KBL_GT2(i915)	(IS_KABYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)
@@ -649,7 +649,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_TGL_UY(i915) \
 	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
 
-#define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))
 
 #define IS_KBL_GRAPHICS_STEP(i915, since, until) \
 	(IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, since, until))
@@ -800,7 +799,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 /* WaRsDisableCoarsePowerGating:skl,cnl */
 #define NEEDS_WaRsDisableCoarsePowerGating(i915)			\
-	(IS_SKL_GT3(i915) || IS_SKL_GT4(i915))
+	(IS_SKYLAKE_GT3(i915) || IS_SKYLAKE_GT4(i915))
 
 /* With the 945 and later, Y tiling got adjusted so that it was 32 128-byte
  * rows, which changed the alignment requirements and fence programming.
-- 
2.34.1

