Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 218DB414BFD
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 16:31:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41FC76EC0C;
	Wed, 22 Sep 2021 14:31:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22A786EC07
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 14:31:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="203760609"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="203760609"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:30:54 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="435452407"
Received: from vidyaram-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.218.73])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:30:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Wed, 22 Sep 2021 17:29:35 +0300
Message-Id: <f42560f16d117ea2c205ce1560adef9959af70c6.1632320821.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632320821.git.jani.nikula@intel.com>
References: <cover.1632320821.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/24] drm/i915: split cdclk functions from
 display vtable.
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

This moves all the cdclk related functions into their own vtable.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 142 ++++++++++-----------
 drivers/gpu/drm/i915/i915_drv.h            |   8 +-
 2 files changed, 78 insertions(+), 72 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0e09f259914f..27a4a226aa49 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -62,32 +62,32 @@
 void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
 			   struct intel_cdclk_config *cdclk_config)
 {
-	dev_priv->display.get_cdclk(dev_priv, cdclk_config);
+	dev_priv->cdclk_funcs.get_cdclk(dev_priv, cdclk_config);
 }
 
 int intel_cdclk_bw_calc_min_cdclk(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	return dev_priv->display.bw_calc_min_cdclk(state);
+	return dev_priv->cdclk_funcs.bw_calc_min_cdclk(state);
 }
 
 static void intel_cdclk_set_cdclk(struct drm_i915_private *dev_priv,
 				  const struct intel_cdclk_config *cdclk_config,
 				  enum pipe pipe)
 {
-	dev_priv->display.set_cdclk(dev_priv, cdclk_config, pipe);
+	dev_priv->cdclk_funcs.set_cdclk(dev_priv, cdclk_config, pipe);
 }
 
 static int intel_cdclk_modeset_calc_cdclk(struct drm_i915_private *dev_priv,
 					  struct intel_cdclk_state *cdclk_config)
 {
-	return dev_priv->display.modeset_calc_cdclk(cdclk_config);
+	return dev_priv->cdclk_funcs.modeset_calc_cdclk(cdclk_config);
 }
 
 static u8 intel_cdclk_calc_voltage_level(struct drm_i915_private *dev_priv,
 					 int cdclk)
 {
-	return dev_priv->display.calc_voltage_level(cdclk);
+	return dev_priv->cdclk_funcs.calc_voltage_level(cdclk);
 }
 
 static void fixed_133mhz_get_cdclk(struct drm_i915_private *dev_priv,
@@ -1963,7 +1963,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
 		return;
 
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display.set_cdclk))
+	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->cdclk_funcs.set_cdclk))
 		return;
 
 	intel_dump_cdclk_config(cdclk_config, "Changing CDCLK to");
