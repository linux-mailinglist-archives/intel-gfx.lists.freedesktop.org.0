Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F1658FEE6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:12:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C90CB3D2B;
	Thu, 11 Aug 2022 15:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFB3AB3CDC
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230759; x=1691766759;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BoZrOmlAxNO6a+Uk9H5Rfk3QPYUyQGMmlTmIerx8hyI=;
 b=FUq3I+BkvLVnwf0DQcWTyxPsGDSulRZ8fyamnyLZSmsahZ3cdhSds5KO
 Hp4fN1Pto6wl0WoqadhaG0Uu1uwJCMZKt+JsWDiPkepC5LSjaj+5hTx3N
 k5PjRn7gS6LxLQuAL4svo7BAeg5jNdNwfhoo6FYccpO2lylk84PsAHZob
 Z3lUHCrlagqmlNzWW4SOcA1RXOSN/mowRVWQfkU0QpyoeVe14rZmnSlQ1
 u7LeEZGpslmzr6PVqLRhQq7XUnJOwFgW3YCRzS8baCo4jd9VCOzbGonnu
 3ILMdPlZhsY6lGyBnRpCFQpym/Fkz9EwLODXyZIF7k6OBHymEHPMx+ZwO Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="290127080"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="290127080"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:15 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="933350248"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:15 +0300
Message-Id: <664ed8395a6028e654cbc2251605e967a9d46289.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/39] drm/i915: move hotplug_funcs to
 display.funcs
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++++
 drivers/gpu/drm/i915/i915_drv.h               |  4 ----
 drivers/gpu/drm/i915/i915_irq.c               | 20 +++++++++----------
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index f09bbb7b5cc9..ff76bd4079e4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -13,6 +13,7 @@ struct intel_cdclk_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dpll_funcs;
+struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
 
 struct intel_display_funcs {
@@ -40,6 +41,9 @@ struct intel_display {
 
 		/* Display pll funcs */
 		const struct intel_dpll_funcs *dpll;
+
+		/* irq display functions */
+		const struct intel_hotplug_funcs *hotplug;
 	} funcs;
 };
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 375f526215a2..513fae9e7a81 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -94,7 +94,6 @@ struct intel_encoder;
 struct intel_fbdev;
 struct intel_fdi_funcs;
 struct intel_gmbus;
-struct intel_hotplug_funcs;
 struct intel_limit;
 struct intel_overlay;
 struct intel_overlay_error_state;
@@ -509,9 +508,6 @@ struct drm_i915_private {
 	/* pm display functions */
 	const struct drm_i915_wm_disp_funcs *wm_disp;
 
-	/* irq display functions */
-	const struct intel_hotplug_funcs *hotplug_funcs;
-
 	/* fdi display functions */
 	const struct intel_fdi_funcs *fdi_funcs;
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 0389f532d926..c1b8f949c53d 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -4370,8 +4370,8 @@ HPD_FUNCS(ilk);
 
 void intel_hpd_irq_setup(struct drm_i915_private *i915)
 {
-	if (i915->display_irqs_enabled && i915->hotplug_funcs)
-		i915->hotplug_funcs->hpd_irq_setup(i915);
+	if (i915->display_irqs_enabled && i915->display.funcs.hotplug)
+		i915->display.funcs.hotplug->hpd_irq_setup(i915);
 }
 
 /**
@@ -4424,22 +4424,22 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 
 	if (HAS_GMCH(dev_priv)) {
 		if (I915_HAS_HOTPLUG(dev_priv))
-			dev_priv->hotplug_funcs = &i915_hpd_funcs;
+			dev_priv->display.funcs.hotplug = &i915_hpd_funcs;
 	} else {
 		if (HAS_PCH_DG2(dev_priv))
-			dev_priv->hotplug_funcs = &icp_hpd_funcs;
+			dev_priv->display.funcs.hotplug = &icp_hpd_funcs;
 		else if (HAS_PCH_DG1(dev_priv))
-			dev_priv->hotplug_funcs = &dg1_hpd_funcs;
+			dev_priv->display.funcs.hotplug = &dg1_hpd_funcs;
 		else if (DISPLAY_VER(dev_priv) >= 11)
-			dev_priv->hotplug_funcs = &gen11_hpd_funcs;
+			dev_priv->display.funcs.hotplug = &gen11_hpd_funcs;
 		else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-			dev_priv->hotplug_funcs = &bxt_hpd_funcs;
+			dev_priv->display.funcs.hotplug = &bxt_hpd_funcs;
 		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-			dev_priv->hotplug_funcs = &icp_hpd_funcs;
+			dev_priv->display.funcs.hotplug = &icp_hpd_funcs;
 		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
-			dev_priv->hotplug_funcs = &spt_hpd_funcs;
+			dev_priv->display.funcs.hotplug = &spt_hpd_funcs;
 		else
-			dev_priv->hotplug_funcs = &ilk_hpd_funcs;
+			dev_priv->display.funcs.hotplug = &ilk_hpd_funcs;
 	}
 }
 
-- 
2.34.1

