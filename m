Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2CB59FB09
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C9E6B50FA;
	Wed, 24 Aug 2022 13:17:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B577D12B83E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661346989; x=1692882989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/Ikp9VuhCw8ORdQlFr4Gg6hjxg/H5eAjOI3NipXt8bg=;
 b=iQcjsjRu2DZK1ceJk+wb0Y+dXYC9IFwGb28vqo/7O6qBwt+fEquJ4DFT
 FQRlxQtJT9xu79fy/3stxls6i+Hs8Bnk6Yfc/tr9/jVIv9Z8CSKzSJ/GW
 wWPP9N771NEVmnmrKwB7zyxa+013Wz3ZnMOueUsFaiiwLQC33XZJIewFk
 mRBsCgQir6Djx3n/dxoL/KQEetq6gJUSqsoz0YS2SUm4W8fSoFafdMYmm
 116YmzqcRTEl96Y6m8kWXDeYimo/z0Nhp81ETFm+E2gPner3U6U1sv+HU
 XPMOusNDlKYVwRtWAEO1lfVSORBxQk7g2eNECNopIqcVfU2OfwdVjGTq1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="273713642"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="273713642"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:16:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="560597804"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:16:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:30 +0300
Message-Id: <1cf677f1d02b8b621ec41ff77fe5de26d4f6954a.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/38] drm/i915: move hotplug_funcs to
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display hotplug functions under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++++
 drivers/gpu/drm/i915/i915_drv.h               |  4 ----
 drivers/gpu/drm/i915/i915_irq.c               | 20 +++++++++----------
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index f62b18477078..e9481c5ef1a5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -13,6 +13,7 @@ struct intel_cdclk_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dpll_funcs;
+struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
 
 struct intel_display_funcs {
@@ -42,6 +43,9 @@ struct intel_display {
 
 		/* Display pll funcs */
 		const struct intel_dpll_funcs *dpll;
+
+		/* irq display functions */
+		const struct intel_hotplug_funcs *hotplug;
 	} funcs;
 };
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5b7b4ff31420..d8baeba82be1 100644
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

