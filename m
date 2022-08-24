Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6FD59FB0F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:18:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 856D5B518F;
	Wed, 24 Aug 2022 13:17:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CB25B4FAC
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661346987; x=1692882987;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J4BqbHYo/F1G6vv5Jq4RM6JoPZ4sLaafnvgX9fG26Vk=;
 b=BMpxlsHEe1ckg4oDQ2bJ6fVgEZuu71ww/hGkEbZdth/3WIxEmZB9WQom
 K/QXp3Db1/WaD7VnK2jtccM6ai8uglX3n2sqlHfAtQ3TBQZ3wSOOWjE3E
 hc8UoNwB7Fpw791tfzOZJeFlXtKXSPN+qtXGyedhG3WEBLFsP86VX6z1K
 fx73+nPGmy25G99Xxu4vMzQ86jFI0Q853fjEO23ory7WN0xqX76jZubs9
 Xphqw6L1I7usUZX35bPOJT3POXUU9SFOC6LwU/P5N5IuNPj+lkJlhgNn5
 OA1ATgnotOGRSuaBemgKsJAZun+1pu+QkCoDScDD7Ly5ljGjWfLNell+c w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="293962621"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="293962621"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:16:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="937904754"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:16:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:28 +0300
Message-Id: <77e12e21bb9682a3c1d54f8d59eecc5945ef16d0.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/38] drm/i915: move cdclk_funcs to
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

Move display cdclk functions under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 70 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++
 drivers/gpu/drm/i915/i915_drv.h               |  4 --
 3 files changed, 39 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 86a22c3766e5..6095f5800a2e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -79,26 +79,26 @@ struct intel_cdclk_funcs {
 void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
 			   struct intel_cdclk_config *cdclk_config)
 {
-	dev_priv->cdclk_funcs->get_cdclk(dev_priv, cdclk_config);
+	dev_priv->display.funcs.cdclk->get_cdclk(dev_priv, cdclk_config);
 }
 
 static void intel_cdclk_set_cdclk(struct drm_i915_private *dev_priv,
 				  const struct intel_cdclk_config *cdclk_config,
 				  enum pipe pipe)
 {
-	dev_priv->cdclk_funcs->set_cdclk(dev_priv, cdclk_config, pipe);
+	dev_priv->display.funcs.cdclk->set_cdclk(dev_priv, cdclk_config, pipe);
 }
 
 static int intel_cdclk_modeset_calc_cdclk(struct drm_i915_private *dev_priv,
 					  struct intel_cdclk_state *cdclk_config)
 {
-	return dev_priv->cdclk_funcs->modeset_calc_cdclk(cdclk_config);
+	return dev_priv->display.funcs.cdclk->modeset_calc_cdclk(cdclk_config);
 }
 
 static u8 intel_cdclk_calc_voltage_level(struct drm_i915_private *dev_priv,
 					 int cdclk)
 {
-	return dev_priv->cdclk_funcs->calc_voltage_level(cdclk);
+	return dev_priv->display.funcs.cdclk->calc_voltage_level(cdclk);
 }
 
 static void fixed_133mhz_get_cdclk(struct drm_i915_private *dev_priv,
@@ -2080,7 +2080,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
 		return;
 
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->cdclk_funcs->set_cdclk))
+	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display.funcs.cdclk->set_cdclk))
 		return;
 
 	intel_cdclk_dump_config(dev_priv, cdclk_config, "Changing CDCLK to");
