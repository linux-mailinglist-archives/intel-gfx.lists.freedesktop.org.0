Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BE53D7037
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 09:19:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E38AE6EDAE;
	Tue, 27 Jul 2021 07:19:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B65F6E94C
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 07:19:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="191982345"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="191982345"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:03 -0700
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="505378911"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:03 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jul 2021 00:18:34 -0700
Message-Id: <20210727071845.841554-17-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210727071845.841554-1-lucas.demarchi@intel.com>
References: <20210727071845.841554-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 17/28] drm/i915: remove explicit CNL handling from
 intel_pm.c
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

Remove support for CNL as it's highly untested, probably broken, and
there is no real platform that requires this code. This is part of CNL
removal from i915.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h |  2 +-
 drivers/gpu/drm/i915/intel_pm.c | 41 +--------------------------------
 2 files changed, 2 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1ca9fef2f86c..36bde25426bd 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8266,7 +8266,7 @@ enum {
 
 #define GEN8_CHICKEN_DCPR_1		_MMIO(0x46430)
 #define   SKL_SELECT_ALTERNATE_DC_EXIT	(1 << 30)
-#define   CNL_DELAY_PMRSP		(1 << 22)
+#define   ICL_DELAY_PMRSP		(1 << 22)
 #define   MASK_WAKEMEM			(1 << 13)
 #define   CNL_DDI_CLOCK_REG_ACCESS_ON	(1 << 7)
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index aa64b2ef2efb..65bc3709f54c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7465,7 +7465,7 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
 
 	/*Wa_14010594013:icl, ehl */
 	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
-			 0, CNL_DELAY_PMRSP);
+			 0, ICL_DELAY_PMRSP);
 }
 
 static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -7515,43 +7515,6 @@ static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
 		   CNP_PWM_CGE_GATING_DISABLE);
 }
 
-static void cnl_init_clock_gating(struct drm_i915_private *dev_priv)
-{
-	u32 val;
-	cnp_init_clock_gating(dev_priv);
-
-	/* This is not an Wa. Enable for better image quality */
-	intel_uncore_write(&dev_priv->uncore, _3D_CHICKEN3,
-		   _MASKED_BIT_ENABLE(_3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE));
-
-	/* WaEnableChickenDCPR:cnl */
-	intel_uncore_write(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
-		   intel_uncore_read(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);
-
-	/*
-	 * WaFbcWakeMemOn:cnl
-	 * Display WA #0859: cnl
-	 */
-	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
-		   DISP_FBC_MEMORY_WAKE);
-
-	val = intel_uncore_read(&dev_priv->uncore, SLICE_UNIT_LEVEL_CLKGATE);
-	/* ReadHitWriteOnlyDisable:cnl */
-	val |= RCCUNIT_CLKGATE_DIS;
-	intel_uncore_write(&dev_priv->uncore, SLICE_UNIT_LEVEL_CLKGATE, val);
-
-	/* Wa_2201832410:cnl */
-	val = intel_uncore_read(&dev_priv->uncore, SUBSLICE_UNIT_LEVEL_CLKGATE);
-	val |= GWUNIT_CLKGATE_DIS;
-	intel_uncore_write(&dev_priv->uncore, SUBSLICE_UNIT_LEVEL_CLKGATE, val);
-
-	/* WaDisableVFclkgate:cnl */
-	/* WaVFUnitClockGatingDisable:cnl */
-	val = intel_uncore_read(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE);
-	val |= VFUNIT_CLKGATE_DIS;
-	intel_uncore_write(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE, val);
-}
-
 static void cfl_init_clock_gating(struct drm_i915_private *dev_priv)
 {
 	cnp_init_clock_gating(dev_priv);
@@ -7980,8 +7943,6 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->display.init_clock_gating = gen12lp_init_clock_gating;
 	else if (GRAPHICS_VER(dev_priv) == 11)
 		dev_priv->display.init_clock_gating = icl_init_clock_gating;
-	else if (IS_CANNONLAKE(dev_priv))
-		dev_priv->display.init_clock_gating = cnl_init_clock_gating;
 	else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
 		dev_priv->display.init_clock_gating = cfl_init_clock_gating;
 	else if (IS_SKYLAKE(dev_priv))
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
