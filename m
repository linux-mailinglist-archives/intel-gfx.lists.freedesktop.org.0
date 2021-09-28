Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A3641BAA3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 00:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7D116E9D1;
	Tue, 28 Sep 2021 22:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91CB26E9D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 22:58:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="204309951"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="204309951"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 15:58:54 -0700
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="519320696"
Received: from pop-mobl1.ger.corp.intel.com (HELO localhost) ([10.249.36.249])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2021 15:58:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, jani.nikula@intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Wed, 29 Sep 2021 01:57:51 +0300
Message-Id: <95d626a7329ab5779804762894e304e12c6dbe1f.1632869550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632869550.git.jani.nikula@intel.com>
References: <cover.1632869550.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/24] drm/i915: split clock gating init from
 display vtable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dave Airlie <airlied@redhat.com>

This function is only used inside intel_pm.c

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h |  9 ++++++-
 drivers/gpu/drm/i915/intel_pm.c | 48 ++++++++++++++++-----------------
 2 files changed, 32 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 90e2f44e2deb..b429298f23ee 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -323,6 +323,11 @@ struct intel_crtc;
 struct intel_limit;
 struct dpll;
 
+/* functions used internal in intel_pm.c */
+struct drm_i915_clock_gating_funcs {
+	void (*init_clock_gating)(struct drm_i915_private *dev_priv);
+};
+
 struct drm_i915_display_funcs {
 	void (*get_cdclk)(struct drm_i915_private *dev_priv,
 			  struct intel_cdclk_config *cdclk_config);
@@ -365,7 +370,6 @@ struct drm_i915_display_funcs {
 				    const struct drm_connector_state *old_conn_state);
 	void (*fdi_link_train)(struct intel_crtc *crtc,
 			       const struct intel_crtc_state *crtc_state);
-	void (*init_clock_gating)(struct drm_i915_private *dev_priv);
 	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
 	/* clock updates for mode set */
 	/* cursor updates */
@@ -954,6 +958,9 @@ struct drm_i915_private {
 	/* unbound hipri wq for page flips/plane updates */
 	struct workqueue_struct *flip_wq;
 
+	/* pm private clock gating functions */
+	struct drm_i915_clock_gating_funcs clock_gating_funcs;
+
 	/* Display functions */
 	struct drm_i915_display_funcs display;
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 11c9df62391d..34d6faee8969 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7869,7 +7869,7 @@ static void i830_init_clock_gating(struct drm_i915_private *dev_priv)
 
 void intel_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-	dev_priv->display.init_clock_gating(dev_priv);
+	dev_priv->clock_gating_funcs.init_clock_gating(dev_priv);
 }
 
 void intel_suspend_hw(struct drm_i915_private *dev_priv)
@@ -7896,52 +7896,52 @@ static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 {
 	if (IS_ALDERLAKE_P(dev_priv))
-		dev_priv->display.init_clock_gating = adlp_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = adlp_init_clock_gating;
 	else if (IS_DG1(dev_priv))
-		dev_priv->display.init_clock_gating = dg1_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = dg1_init_clock_gating;
 	else if (GRAPHICS_VER(dev_priv) == 12)
-		dev_priv->display.init_clock_gating = gen12lp_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = gen12lp_init_clock_gating;
 	else if (GRAPHICS_VER(dev_priv) == 11)
-		dev_priv->display.init_clock_gating = icl_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = icl_init_clock_gating;
 	else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
-		dev_priv->display.init_clock_gating = cfl_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = cfl_init_clock_gating;
 	else if (IS_SKYLAKE(dev_priv))
-		dev_priv->display.init_clock_gating = skl_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = skl_init_clock_gating;
 	else if (IS_KABYLAKE(dev_priv))
-		dev_priv->display.init_clock_gating = kbl_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = kbl_init_clock_gating;
 	else if (IS_BROXTON(dev_priv))
-		dev_priv->display.init_clock_gating = bxt_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = bxt_init_clock_gating;
 	else if (IS_GEMINILAKE(dev_priv))
-		dev_priv->display.init_clock_gating = glk_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = glk_init_clock_gating;
 	else if (IS_BROADWELL(dev_priv))
-		dev_priv->display.init_clock_gating = bdw_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = bdw_init_clock_gating;
 	else if (IS_CHERRYVIEW(dev_priv))
-		dev_priv->display.init_clock_gating = chv_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = chv_init_clock_gating;
 	else if (IS_HASWELL(dev_priv))
-		dev_priv->display.init_clock_gating = hsw_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = hsw_init_clock_gating;
 	else if (IS_IVYBRIDGE(dev_priv))
-		dev_priv->display.init_clock_gating = ivb_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = ivb_init_clock_gating;
 	else if (IS_VALLEYVIEW(dev_priv))
-		dev_priv->display.init_clock_gating = vlv_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = vlv_init_clock_gating;
 	else if (GRAPHICS_VER(dev_priv) == 6)
-		dev_priv->display.init_clock_gating = gen6_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = gen6_init_clock_gating;
 	else if (GRAPHICS_VER(dev_priv) == 5)
-		dev_priv->display.init_clock_gating = ilk_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = ilk_init_clock_gating;
 	else if (IS_G4X(dev_priv))
-		dev_priv->display.init_clock_gating = g4x_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = g4x_init_clock_gating;
 	else if (IS_I965GM(dev_priv))
-		dev_priv->display.init_clock_gating = i965gm_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = i965gm_init_clock_gating;
 	else if (IS_I965G(dev_priv))
-		dev_priv->display.init_clock_gating = i965g_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = i965g_init_clock_gating;
 	else if (GRAPHICS_VER(dev_priv) == 3)
-		dev_priv->display.init_clock_gating = gen3_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = gen3_init_clock_gating;
 	else if (IS_I85X(dev_priv) || IS_I865G(dev_priv))
-		dev_priv->display.init_clock_gating = i85x_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = i85x_init_clock_gating;
 	else if (GRAPHICS_VER(dev_priv) == 2)
-		dev_priv->display.init_clock_gating = i830_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = i830_init_clock_gating;
 	else {
 		MISSING_CASE(INTEL_DEVID(dev_priv));
-		dev_priv->display.init_clock_gating = nop_init_clock_gating;
+		dev_priv->clock_gating_funcs.init_clock_gating = nop_init_clock_gating;
 	}
 }
 
-- 
2.30.2