@@ -3187,78 +3187,78 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
 	if (IS_DG2(dev_priv)) {
-		dev_priv->cdclk_funcs = &tgl_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		dev_priv->cdclk.table = dg2_cdclk_table;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
-		dev_priv->cdclk_funcs = &tgl_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		/* Wa_22011320316:adl-p[a0] */
 		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			dev_priv->cdclk.table = adlp_a_step_cdclk_table;
 		else
 			dev_priv->cdclk.table = adlp_cdclk_table;
 	} else if (IS_ROCKETLAKE(dev_priv)) {
-		dev_priv->cdclk_funcs = &tgl_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		dev_priv->cdclk.table = rkl_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		dev_priv->cdclk_funcs = &tgl_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		dev_priv->cdclk.table = icl_cdclk_table;
 	} else if (IS_JSL_EHL(dev_priv)) {
-		dev_priv->cdclk_funcs = &ehl_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &ehl_cdclk_funcs;
 		dev_priv->cdclk.table = icl_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
-		dev_priv->cdclk_funcs = &icl_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &icl_cdclk_funcs;
 		dev_priv->cdclk.table = icl_cdclk_table;
 	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-		dev_priv->cdclk_funcs = &bxt_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &bxt_cdclk_funcs;
 		if (IS_GEMINILAKE(dev_priv))
 			dev_priv->cdclk.table = glk_cdclk_table;
 		else
 			dev_priv->cdclk.table = bxt_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) == 9) {
-		dev_priv->cdclk_funcs = &skl_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &skl_cdclk_funcs;
 	} else if (IS_BROADWELL(dev_priv)) {
-		dev_priv->cdclk_funcs = &bdw_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &bdw_cdclk_funcs;
 	} else if (IS_HASWELL(dev_priv)) {
-		dev_priv->cdclk_funcs = &hsw_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &hsw_cdclk_funcs;
 	} else if (IS_CHERRYVIEW(dev_priv)) {
-		dev_priv->cdclk_funcs = &chv_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &chv_cdclk_funcs;
 	} else if (IS_VALLEYVIEW(dev_priv)) {
-		dev_priv->cdclk_funcs = &vlv_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &vlv_cdclk_funcs;
 	} else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) {
-		dev_priv->cdclk_funcs = &fixed_400mhz_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &fixed_400mhz_cdclk_funcs;
 	} else if (IS_IRONLAKE(dev_priv)) {
-		dev_priv->cdclk_funcs = &ilk_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &ilk_cdclk_funcs;
 	} else if (IS_GM45(dev_priv)) {
-		dev_priv->cdclk_funcs = &gm45_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &gm45_cdclk_funcs;
 	} else if (IS_G45(dev_priv)) {
-		dev_priv->cdclk_funcs = &g33_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &g33_cdclk_funcs;
 	} else if (IS_I965GM(dev_priv)) {
-		dev_priv->cdclk_funcs = &i965gm_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &i965gm_cdclk_funcs;
 	} else if (IS_I965G(dev_priv)) {
-		dev_priv->cdclk_funcs = &fixed_400mhz_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &fixed_400mhz_cdclk_funcs;
 	} else if (IS_PINEVIEW(dev_priv)) {
-		dev_priv->cdclk_funcs = &pnv_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &pnv_cdclk_funcs;
 	} else if (IS_G33(dev_priv)) {
-		dev_priv->cdclk_funcs = &g33_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &g33_cdclk_funcs;
 	} else if (IS_I945GM(dev_priv)) {
-		dev_priv->cdclk_funcs = &i945gm_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &i945gm_cdclk_funcs;
 	} else if (IS_I945G(dev_priv)) {
-		dev_priv->cdclk_funcs = &fixed_400mhz_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &fixed_400mhz_cdclk_funcs;
 	} else if (IS_I915GM(dev_priv)) {
-		dev_priv->cdclk_funcs = &i915gm_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &i915gm_cdclk_funcs;
 	} else if (IS_I915G(dev_priv)) {
-		dev_priv->cdclk_funcs = &i915g_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &i915g_cdclk_funcs;
 	} else if (IS_I865G(dev_priv)) {
-		dev_priv->cdclk_funcs = &i865g_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &i865g_cdclk_funcs;
 	} else if (IS_I85X(dev_priv)) {
-		dev_priv->cdclk_funcs = &i85x_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &i85x_cdclk_funcs;
 	} else if (IS_I845G(dev_priv)) {
-		dev_priv->cdclk_funcs = &i845g_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &i845g_cdclk_funcs;
 	} else if (IS_I830(dev_priv)) {
-		dev_priv->cdclk_funcs = &i830_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &i830_cdclk_funcs;
 	}
 
-	if (drm_WARN(&dev_priv->drm, !dev_priv->cdclk_funcs,
+	if (drm_WARN(&dev_priv->drm, !dev_priv->display.funcs.cdclk,
 		     "Unknown platform. Assuming i830\n"))
-		dev_priv->cdclk_funcs = &i830_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &i830_cdclk_funcs;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index c326d5381de7..c185ab0428f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 struct intel_atomic_state;
+struct intel_cdclk_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_initial_plane_config;
@@ -34,6 +35,9 @@ struct intel_display {
 	struct {
 		/* Top level crtc-ish functions */
 		const struct intel_display_funcs *display;
+
+		/* Display CDCLK functions */
+		const struct intel_cdclk_funcs *cdclk;
 	} funcs;
 };
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b627fc0339c7..3d0d3b08f272 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -84,7 +84,6 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_audio_funcs;
 struct intel_cdclk_config;
-struct intel_cdclk_funcs;
 struct intel_cdclk_state;
 struct intel_cdclk_vals;
 struct intel_color_funcs;
@@ -523,9 +522,6 @@ struct drm_i915_private {
 	/* Display internal color functions */
 	const struct intel_color_funcs *color_funcs;
 
-	/* Display CDCLK functions */
-	const struct intel_cdclk_funcs *cdclk_funcs;
-
 	/* PCH chipset type */
 	enum intel_pch pch_type;
 	unsigned short pch_id;
-- 
2.34.1

