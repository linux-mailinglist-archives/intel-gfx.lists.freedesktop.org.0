Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 669E073149D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 11:54:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEBAA10E4BC;
	Thu, 15 Jun 2023 09:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 649E210E4B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 09:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686822883; x=1718358883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=16agw3YSG9q6/sQMK3JZmrMcIm26Ridn3kkoIKUrByg=;
 b=BzBAVSsT8PlvXdFnzodKGVK/Jgc3Cns6lqfflXLhIGcKb2YyOHqemTIy
 jOtvIQmEM4q51/rKZiU9Jl9kxVSlJ2SDJoESIuXKrb1G56JlmU27Voo3P
 m1pebTAsYqLrqUL+nOXBV8JFMs+SWuQqHwtJQnlXT8CQLmg7dDIX3z9SA
 kcJw2dJgHl7muP7KUFLjGCrr+3+ETTyj9KLt05fUWpgXgN5+q3qFbPdRm
 SDBaVBikxVU+N95SNxe2sqCKittgfxGh+PyMraBFOO9XMhxIW5RiDX5Ii
 /pW1+COl5P41Vs1A/g7pv33cDxjfnae687z+Z5eIzuPihd676XHcoXqyr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="339214227"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="339214227"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 02:54:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="802274073"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="802274073"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jun 2023 02:54:33 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 15:24:16 +0530
Message-Id: <20230615095421.3135415-7-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/11] drm/i915/SKL: s/SKL/SKYLAKE for
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

Follow consistent naming convention. Replace SKL with
SKYLAKE.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c |  4 ++--
 drivers/gpu/drm/i915/gt/intel_workarounds.c        |  2 +-
 drivers/gpu/drm/i915/i915_drv.h                    | 14 +++++++-------
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 84b09d188d2a..ab84d003232c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1724,9 +1724,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
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
index b632fb5592a8..10a4e0fc23ec 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1173,7 +1173,7 @@ skl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 		    GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaInPlaceDecompressionHang:skl */
-	if (IS_SKL_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_H0))
+	if (IS_SKYLAKE_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_H0))
 		wa_write_or(wal,
 			    GEN9_GAMT_ECO_REG_RW_IA,
 			    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f19915115cff..3c4a66f1a7ba 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -610,19 +610,19 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 /* ULX machines are also considered ULT. */
 #define IS_HSW_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
-#define IS_SKL_ULT(i915) \
+#define IS_SKYLAKE_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT)
-#define IS_SKL_ULX(i915) \
+#define IS_SKYLAKE_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULX)
 #define IS_KABYLAKE_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
 #define IS_KABYLAKE_ULX(i915) \
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
 #define IS_KABYLAKE_GT2(i915)	(IS_KABYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)
@@ -650,7 +650,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_TIGERLAKE_UY(i915) \
 	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
 
-#define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))
+#define IS_SKYLAKE_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))
 
 #define IS_KABYLAKE_GRAPHICS_STEP(i915, since, until) \
 	(IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, since, until))
@@ -801,7 +801,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 /* WaRsDisableCoarsePowerGating:skl,cnl */
 #define NEEDS_WaRsDisableCoarsePowerGating(i915)			\
-	(IS_SKL_GT3(i915) || IS_SKL_GT4(i915))
+	(IS_SKYLAKE_GT3(i915) || IS_SKYLAKE_GT4(i915))
 
 /* With the 945 and later, Y tiling got adjusted so that it was 32 128-byte
  * rows, which changed the alignment requirements and fence programming.
-- 
2.34.1

