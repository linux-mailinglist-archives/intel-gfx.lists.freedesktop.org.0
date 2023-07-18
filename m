Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03744757640
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 10:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6FD710E301;
	Tue, 18 Jul 2023 08:11:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AA2B10E2EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689667887; x=1721203887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pj4oDT4E1Ohqm74FaRIU/UbuqFC0fbo5Ak6fZ5lWQA4=;
 b=LTfGyV5b/tZ3BZQJjyS2Oc4bQ+crzCAMgZctWEHkyTAwqrKSaUeE6Jdg
 nfXYZYMs4EdHXZNqFsL3OV8esZIsdp3hPoo3j0mPG2fh84Vx43ATVpxUi
 WQ4h0rQ/TmLBQMt6+MsfIK9JOGaO0JpF6fXemyXMKaPXMKmRsOtxf24yf
 j87TjZjTZEwwQxYyIEDH0ziyzYOBl5rC3dY7Z2IApiIPEIl+28t7stU3D
 kPB7LPMsQ4aD6XKmJVPAkqZLF3FSKlkFL7ZXGvqopCey6t7SMv0R1iX6U
 hIwzb2bibaq24sSEn8Fic3Ky0Vrd48SXhQ7C68Vtn4dmw/b7blKV+mjOT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="369696497"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="369696497"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:11:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="723517984"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="723517984"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga002.jf.intel.com with ESMTP; 18 Jul 2023 01:11:23 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 13:41:01 +0530