@@ -2893,119 +2893,119 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
 	if (IS_DG2(dev_priv)) {
-		dev_priv->display.set_cdclk = bxt_set_cdclk;
-		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->display.calc_voltage_level = tgl_calc_voltage_level;
+		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
+		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
+		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs.calc_voltage_level = tgl_calc_voltage_level;
 		dev_priv->cdclk.table = dg2_cdclk_table;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
-		dev_priv->display.set_cdclk = bxt_set_cdclk;
-		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->display.calc_voltage_level = tgl_calc_voltage_level;
+		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
+		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
+		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs.calc_voltage_level = tgl_calc_voltage_level;
 		/* Wa_22011320316:adl-p[a0] */
 		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			dev_priv->cdclk.table = adlp_a_step_cdclk_table;
 		else
 			dev_priv->cdclk.table = adlp_cdclk_table;
 	} else if (IS_ROCKETLAKE(dev_priv)) {
-		dev_priv->display.set_cdclk = bxt_set_cdclk;
-		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->display.calc_voltage_level = tgl_calc_voltage_level;
+		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
+		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
+		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs.calc_voltage_level = tgl_calc_voltage_level;
 		dev_priv->cdclk.table = rkl_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		dev_priv->display.set_cdclk = bxt_set_cdclk;
-		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->display.calc_voltage_level = tgl_calc_voltage_level;
+		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
+		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
+		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs.calc_voltage_level = tgl_calc_voltage_level;
 		dev_priv->cdclk.table = icl_cdclk_table;
 	} else if (IS_JSL_EHL(dev_priv)) {
-		dev_priv->display.set_cdclk = bxt_set_cdclk;
-		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->display.calc_voltage_level = ehl_calc_voltage_level;
+		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
+		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
+		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs.calc_voltage_level = ehl_calc_voltage_level;
 		dev_priv->cdclk.table = icl_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
-		dev_priv->display.set_cdclk = bxt_set_cdclk;
-		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->display.calc_voltage_level = icl_calc_voltage_level;
+		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
+		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
+		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs.calc_voltage_level = icl_calc_voltage_level;
 		dev_priv->cdclk.table = icl_cdclk_table;
 	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->display.set_cdclk = bxt_set_cdclk;
-		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->display.calc_voltage_level = bxt_calc_voltage_level;
+		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
+		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
+		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs.calc_voltage_level = bxt_calc_voltage_level;
 		if (IS_GEMINILAKE(dev_priv))
 			dev_priv->cdclk.table = glk_cdclk_table;
 		else
 			dev_priv->cdclk.table = bxt_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) == 9) {
-		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->display.set_cdclk = skl_set_cdclk;
-		dev_priv->display.modeset_calc_cdclk = skl_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
+		dev_priv->cdclk_funcs.set_cdclk = skl_set_cdclk;
+		dev_priv->cdclk_funcs.modeset_calc_cdclk = skl_modeset_calc_cdclk;
 	} else if (IS_BROADWELL(dev_priv)) {
-		dev_priv->display.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
-		dev_priv->display.set_cdclk = bdw_set_cdclk;
-		dev_priv->display.modeset_calc_cdclk = bdw_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
+		dev_priv->cdclk_funcs.set_cdclk = bdw_set_cdclk;
+		dev_priv->cdclk_funcs.modeset_calc_cdclk = bdw_modeset_calc_cdclk;
 	} else if (IS_CHERRYVIEW(dev_priv)) {
-		dev_priv->display.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
-		dev_priv->display.set_cdclk = chv_set_cdclk;
-		dev_priv->display.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
+		dev_priv->cdclk_funcs.set_cdclk = chv_set_cdclk;
+		dev_priv->cdclk_funcs.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
 	} else if (IS_VALLEYVIEW(dev_priv)) {
-		dev_priv->display.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
-		dev_priv->display.set_cdclk = vlv_set_cdclk;
-		dev_priv->display.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
+		dev_priv->cdclk_funcs.set_cdclk = vlv_set_cdclk;
+		dev_priv->cdclk_funcs.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
 	} else {
-		dev_priv->display.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
-		dev_priv->display.modeset_calc_cdclk = fixed_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
+		dev_priv->cdclk_funcs.modeset_calc_cdclk = fixed_modeset_calc_cdclk;
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 10 || IS_BROXTON(dev_priv))
-		dev_priv->display.get_cdclk = bxt_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = bxt_get_cdclk;
 	else if (DISPLAY_VER(dev_priv) == 9)
-		dev_priv->display.get_cdclk = skl_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = skl_get_cdclk;
 	else if (IS_BROADWELL(dev_priv))
-		dev_priv->display.get_cdclk = bdw_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = bdw_get_cdclk;
 	else if (IS_HASWELL(dev_priv))
-		dev_priv->display.get_cdclk = hsw_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = hsw_get_cdclk;
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		dev_priv->display.get_cdclk = vlv_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = vlv_get_cdclk;
 	else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
-		dev_priv->display.get_cdclk = fixed_400mhz_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = fixed_400mhz_get_cdclk;
 	else if (IS_IRONLAKE(dev_priv))
