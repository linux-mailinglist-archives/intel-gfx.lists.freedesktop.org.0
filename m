Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE889414C07
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 16:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E39B46EBFD;
	Wed, 22 Sep 2021 14:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CCF36EC06
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 14:31:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="210843071"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="210843071"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:31:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="613563478"
Received: from vidyaram-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.218.73])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:31:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Wed, 22 Sep 2021 17:29:44 +0300
Message-Id: <377093ed6c178e68d2c976fabc968b7ea209e60f.1632320821.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632320821.git.jani.nikula@intel.com>
References: <cover.1632320821.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 20/24] drm/i915: constify the cdclk vtable
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

This is a bit of a twisty one since each platform is slightly
different, so might take some more review care.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 300 ++++++++++++++-------
 drivers/gpu/drm/i915/i915_drv.h            |   2 +-
 2 files changed, 206 insertions(+), 96 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 27a4a226aa49..f501c748458e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -62,32 +62,32 @@
 void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
 			   struct intel_cdclk_config *cdclk_config)
 {
-	dev_priv->cdclk_funcs.get_cdclk(dev_priv, cdclk_config);
+	dev_priv->cdclk_funcs->get_cdclk(dev_priv, cdclk_config);
 }
 
 int intel_cdclk_bw_calc_min_cdclk(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	return dev_priv->cdclk_funcs.bw_calc_min_cdclk(state);
+	return dev_priv->cdclk_funcs->bw_calc_min_cdclk(state);
 }
 
 static void intel_cdclk_set_cdclk(struct drm_i915_private *dev_priv,
 				  const struct intel_cdclk_config *cdclk_config,
 				  enum pipe pipe)
 {
-	dev_priv->cdclk_funcs.set_cdclk(dev_priv, cdclk_config, pipe);
+	dev_priv->cdclk_funcs->set_cdclk(dev_priv, cdclk_config, pipe);
 }
 
 static int intel_cdclk_modeset_calc_cdclk(struct drm_i915_private *dev_priv,
 					  struct intel_cdclk_state *cdclk_config)
 {
-	return dev_priv->cdclk_funcs.modeset_calc_cdclk(cdclk_config);
+	return dev_priv->cdclk_funcs->modeset_calc_cdclk(cdclk_config);
 }
 
 static u8 intel_cdclk_calc_voltage_level(struct drm_i915_private *dev_priv,
 					 int cdclk)
 {
-	return dev_priv->cdclk_funcs.calc_voltage_level(cdclk);
+	return dev_priv->cdclk_funcs->calc_voltage_level(cdclk);
 }
 
 static void fixed_133mhz_get_cdclk(struct drm_i915_private *dev_priv,
@@ -1963,7 +1963,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
 		return;
 
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->cdclk_funcs.set_cdclk))
+	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->cdclk_funcs->set_cdclk))
 		return;
 
 	intel_dump_cdclk_config(cdclk_config, "Changing CDCLK to");
@@ -2886,6 +2886,157 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 	return freq;
 }
 
