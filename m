Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B30A76B652
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 15:53:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A68B110E34B;
	Tue,  1 Aug 2023 13:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB66E10E34B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 13:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690898035; x=1722434035;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bM7D8thwK8ZHK+CNivrF6vXL1J8PPoVSW+uwB6yjAhE=;
 b=Sg6dd5X/qMaZjgtx7wuFG96Fnvqypx315AQNKppXw6KSBWjLt3/Ek7jk
 jTKMRROth5zHbW3R5chBed/5WW3VL0YgxH6DytHTseOB7BG/3pFViOG6k
 dajO7Drmvh5k91yQ5KyOXMYtatmpSmUH9GUCgtAiKDYyGYVk/8GWm4pGy
 JAZTK/681Ud2UXFDm9mcWxMgEFzcElPiz+HmtRXdOB0ldpLG440HgMucg
 6ixp85rckVyS1m3/mLvlwk0qBdOmNWeNwwEcW1fxoctTGY+dR8Zf0OOdD
 r0eobihpc0koIIAxm13EJGt80NpAU9F3DimnZqmvXGrQ7kJ3wZ1Z2cGp+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="435629322"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="435629322"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 06:53:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="818803892"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="818803892"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Aug 2023 06:53:53 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Aug 2023 19:23:32 +0530
Message-Id: <20230801135344.3797924-3-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
References: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 02/14] drm/i915/bdw: s/BDW/BROADWELL for
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

Follow consistent naming convention. Replace BDW with
BROADWELL.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  4 ++--
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c  |  2 +-
 drivers/gpu/drm/i915/i915_drv.h              |  6 +++---
 drivers/gpu/drm/i915/soc/intel_pch.c         | 10 +++++-----
 5 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index f18e1f8ef22e..f683802ce931 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3200,9 +3200,9 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 		 */
 		if (intel_de_read(dev_priv, FUSE_STRAP) & HSW_CDCLK_LIMIT)
 			dev_priv->display.cdclk.max_cdclk_freq = 450000;
-		else if (IS_BDW_ULX(dev_priv))
+		else if (IS_BROADWELL_ULX(dev_priv))
 			dev_priv->display.cdclk.max_cdclk_freq = 450000;
-		else if (IS_BDW_ULT(dev_priv))
+		else if (IS_BROADWELL_ULT(dev_priv))
 			dev_priv->display.cdclk.max_cdclk_freq = 540000;
 		else
 			dev_priv->display.cdclk.max_cdclk_freq = 675000;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6352c530bd7b..e401bcb234c2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7377,7 +7377,7 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 	if (DISPLAY_VER(dev_priv) >= 9)
 		return false;
 
-	if (IS_HASWELL_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
+	if (IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv))
 		return false;
 
 	if (HAS_PCH_LPT_H(dev_priv) &&
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 589d009032fc..9634ab8d738b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -420,7 +420,7 @@ static void bdw_ctx_workarounds_init(struct intel_engine_cs *engine,
 		     /* WaForceContextSaveRestoreNonCoherent:bdw */
 		     HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT |
 		     /* WaDisableFenceDestinationToSLM:bdw (pre-prod) */
-		     (IS_BDW_GT3(i915) ? HDC_FENCE_DEST_SLM_DISABLE : 0));
+		     (IS_BROADWELL_GT3(i915) ? HDC_FENCE_DEST_SLM_DISABLE : 0));
 }
 
 static void chv_ctx_workarounds_init(struct intel_engine_cs *engine,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1003154ec71e..6607f233461a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -594,11 +594,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
 #define IS_HASWELL_EARLY_SDV(i915) (IS_HASWELL(i915) && \
 				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)
-#define IS_BDW_ULT(i915) \
+#define IS_BROADWELL_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT)
-#define IS_BDW_ULX(i915) \
+#define IS_BROADWELL_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX)
-#define IS_BDW_GT3(i915)	(IS_BROADWELL(i915) && \
+#define IS_BROADWELL_GT3(i915)	(IS_BROADWELL(i915) && \
 				 INTEL_INFO(i915)->gt == 3)
 #define IS_HASWELL_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT)
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index bf829f85be7e..382a4a8015b4 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -32,21 +32,21 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		drm_WARN_ON(&dev_priv->drm,
 			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
 		drm_WARN_ON(&dev_priv->drm,
-			    IS_HASWELL_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
+			    IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv));
 		return PCH_LPT;
 	case INTEL_PCH_LPT_LP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found LynxPoint LP PCH\n");
 		drm_WARN_ON(&dev_priv->drm,
 			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
 		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
+			    !IS_HASWELL_ULT(dev_priv) && !IS_BROADWELL_ULT(dev_priv));
 		return PCH_LPT;
 	case INTEL_PCH_WPT_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint PCH\n");
 		drm_WARN_ON(&dev_priv->drm,
 			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
 		drm_WARN_ON(&dev_priv->drm,
-			    IS_HASWELL_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
+			    IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv));
 		/* WPT is LPT compatible */
 		return PCH_LPT;
 	case INTEL_PCH_WPT_LP_DEVICE_ID_TYPE:
@@ -54,7 +54,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		drm_WARN_ON(&dev_priv->drm,
 			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
 		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
+			    !IS_HASWELL_ULT(dev_priv) && !IS_BROADWELL_ULT(dev_priv));
 		/* WPT is LPT compatible */
 		return PCH_LPT;
 	case INTEL_PCH_SPT_DEVICE_ID_TYPE:
@@ -186,7 +186,7 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
 		id = INTEL_PCH_CNP_DEVICE_ID_TYPE;
 	else if (IS_KABYLAKE(dev_priv) || IS_SKYLAKE(dev_priv))
 		id = INTEL_PCH_SPT_DEVICE_ID_TYPE;
-	else if (IS_HASWELL_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
+	else if (IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv))
 		id = INTEL_PCH_LPT_LP_DEVICE_ID_TYPE;
 	else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
 		id = INTEL_PCH_LPT_DEVICE_ID_TYPE;
-- 
2.34.1

