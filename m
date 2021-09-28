Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2DE41BAA1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 00:58:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8855E6E9D0;
	Tue, 28 Sep 2021 22:58:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8C356E9D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 22:58:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="222929385"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="222929385"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 15:58:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="554375451"
Received: from pop-mobl1.ger.corp.intel.com (HELO localhost) ([10.249.36.249])
 by fmsmga003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2021 15:58:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, jani.nikula@intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Wed, 29 Sep 2021 01:57:49 +0300
Message-Id: <c3dd7aaad039e76acde9dda7211468907aa657c0.1632869550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632869550.git.jani.nikula@intel.com>
References: <cover.1632869550.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/24] drm/i915: add wrappers around cdclk
 vtable funcs.
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

This adds wrappers around all the vtable callers so they are in
one place.

Suggested by Jani.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 47 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_power.c    |  2 +-
 4 files changed, 44 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 3a1cdb3937aa..ff01fe9be35c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -59,6 +59,37 @@
  * dividers can be programmed correctly.
  */
 
+void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
+			   struct intel_cdclk_config *cdclk_config)
+{
+	dev_priv->display.get_cdclk(dev_priv, cdclk_config);
+}
+
+int intel_cdclk_bw_calc_min_cdclk(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	return dev_priv->display.bw_calc_min_cdclk(state);
+}
+
+static void intel_cdclk_set_cdclk(struct drm_i915_private *dev_priv,
+				  const struct intel_cdclk_config *cdclk_config,
+				  enum pipe pipe)
+{
+	dev_priv->display.set_cdclk(dev_priv, cdclk_config, pipe);
+}
+
+static int intel_cdclk_modeset_calc_cdclk(struct drm_i915_private *dev_priv,
+					  struct intel_cdclk_state *cdclk_config)
+{
+	return dev_priv->display.modeset_calc_cdclk(cdclk_config);
+}
+
+static u8 intel_cdclk_calc_voltage_level(struct drm_i915_private *dev_priv,
+					 int cdclk)
+{
+	return dev_priv->display.calc_voltage_level(cdclk);
+}
+
 static void fixed_133mhz_get_cdclk(struct drm_i915_private *dev_priv,
 				   struct intel_cdclk_config *cdclk_config)
 {
@@ -1466,7 +1497,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 	 * at least what the CDCLK frequency requires.
 	 */
 	cdclk_config->voltage_level =
-		dev_priv->display.calc_voltage_level(cdclk_config->cdclk);
+		intel_cdclk_calc_voltage_level(dev_priv, cdclk_config->cdclk);
 }
 
 static void bxt_de_pll_disable(struct drm_i915_private *dev_priv)
@@ -1777,7 +1808,7 @@ static void bxt_cdclk_init_hw(struct drm_i915_private *dev_priv)
 	cdclk_config.cdclk = bxt_calc_cdclk(dev_priv, 0);
 	cdclk_config.vco = bxt_calc_cdclk_pll_vco(dev_priv, cdclk_config.cdclk);
 	cdclk_config.voltage_level =
-		dev_priv->display.calc_voltage_level(cdclk_config.cdclk);
+		intel_cdclk_calc_voltage_level(dev_priv, cdclk_config.cdclk);
 
 	bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
 }
@@ -1789,7 +1820,7 @@ static void bxt_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
 	cdclk_config.cdclk = cdclk_config.bypass;
 	cdclk_config.vco = 0;
 	cdclk_config.voltage_level =
-		dev_priv->display.calc_voltage_level(cdclk_config.cdclk);
+		intel_cdclk_calc_voltage_level(dev_priv, cdclk_config.cdclk);
 
 	bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
 }
@@ -1956,7 +1987,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 				     &dev_priv->gmbus_mutex);
 	}
 
-	dev_priv->display.set_cdclk(dev_priv, cdclk_config, pipe);
+	intel_cdclk_set_cdclk(dev_priv, cdclk_config, pipe);
 
 	for_each_intel_dp(&dev_priv->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -2422,7 +2453,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
 	cdclk_state->logical.cdclk = cdclk;
 	cdclk_state->logical.voltage_level =
 		max_t(int, min_voltage_level,
-		      dev_priv->display.calc_voltage_level(cdclk));
+		      intel_cdclk_calc_voltage_level(dev_priv, cdclk));
 
 	if (!cdclk_state->active_pipes) {
 		cdclk = bxt_calc_cdclk(dev_priv, cdclk_state->force_min_cdclk);
@@ -2431,7 +2462,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
 		cdclk_state->actual.vco = vco;
 		cdclk_state->actual.cdclk = cdclk;
 		cdclk_state->actual.voltage_level =
-			dev_priv->display.calc_voltage_level(cdclk);
+			intel_cdclk_calc_voltage_level(dev_priv, cdclk);
 	} else {
 		cdclk_state->actual = cdclk_state->logical;
 	}
@@ -2523,7 +2554,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	new_cdclk_state->active_pipes =
 		intel_calc_active_pipes(state, old_cdclk_state->active_pipes);
 
-	ret = dev_priv->display.modeset_calc_cdclk(new_cdclk_state);
+	ret = intel_cdclk_modeset_calc_cdclk(dev_priv, new_cdclk_state);
 	if (ret)
 		return ret;
 
@@ -2703,7 +2734,7 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
  */
 void intel_update_cdclk(struct drm_i915_private *dev_priv)
 {
-	dev_priv->display.get_cdclk(dev_priv, &dev_priv->cdclk.hw);
+	intel_cdclk_get_cdclk(dev_priv, &dev_priv->cdclk.hw);
 
 	/*
 	 * 9:0 CMBUS [sic] CDCLK frequency (cdfreq):
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index b34eb00fb327..309b3f394e24 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -68,7 +68,9 @@ void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
 void intel_dump_cdclk_config(const struct intel_cdclk_config *cdclk_config,
 			     const char *context);
 int intel_modeset_calc_cdclk(struct intel_atomic_state *state);
-
+void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
+			   struct intel_cdclk_config *cdclk_config);
+int intel_cdclk_bw_calc_min_cdclk(struct intel_atomic_state *state);
 struct intel_cdclk_state *
 intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1c5c8834b333..839954195ffc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9160,7 +9160,7 @@ static int intel_atomic_check_cdclk(struct intel_atomic_state *state,
 	    old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk)
 		*need_cdclk_calc = true;
 
-	ret = dev_priv->display.bw_calc_min_cdclk(state);
+	ret = intel_cdclk_bw_calc_min_cdclk(state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index cce1a926fcc1..a274e2b33e91 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1195,7 +1195,7 @@ static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	dev_priv->display.get_cdclk(dev_priv, &cdclk_config);
+	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
-- 
2.30.2