+static struct intel_cdclk_funcs tgl_cdclk_funcs = {
+	.get_cdclk = bxt_get_cdclk,
+	.set_cdclk = bxt_set_cdclk,
+	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
+	.calc_voltage_level = tgl_calc_voltage_level,
+};
+
+static struct intel_cdclk_funcs ehl_cdclk_funcs = {
+	.get_cdclk = bxt_get_cdclk,
+	.set_cdclk = bxt_set_cdclk,
+	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
+	.calc_voltage_level = ehl_calc_voltage_level,
+};
+
+static struct intel_cdclk_funcs icl_cdclk_funcs = {
+	.get_cdclk = bxt_get_cdclk,
+	.set_cdclk = bxt_set_cdclk,
+	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
+	.calc_voltage_level = icl_calc_voltage_level,
+};
+
+static struct intel_cdclk_funcs bxt_cdclk_funcs = {
+	.get_cdclk = bxt_get_cdclk,
+	.set_cdclk = bxt_set_cdclk,
+	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
+	.calc_voltage_level = bxt_calc_voltage_level,
+};
+
+static struct intel_cdclk_funcs skl_cdclk_funcs = {
+	.get_cdclk = skl_get_cdclk,
+	.set_cdclk = skl_set_cdclk,
+	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = skl_modeset_calc_cdclk,
+};
+
+static struct intel_cdclk_funcs bdw_cdclk_funcs = {
+	.get_cdclk = bdw_get_cdclk,
+	.set_cdclk = bdw_set_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = bdw_modeset_calc_cdclk,
+};
+
+static struct intel_cdclk_funcs chv_cdclk_funcs = {
+	.get_cdclk = vlv_get_cdclk,
+	.set_cdclk = chv_set_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = vlv_modeset_calc_cdclk,
+};
+
+static struct intel_cdclk_funcs vlv_cdclk_funcs = {
+	.get_cdclk = vlv_get_cdclk,
+	.set_cdclk = vlv_set_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = vlv_modeset_calc_cdclk,
+};
+
+static struct intel_cdclk_funcs hsw_cdclk_funcs = {
+	.get_cdclk = hsw_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
+/* SNB, IVB, 965G, 945G */
+static struct intel_cdclk_funcs fixed_400mhz_cdclk_funcs = {
+	.get_cdclk = fixed_400mhz_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
+static struct intel_cdclk_funcs ilk_cdclk_funcs = {
+	.get_cdclk = fixed_450mhz_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
+static struct intel_cdclk_funcs gm45_cdclk_funcs = {
+	.get_cdclk = gm45_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
+/* G45 uses G33 */
+
+static struct intel_cdclk_funcs i965gm_cdclk_funcs = {
+	.get_cdclk = i965gm_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
+/* i965G uses fixed 400 */
+
+static struct intel_cdclk_funcs pnv_cdclk_funcs = {
+	.get_cdclk = pnv_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
+static struct intel_cdclk_funcs g33_cdclk_funcs = {
+	.get_cdclk = g33_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
+static struct intel_cdclk_funcs i945gm_cdclk_funcs = {
+	.get_cdclk = i945gm_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
+/* i945G uses fixed 400 */
+
+static struct intel_cdclk_funcs i915gm_cdclk_funcs = {
+	.get_cdclk = i915gm_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
+static struct intel_cdclk_funcs i915g_cdclk_funcs = {
+	.get_cdclk = fixed_333mhz_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
+static struct intel_cdclk_funcs i865g_cdclk_funcs = {
+	.get_cdclk = fixed_266mhz_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
+static struct intel_cdclk_funcs i85x_cdclk_funcs = {
+	.get_cdclk = i85x_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
+static struct intel_cdclk_funcs i845g_cdclk_funcs = {
+	.get_cdclk = fixed_200mhz_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
+static struct intel_cdclk_funcs i830_cdclk_funcs = {
+	.get_cdclk = fixed_133mhz_get_cdclk,
+	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
+	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
+};
+
 /**
  * intel_init_cdclk_hooks - Initialize CDCLK related modesetting hooks
  * @dev_priv: i915 device
@@ -2893,119 +3044,78 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
 	if (IS_DG2(dev_priv)) {
-		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
-		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->cdclk_funcs.calc_voltage_level = tgl_calc_voltage_level;
+		dev_priv->cdclk_funcs = &tgl_cdclk_funcs;
 		dev_priv->cdclk.table = dg2_cdclk_table;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
-		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
-		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->cdclk_funcs.calc_voltage_level = tgl_calc_voltage_level;
+		dev_priv->cdclk_funcs = &tgl_cdclk_funcs;
 		/* Wa_22011320316:adl-p[a0] */
 		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			dev_priv->cdclk.table = adlp_a_step_cdclk_table;
 		else
 			dev_priv->cdclk.table = adlp_cdclk_table;
 	} else if (IS_ROCKETLAKE(dev_priv)) {
-		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
-		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->cdclk_funcs.calc_voltage_level = tgl_calc_voltage_level;
+		dev_priv->cdclk_funcs = &tgl_cdclk_funcs;
 		dev_priv->cdclk.table = rkl_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
-		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->cdclk_funcs.calc_voltage_level = tgl_calc_voltage_level;
+		dev_priv->cdclk_funcs = &tgl_cdclk_funcs;
 		dev_priv->cdclk.table = icl_cdclk_table;
 	} else if (IS_JSL_EHL(dev_priv)) {
-		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
-		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->cdclk_funcs.calc_voltage_level = ehl_calc_voltage_level;
+		dev_priv->cdclk_funcs = &ehl_cdclk_funcs;
 		dev_priv->cdclk.table = icl_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
-		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
-		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->cdclk_funcs.calc_voltage_level = icl_calc_voltage_level;
+		dev_priv->cdclk_funcs = &icl_cdclk_funcs;
 		dev_priv->cdclk.table = icl_cdclk_table;
 	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
-		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-		dev_priv->cdclk_funcs.calc_voltage_level = bxt_calc_voltage_level;
+		dev_priv->cdclk_funcs = &bxt_cdclk_funcs;
 		if (IS_GEMINILAKE(dev_priv))
 			dev_priv->cdclk.table = glk_cdclk_table;
 		else
 			dev_priv->cdclk.table = bxt_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) == 9) {
-		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
-		dev_priv->cdclk_funcs.set_cdclk = skl_set_cdclk;
-		dev_priv->cdclk_funcs.modeset_calc_cdclk = skl_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs = &skl_cdclk_funcs;
 	} else if (IS_BROADWELL(dev_priv)) {
-		dev_priv->cdclk_funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
-		dev_priv->cdclk_funcs.set_cdclk = bdw_set_cdclk;
-		dev_priv->cdclk_funcs.modeset_calc_cdclk = bdw_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs = &bdw_cdclk_funcs;
+	} else if (IS_HASWELL(dev_priv)) {
+		dev_priv->cdclk_funcs = &hsw_cdclk_funcs;
 	} else if (IS_CHERRYVIEW(dev_priv)) {
-		dev_priv->cdclk_funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
-		dev_priv->cdclk_funcs.set_cdclk = chv_set_cdclk;
-		dev_priv->cdclk_funcs.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs = &chv_cdclk_funcs;
 	} else if (IS_VALLEYVIEW(dev_priv)) {
-		dev_priv->cdclk_funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
-		dev_priv->cdclk_funcs.set_cdclk = vlv_set_cdclk;
-		dev_priv->cdclk_funcs.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
-	} else {
-		dev_priv->cdclk_funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
-		dev_priv->cdclk_funcs.modeset_calc_cdclk = fixed_modeset_calc_cdclk;
+		dev_priv->cdclk_funcs = &vlv_cdclk_funcs;
+	} else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) {
+		dev_priv->cdclk_funcs = &fixed_400mhz_cdclk_funcs;
+	} else if (IS_IRONLAKE(dev_priv)) {
+		dev_priv->cdclk_funcs = &ilk_cdclk_funcs;
+	} else if (IS_GM45(dev_priv)) {
+		dev_priv->cdclk_funcs = &gm45_cdclk_funcs;
+	} else if (IS_G45(dev_priv)) {
+		dev_priv->cdclk_funcs = &g33_cdclk_funcs;
+	} else if (IS_I965GM(dev_priv)) {
+		dev_priv->cdclk_funcs = &i965gm_cdclk_funcs;
+	} else if (IS_I965G(dev_priv)) {
+		dev_priv->cdclk_funcs = &fixed_400mhz_cdclk_funcs;
+	} else if (IS_PINEVIEW(dev_priv)) {
+		dev_priv->cdclk_funcs = &pnv_cdclk_funcs;
+	} else if (IS_G33(dev_priv)) {
+		dev_priv->cdclk_funcs = &g33_cdclk_funcs;
+	} else if (IS_I945GM(dev_priv)) {
+		dev_priv->cdclk_funcs = &i945gm_cdclk_funcs;
+	} else if (IS_I945G(dev_priv)) {
+		dev_priv->cdclk_funcs = &fixed_400mhz_cdclk_funcs;
+	} else if (IS_I915GM(dev_priv)) {
+		dev_priv->cdclk_funcs = &i915gm_cdclk_funcs;
+	} else if (IS_I915G(dev_priv)) {
+		dev_priv->cdclk_funcs = &i915g_cdclk_funcs;
+	} else if (IS_I865G(dev_priv)) {
+		dev_priv->cdclk_funcs = &i865g_cdclk_funcs;
+	} else if (IS_I85X(dev_priv)) {
+		dev_priv->cdclk_funcs = &i85x_cdclk_funcs;
+	} else if (IS_I845G(dev_priv)) {
+		dev_priv->cdclk_funcs = &i845g_cdclk_funcs;
+	} else if (IS_I830(dev_priv)) {
+		dev_priv->cdclk_funcs = &i830_cdclk_funcs;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_BROXTON(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = bxt_get_cdclk;
-	else if (DISPLAY_VER(dev_priv) == 9)
-		dev_priv->cdclk_funcs.get_cdclk = skl_get_cdclk;
-	else if (IS_BROADWELL(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = bdw_get_cdclk;
-	else if (IS_HASWELL(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = hsw_get_cdclk;
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = vlv_get_cdclk;
-	else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = fixed_400mhz_get_cdclk;
-	else if (IS_IRONLAKE(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = fixed_450mhz_get_cdclk;
-	else if (IS_GM45(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = gm45_get_cdclk;
-	else if (IS_G45(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = g33_get_cdclk;
-	else if (IS_I965GM(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = i965gm_get_cdclk;
-	else if (IS_I965G(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = fixed_400mhz_get_cdclk;
-	else if (IS_PINEVIEW(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = pnv_get_cdclk;
-	else if (IS_G33(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = g33_get_cdclk;
-	else if (IS_I945GM(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = i945gm_get_cdclk;
-	else if (IS_I945G(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = fixed_400mhz_get_cdclk;
-	else if (IS_I915GM(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = i915gm_get_cdclk;
-	else if (IS_I915G(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = fixed_333mhz_get_cdclk;
-	else if (IS_I865G(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = fixed_266mhz_get_cdclk;
-	else if (IS_I85X(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = i85x_get_cdclk;
-	else if (IS_I845G(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = fixed_200mhz_get_cdclk;
-	else if (IS_I830(dev_priv))
-		dev_priv->cdclk_funcs.get_cdclk = fixed_133mhz_get_cdclk;
-
-	if (drm_WARN(&dev_priv->drm, !dev_priv->cdclk_funcs.get_cdclk,
-		     "Unknown platform. Assuming 133 MHz CDCLK\n"))
-		dev_priv->cdclk_funcs.get_cdclk = fixed_133mhz_get_cdclk;
+	if (drm_WARN(&dev_priv->drm, !dev_priv->cdclk_funcs,
+		     "Unknown platform. Assuming i830\n"))
+		dev_priv->cdclk_funcs = &i830_cdclk_funcs;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5f63773deaa0..f4daae67142e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1006,7 +1006,7 @@ struct drm_i915_private {
 	const struct intel_audio_funcs *audio_funcs;
 
 	/* Display CDCLK functions */
-	struct intel_cdclk_funcs cdclk_funcs;
+	const struct intel_cdclk_funcs *cdclk_funcs;
 
 	/* PCH chipset type */
 	enum intel_pch pch_type;
-- 
2.30.2

