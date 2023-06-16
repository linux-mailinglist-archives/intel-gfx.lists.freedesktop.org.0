Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80540733023
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 13:42:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5822F10E5D9;
	Fri, 16 Jun 2023 11:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D004410E0D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 11:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686915728; x=1718451728;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3+p1Mwmo9BhUtqqCuP2I5S7T58Q3MPST0jKaz921bIE=;
 b=fc5k+iwPhfLYgHOzC/c5kqNN73vOzJwmSgQ74FUqL+vq3rhEDOvkk8tn
 N9M+h1rsfkQz/Hie/ybve0eSpLCfWQ2hl2BjGmSO9n69I7hgcWaeNTgt2
 un1iMXG8uIeraAcjg4WszqQ17FGp1Fm8+iSJ5E6a/qV+5ylu28CLD6a/k
 jH4hHE6yPFprirYzS1gP/SpXZ94kBxx3FgUHsKDuigmfoxwYjC+60tHPL
 Bjq1Ft3v6Z1uu+NUq8GM5BJZmk69M/+pq/y6BJvS4szrbMa1hC7y/82YT
 iw2GCOYmWHmSp00W+TLnvOzq9OA7D0+Mn/TX1+wQkIfBvjg8jayhPTG5O g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="358067428"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="358067428"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 04:42:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="742646257"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="742646257"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga008.jf.intel.com with ESMTP; 16 Jun 2023 04:42:07 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 17:11:50 +0530
Message-Id: <20230616114200.3228284-2-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616114200.3228284-1-dnyaneshwar.bhadane@intel.com>
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
 <20230616114200.3228284-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/11] drm/i915/skl: s/SKL/SKYLAKE for
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
index b7d20485bde5..13a2c364b8eb 100644
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
index 4d2dece96011..38ecbe793ea4 100644
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
index b4cf6f0f636d..71dd1d80dc97 100644
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
@@ -650,7 +650,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_TGL_UY(i915) \
 	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
 
-#define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))
+#define IS_SKYLAKE_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))
 
 #define IS_KBL_GRAPHICS_STEP(i915, since, until) \
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