-		dev_priv->display.get_cdclk = fixed_450mhz_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = fixed_450mhz_get_cdclk;
 	else if (IS_GM45(dev_priv))
-		dev_priv->display.get_cdclk = gm45_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = gm45_get_cdclk;
 	else if (IS_G45(dev_priv))
-		dev_priv->display.get_cdclk = g33_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = g33_get_cdclk;
 	else if (IS_I965GM(dev_priv))
-		dev_priv->display.get_cdclk = i965gm_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = i965gm_get_cdclk;
 	else if (IS_I965G(dev_priv))
-		dev_priv->display.get_cdclk = fixed_400mhz_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = fixed_400mhz_get_cdclk;
 	else if (IS_PINEVIEW(dev_priv))
-		dev_priv->display.get_cdclk = pnv_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = pnv_get_cdclk;
 	else if (IS_G33(dev_priv))
-		dev_priv->display.get_cdclk = g33_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = g33_get_cdclk;
 	else if (IS_I945GM(dev_priv))
-		dev_priv->display.get_cdclk = i945gm_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = i945gm_get_cdclk;
 	else if (IS_I945G(dev_priv))
-		dev_priv->display.get_cdclk = fixed_400mhz_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = fixed_400mhz_get_cdclk;
 	else if (IS_I915GM(dev_priv))
-		dev_priv->display.get_cdclk = i915gm_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = i915gm_get_cdclk;
 	else if (IS_I915G(dev_priv))
-		dev_priv->display.get_cdclk = fixed_333mhz_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = fixed_333mhz_get_cdclk;
 	else if (IS_I865G(dev_priv))
-		dev_priv->display.get_cdclk = fixed_266mhz_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = fixed_266mhz_get_cdclk;
 	else if (IS_I85X(dev_priv))
-		dev_priv->display.get_cdclk = i85x_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = i85x_get_cdclk;
 	else if (IS_I845G(dev_priv))
-		dev_priv->display.get_cdclk = fixed_200mhz_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = fixed_200mhz_get_cdclk;
 	else if (IS_I830(dev_priv))
-		dev_priv->display.get_cdclk = fixed_133mhz_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = fixed_133mhz_get_cdclk;
 
-	if (drm_WARN(&dev_priv->drm, !dev_priv->display.get_cdclk,
+	if (drm_WARN(&dev_priv->drm, !dev_priv->cdclk_funcs.get_cdclk,
 		     "Unknown platform. Assuming 133 MHz CDCLK\n"))
-		dev_priv->display.get_cdclk = fixed_133mhz_get_cdclk;
+		dev_priv->cdclk_funcs.get_cdclk = fixed_133mhz_get_cdclk;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 4a8f33bfb04f..b0715d51be32 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -373,7 +373,7 @@ struct intel_audio_funcs {
 				    const struct drm_connector_state *old_conn_state);
 };
 
-struct drm_i915_display_funcs {
+struct intel_cdclk_funcs {
 	void (*get_cdclk)(struct drm_i915_private *dev_priv,
 			  struct intel_cdclk_config *cdclk_config);
 	void (*set_cdclk)(struct drm_i915_private *dev_priv,
@@ -382,6 +382,9 @@ struct drm_i915_display_funcs {
 	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
 	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
 	u8 (*calc_voltage_level)(int cdclk);
+};
+
+struct drm_i915_display_funcs {
 	/* Returns the active state of the crtc, and if the crtc is active,
 	 * fills out the pipe-config with the hw state. */
 	bool (*get_pipe_config)(struct intel_crtc *,
@@ -984,6 +987,9 @@ struct drm_i915_private {
 	/* Display internal audio functions */
 	struct intel_audio_funcs audio_funcs;
 
+	/* Display CDCLK functions */
+	struct intel_cdclk_funcs cdclk_funcs;
+
 	/* PCH chipset type */
 	enum intel_pch pch_type;
 	unsigned short pch_id;
-- 
2.30.2

