Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F87559FB04
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:16:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4AAFB505D;
	Wed, 24 Aug 2022 13:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9585B043F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661346986; x=1692882986;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q/vI0JG7DktcBluYZ/mEdyG7aCKQNIhbpESZEh0qDOQ=;
 b=ZvUhip12w61LNpXP5McgR9BDiJ6P9iSN6wepTyfIvYxqQMpK7F8x+Q3B
 setp83pvyaT07i06rIOoRJ4/vI4BhAKDAAdWEE75rJ6pVOXl4UBd85uMt
 RVMKkaXadGYvkjLj44i9WYUzrlISD+8dEDk9dp5alUeymJflhWd8/oxx2
 WHteJTGLiz0kOyYBfViycqRCgMl/6G+BQ5wUqIGoSN7eo1U5JQ5EQqhya
 tYYA+nvD89Zq70bdK9wW+p6gmsjQFx+Nsv+ZYjrG5dT59W/S8c8mHDBnI
 2pIAd9tI84gj9r8x4OTTa8fbRYML4xtXQY8TfKGrI08elJC27BL4zqqgk A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="280936006"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="280936006"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:16:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="670499487"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:16:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:29 +0300
Message-Id: <5bf7aada2c7f0500c5002fa089fb66a92019a301.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/38] drm/i915: move dpll_funcs to
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

Move display dpll functions under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++++
 drivers/gpu/drm/i915/display/intel_dpll.c     | 24 +++++++++----------
 drivers/gpu/drm/i915/i915_drv.h               |  4 ----
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index c185ab0428f8..f62b18477078 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -12,6 +12,7 @@ struct intel_atomic_state;
 struct intel_cdclk_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_dpll_funcs;
 struct intel_initial_plane_config;
 
 struct intel_display_funcs {
@@ -38,6 +39,9 @@ struct intel_display {
 
 		/* Display CDCLK functions */
 		const struct intel_cdclk_funcs *cdclk;
+
+		/* Display pll funcs */
+		const struct intel_dpll_funcs *dpll;
 	} funcs;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 5262f16b45ac..87899702a522 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1420,7 +1420,7 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 	if (!crtc_state->hw.enable)
 		return 0;
 
-	ret = i915->dpll_funcs->crtc_compute_clock(state, crtc);
+	ret = i915->display.funcs.dpll->crtc_compute_clock(state, crtc);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] Couldn't calculate DPLL settings\n",
 			    crtc->base.base.id, crtc->base.name);
@@ -1446,10 +1446,10 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	if (!crtc_state->hw.enable)
 		return 0;
 
-	if (!i915->dpll_funcs->crtc_get_shared_dpll)
+	if (!i915->display.funcs.dpll->crtc_get_shared_dpll)
 		return 0;
 
-	ret = i915->dpll_funcs->crtc_get_shared_dpll(state, crtc);
+	ret = i915->display.funcs.dpll->crtc_get_shared_dpll(state, crtc);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] Couldn't get a shared DPLL\n",
 			    crtc->base.base.id, crtc->base.name);
@@ -1463,23 +1463,23 @@ void
 intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
 	if (IS_DG2(dev_priv))
-		dev_priv->dpll_funcs = &dg2_dpll_funcs;
+		dev_priv->display.funcs.dpll = &dg2_dpll_funcs;
 	else if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
-		dev_priv->dpll_funcs = &hsw_dpll_funcs;
+		dev_priv->display.funcs.dpll = &hsw_dpll_funcs;
 	else if (HAS_PCH_SPLIT(dev_priv))
-		dev_priv->dpll_funcs = &ilk_dpll_funcs;
+		dev_priv->display.funcs.dpll = &ilk_dpll_funcs;
 	else if (IS_CHERRYVIEW(dev_priv))
-		dev_priv->dpll_funcs = &chv_dpll_funcs;
+		dev_priv->display.funcs.dpll = &chv_dpll_funcs;
 	else if (IS_VALLEYVIEW(dev_priv))
-		dev_priv->dpll_funcs = &vlv_dpll_funcs;
+		dev_priv->display.funcs.dpll = &vlv_dpll_funcs;
 	else if (IS_G4X(dev_priv))
-		dev_priv->dpll_funcs = &g4x_dpll_funcs;
+		dev_priv->display.funcs.dpll = &g4x_dpll_funcs;
 	else if (IS_PINEVIEW(dev_priv))
-		dev_priv->dpll_funcs = &pnv_dpll_funcs;
+		dev_priv->display.funcs.dpll = &pnv_dpll_funcs;
 	else if (DISPLAY_VER(dev_priv) != 2)
-		dev_priv->dpll_funcs = &i9xx_dpll_funcs;
+		dev_priv->display.funcs.dpll = &i9xx_dpll_funcs;
 	else
-		dev_priv->dpll_funcs = &i8xx_dpll_funcs;
+		dev_priv->display.funcs.dpll = &i8xx_dpll_funcs;
 }
 
 static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3d0d3b08f272..5b7b4ff31420 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -90,7 +90,6 @@ struct intel_color_funcs;
 struct intel_connector;
 struct intel_crtc;
 struct intel_dp;
-struct intel_dpll_funcs;
 struct intel_encoder;
 struct intel_fbdev;
 struct intel_fdi_funcs;
@@ -516,9 +515,6 @@ struct drm_i915_private {
 	/* fdi display functions */
 	const struct intel_fdi_funcs *fdi_funcs;
 
-	/* display pll funcs */
-	const struct intel_dpll_funcs *dpll_funcs;
-
 	/* Display internal color functions */
 	const struct intel_color_funcs *color_funcs;
 
-- 
2.34.1