Message-Id: <20230718081115.166212-2-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
References: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v1 01/15] drm/i915/hsw: s/HSW/HASWELL for
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow consistent naming convention. Replace HSW with
HASWELL.

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <Anusha.Srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c          |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_display_device.h |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c             |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_pch_refclk.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c                  |  2 +-
 drivers/gpu/drm/i915/i915_driver.c                  |  2 +-
 drivers/gpu/drm/i915/i915_drv.h                     | 12 ++++++------
 drivers/gpu/drm/i915/soc/intel_pch.c                | 10 +++++-----
 10 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 4207863b7b2a..b692d6be904b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -469,7 +469,7 @@ static void hsw_get_cdclk(struct drm_i915_private *dev_priv,
 		cdclk_config->cdclk = 450000;
 	else if (freq == LCPLL_CLK_FREQ_450)
 		cdclk_config->cdclk = 450000;
-	else if (IS_HSW_ULT(dev_priv))
+	else if (IS_HASWELL_ULT(dev_priv))
 		cdclk_config->cdclk = 337500;
 	else
 		cdclk_config->cdclk = 540000;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d8533603ad05..55f0ac430d4b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7371,7 +7371,7 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 	if (DISPLAY_VER(dev_priv) >= 9)
 		return false;
 
-	if (IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
+	if (IS_HASWELL_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
 		return false;
 
 	if (HAS_PCH_LPT_H(dev_priv) &&
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 706ff2aa1f55..a31729240bb7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -53,7 +53,7 @@ struct drm_i915_private;
 #define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
 #define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 #define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
-#define HAS_IPS(i915)			(IS_HSW_ULT(i915) || IS_BROADWELL(i915))
+#define HAS_IPS(i915)			(IS_HASWELL_ULT(i915) || IS_BROADWELL(i915))
 #define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
 #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
 #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 09dc6c88ad28..a76d9768473b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -510,7 +510,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	} else if (DISPLAY_VER(dev_priv) == 9) {
 		source_rates = skl_rates;
 		size = ARRAY_SIZE(skl_rates);
-	} else if ((IS_HASWELL(dev_priv) && !IS_HSW_ULX(dev_priv)) ||
+	} else if ((IS_HASWELL(dev_priv) && !IS_HASWELL_ULX(dev_priv)) ||
 		   IS_BROADWELL(dev_priv)) {
 		source_rates = hsw_rates;
 		size = ARRAY_SIZE(hsw_rates);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6b2d8a1e2aa9..66afdb91fcdf 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -927,7 +927,7 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 	switch (wrpll & WRPLL_REF_MASK) {
 	case WRPLL_REF_SPECIAL_HSW:
 		/* Muxed-SSC for BDW, non-SSC for non-ULT HSW. */
-		if (IS_HASWELL(dev_priv) && !IS_HSW_ULT(dev_priv)) {
+		if (IS_HASWELL(dev_priv) && !IS_HASWELL_ULT(dev_priv)) {
 			refclk = dev_priv->display.dpll.ref_clks.nssc;
 			break;
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index f4c09cc37a5e..9583e86b602a 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -423,7 +423,7 @@ static bool wrpll_uses_pch_ssc(struct drm_i915_private *dev_priv,
 	if ((ctl & WRPLL_REF_MASK) == WRPLL_REF_PCH_SSC)
 		return true;
 
-	if ((IS_BROADWELL(dev_priv) || IS_HSW_ULT(dev_priv)) &&
+	if ((IS_BROADWELL(dev_priv) || IS_HASWELL_ULT(dev_priv)) &&
 	    (ctl & WRPLL_REF_MASK) == WRPLL_REF_MUXED_SSC_BDW &&
 	    (fuse_strap & HSW_CPU_SSC_ENABLE) == 0)
 		return true;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 7a008e829d4d..35cde9f4a320 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -179,7 +179,7 @@ int intel_gt_init_hw(struct intel_gt *gt)
 	if (IS_HASWELL(i915))
 		intel_uncore_write(uncore,
 				   HSW_MI_PREDICATE_RESULT_2,
-				   IS_HSW_GT3(i915) ?
+				   IS_HASWELL_GT3(i915) ?
 				   LOWER_SLICE_ENABLED : LOWER_SLICE_DISABLED);
 
 	/* Apply the GT workarounds... */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 75cbc43b326d..322046491c37 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -175,7 +175,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 {
 	bool pre = false;
 
-	pre |= IS_HSW_EARLY_SDV(dev_priv);
+	pre |= IS_HASWELL_EARLY_SDV(dev_priv);
 	pre |= IS_SKYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x6;
 	pre |= IS_BROXTON(dev_priv) && INTEL_REVID(dev_priv) < 0xA;
 	pre |= IS_KABYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b4cf6f0f636d..f44e2a34392a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -593,7 +593,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
 #define IS_ADLP_RPLU(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
-#define IS_HSW_EARLY_SDV(i915) (IS_HASWELL(i915) && \
+#define IS_HASWELL_EARLY_SDV(i915) (IS_HASWELL(i915) && \
 				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)
 #define IS_BDW_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT)
@@ -601,14 +601,14 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX)
 #define IS_BDW_GT3(i915)	(IS_BROADWELL(i915) && \
 				 INTEL_INFO(i915)->gt == 3)
-#define IS_HSW_ULT(i915) \
+#define IS_HASWELL_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT)
-#define IS_HSW_GT3(i915)	(IS_HASWELL(i915) && \
+#define IS_HASWELL_GT3(i915)	(IS_HASWELL(i915) && \
 				 INTEL_INFO(i915)->gt == 3)
-#define IS_HSW_GT1(i915)	(IS_HASWELL(i915) && \
+#define IS_HASWELL_GT1(i915)	(IS_HASWELL(i915) && \
 				 INTEL_INFO(i915)->gt == 1)
 /* ULX machines are also considered ULT. */
-#define IS_HSW_ULX(i915) \
+#define IS_HASWELL_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
 #define IS_SKL_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT)
@@ -862,7 +862,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 /* DPF == dynamic parity feature */
 #define HAS_L3_DPF(i915) (INTEL_INFO(i915)->has_l3_dpf)
-#define NUM_L3_SLICES(i915) (IS_HSW_GT3(i915) ? \
+#define NUM_L3_SLICES(i915) (IS_HASWELL_GT3(i915) ? \
 				 2 : HAS_L3_DPF(i915))
 
 /* Only valid when HAS_DISPLAY() is true */
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index ba9843cb1b13..bf829f85be7e 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -32,21 +32,21 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		drm_WARN_ON(&dev_priv->drm,
 			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
 		drm_WARN_ON(&dev_priv->drm,
-			    IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
+			    IS_HASWELL_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
 		return PCH_LPT;
 	case INTEL_PCH_LPT_LP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found LynxPoint LP PCH\n");
 		drm_WARN_ON(&dev_priv->drm,
 			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
 		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HSW_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
+			    !IS_HASWELL_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
 		return PCH_LPT;
 	case INTEL_PCH_WPT_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint PCH\n");
 		drm_WARN_ON(&dev_priv->drm,
 			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
 		drm_WARN_ON(&dev_priv->drm,
-			    IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
+			    IS_HASWELL_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
 		/* WPT is LPT compatible */
 		return PCH_LPT;
 	case INTEL_PCH_WPT_LP_DEVICE_ID_TYPE:
@@ -54,7 +54,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		drm_WARN_ON(&dev_priv->drm,
 			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
 		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HSW_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
+			    !IS_HASWELL_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
 		/* WPT is LPT compatible */
 		return PCH_LPT;
 	case INTEL_PCH_SPT_DEVICE_ID_TYPE:
@@ -186,7 +186,7 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
 		id = INTEL_PCH_CNP_DEVICE_ID_TYPE;
 	else if (IS_KABYLAKE(dev_priv) || IS_SKYLAKE(dev_priv))
 		id = INTEL_PCH_SPT_DEVICE_ID_TYPE;
-	else if (IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
+	else if (IS_HASWELL_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
 		id = INTEL_PCH_LPT_LP_DEVICE_ID_TYPE;
 	else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
 		id = INTEL_PCH_LPT_DEVICE_ID_TYPE;
-- 
2.34.1

