Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7AE6A6D83
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 14:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9DF810E277;
	Wed,  1 Mar 2023 13:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC4210E26A
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 13:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677678877; x=1709214877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CLrDlcV9ECAThq7wOp9V+az3dqt53aTK39ES0w7NQrc=;
 b=EwBqXVhE2Nfdtb/DoRggKyz3/BXzDBJRRxefMGyj7oYHUVrLXFaEycXe
 4CVuQObaLAo7bRxg3b4xgEtia9fE8oxH9nGqACCjtQ/LB9xTj2JuoIzyO
 MKfxnGNtFslCgpLklP+4Ur6dSG71iOUDBialFJr0DP3ZQTujI8/hCFRnI
 xsfE6rjGgRJQqieAtAntIa18qjXWDEYKL+a7lo/xyVq5lndu9k/Ppd57L
 7zoORbEvxDC/gTjBC0hoMTV5gRP+QM0yAriKzxrY06TzmsiXeaQfVKALW
 OjElnMvddaOnVJpw/eydUmi+E4dRd6lBYNjI35Q9kyNc6PUJ+Z5gGX5z5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="335904960"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="335904960"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 05:54:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="706987519"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="706987519"
Received: from dsvarnas-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.249])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 05:54:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 15:54:17 +0200
Message-Id: <f732a7922c2450b41169c9b79a80fba97ab00592.1677678803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1677678803.git.jani.nikula@intel.com>
References: <cover.1677678803.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/pm: drop intel_suspend_hw()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All intel_suspend_hw() does is clear PCH_LP_PARTITION_LEVEL_DISABLE bit
in SOUTH_DSPCLK_GATE_D for LPT LP. intel_suspend_hw() gets called from
i915_drm_suspend().

However, i915_drm_suspend_late() calls
intel_display_power_suspend_late(), which in turn calls hsw_enable_pc8()
on HSW and BDW. The first thing that does is clear
PCH_LP_PARTITION_LEVEL_DISABLE bit in SOUTH_DSPCLK_GATE_D.

Remove the duplicated clearing of the bit, effectively delaying it from
i915_drm_suspend() to i915_drm_suspend_late(), and remove the
unnecessary intel_suspend_hw() function altogether.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c |  2 --
 drivers/gpu/drm/i915/intel_pm.c    | 16 ----------------
 drivers/gpu/drm/i915/intel_pm.h    |  1 -
 3 files changed, 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 171ff4edabd6..a53fd339e2cc 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1079,8 +1079,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	intel_suspend_encoders(dev_priv);
 
-	intel_suspend_hw(dev_priv);
-
 	/* Must be called before GGTT is suspended. */
 	intel_dpt_suspend(dev_priv);
 	i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8b02af531e82..c45af0d981fd 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -320,16 +320,6 @@ static void lpt_init_clock_gating(struct drm_i915_private *dev_priv)
 			 0, TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
 }
 
-static void lpt_suspend_hw(struct drm_i915_private *dev_priv)
-{
-	if (HAS_PCH_LPT_LP(dev_priv)) {
-		u32 val = intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D);
-
-		val &= ~PCH_LP_PARTITION_LEVEL_DISABLE;
-		intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, val);
-	}
-}
-
 static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
 				   int general_prio_credits,
 				   int high_prio_credits)
@@ -789,12 +779,6 @@ void intel_init_clock_gating(struct drm_i915_private *dev_priv)
 	dev_priv->clock_gating_funcs->init_clock_gating(dev_priv);
 }
 
-void intel_suspend_hw(struct drm_i915_private *dev_priv)
-{
-	if (HAS_PCH_LPT(dev_priv))
-		lpt_suspend_hw(dev_priv);
-}
-
 static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
 {
 	drm_dbg_kms(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index 1dd464d2d186..f774bddcdca6 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -13,7 +13,6 @@ struct intel_crtc_state;
 struct intel_plane_state;
 
 void intel_init_clock_gating(struct drm_i915_private *dev_priv);
-void intel_suspend_hw(struct drm_i915_private *dev_priv);
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
 
 #endif /* __INTEL_PM_H__ */
-- 
2.39.1

