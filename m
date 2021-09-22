Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A262414BEE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 16:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62AFE6EC04;
	Wed, 22 Sep 2021 14:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBA706EC04
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 14:30:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="223649692"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="223649692"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:30:33 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="518604348"
Received: from vidyaram-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.218.73])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:30:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Wed, 22 Sep 2021 17:29:31 +0300
Message-Id: <3775c80fd65623c91de473e3a3be7074f797e3b2.1632320821.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632320821.git.jani.nikula@intel.com>
References: <cover.1632320821.git.jani.nikula@intel.com>
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
index a098a1bc83b1..497a466ed0cf 100644
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
index 4054c6f7a2f9..add50ff01d7c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7871,7 +7871,7 @@ static void i830_init_clock_gating(struct drm_i915_private *dev_priv)
 
 void intel_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-	dev_priv->display.init_clock_gating(dev_priv);
+	dev_priv->clock_gating_funcs.init_clock_gating(dev_priv);
 }
 
 void intel_suspend_hw(struct drm_i915_private *dev_priv)
@@ -7898,52 +7898,52 @@ static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
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

