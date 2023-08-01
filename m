Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5316076B653
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 15:54:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 650D210E3FA;
	Tue,  1 Aug 2023 13:53:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 148C510E354
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690898033; x=1722434033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RELBFyeZ2h+CK5iD6XcftSZCeN2Yapo5oi66MTW0CiI=;
 b=YuBJ71I4ZT23E8lWdOzYO9leFak843mdI8LrBS/f/jVazMTKQTZsuWKS
 c+LM8dC7q2pMmMavE1qZHA5gQ2hqMN31Cxb4DylfGSaOVmPDwCUoM+U/V
 4h2MdwMoVuLnP/WC0DGlzwFy2VCgGdjXHphOYU/w0pcrr6w8O33KhGR+T
 GMA15/MMmhpw4YDB3VpxDNm9CiA7Cmi3dvhtW5veUy/MqUAhHp4feUKHW
 EyAg2sZFcd0AnKehSNL6mzfO87sZZBsY+AcpOlrTA6X5w3jKxFF/9boGs
 1vL/ggyzoDt0N1C9E0UDjH/doZWJotF6nbntk6YVG514X7OtiBGZPqlTh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="435629310"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="435629310"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 06:53:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="818803885"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="818803885"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Aug 2023 06:53:50 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Aug 2023 19:23:31 +0530
Message-Id: <20230801135344.3797924-2-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
References: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 01/14] drm/i915/hsw: s/HSW/HASWELL for
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

Follow consistent naming convention. Replace HSW with
HASWELL.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
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
index dcc1f6941b60..f18e1f8ef22e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -470,7 +470,7 @@ static void hsw_get_cdclk(struct drm_i915_private *dev_priv,
 		cdclk_config->cdclk = 450000;
 	else if (freq == LCPLL_CLK_FREQ_450)
 		cdclk_config->cdclk = 450000;
-	else if (IS_HSW_ULT(dev_priv))
+	else if (IS_HASWELL_ULT(dev_priv))
 		cdclk_config->cdclk = 337500;
 	else
 		cdclk_config->cdclk = 540000;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 43cba98f7753..6352c530bd7b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7377,7 +7377,7 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 	if (DISPLAY_VER(dev_priv) >= 9)
 		return false;
 
-	if (IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
+	if (IS_HASWELL_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
 		return false;
 
 	if (HAS_PCH_LPT_H(dev_priv) &&
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 3324bd453ca7..215e682bd8b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -54,7 +54,7 @@ struct drm_printer;
 #define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
 #define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 #define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
-#define HAS_IPS(i915)			(IS_HSW_ULT(i915) || IS_BROADWELL(i915))
+#define HAS_IPS(i915)			(IS_HASWELL_ULT(i915) || IS_BROADWELL(i915))
 #define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
 #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
 #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 03675620e3ea..f5407569300a 100644
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
index 02886c1eb0f1..9b736c118178 100644
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
index 294b022de22b..b870c0df081a 100644
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
index 682ef2b5c7d5..1003154ec71e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -592,7 +592,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
 #define IS_ADLP_RPLU(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
-#define IS_HSW_EARLY_SDV(i915) (IS_HASWELL(i915) && \
+#define IS_HASWELL_EARLY_SDV(i915) (IS_HASWELL(i915) && \
 				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)
 #define IS_BDW_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT)
@@ -600,14 +600,14 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
@@ -861,7 +861,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
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

