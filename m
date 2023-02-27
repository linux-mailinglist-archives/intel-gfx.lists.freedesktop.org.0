Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A94F46A47DD
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 18:25:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8799810E086;
	Mon, 27 Feb 2023 17:25:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 629A810E47A
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 17:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677518727; x=1709054727;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5beJnKN92NuYezTcOZa7R8tFl7V2XPgY9K0He1rhWF8=;
 b=Qhlbu9ylG7EreuHY5jVPIeVbNTcte1XGYZitvFkKR38vmBX3CKudmWRd
 JTgVOqQ5X9K8p097GfibEVS4cc7jp+Id42URCygArLI28Alke+wdIk/UN
 xJium6X7NDEIfXDTnZyfwB9vIigJm6tLMLBJku03XFdQQmQunAnpJ+6Ds
 kmdh+FSI4t6QoQbBDleoBuDwUGC9LOu0GCz1XwQ95zwh8qccPqm1KSggd
 lxGfjKnfsz5B+nzXJQNg62wwFXv6wAKtySWgXlzVCgShi7D/wG3X+9Shu
 Nsc682REvV0XK1rFhFEscxGDW9BBDmeB4nwO1Pb2NNxLuN0hjejMiYj6j g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="333961075"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="333961075"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:25:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="919431673"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="919431673"
Received: from jkaisrli-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.158])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:25:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 19:25:18 +0200
Message-Id: <20230227172521.851935-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/4] drm/i915/power: move dc state members to
 struct i915_power_domains
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

There's only one reference to the struct intel_dmc members dc_state,
target_dc_state, and allowed_dc_mask within intel_dmc.c, begging the
question why they are under struct intel_dmc to begin with.

Moreover, the only references to i915->display.dmc outside of
intel_dmc.c are to these members.

They don't belong. Move them from struct intel_dmc to struct
i915_power_domains, which seems like a more suitable place.

Cc: Imre Deak <imre.deak@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 25 ++++++++-------
 .../drm/i915/display/intel_display_power.h    |  4 +++
 .../i915/display/intel_display_power_well.c   | 31 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dmc.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_dmc.h      |  3 --
 drivers/gpu/drm/i915/display/intel_psr.c      |  3 +-
 6 files changed, 39 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 743b919bb2cf..f085ae971150 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -264,9 +264,10 @@ bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 }
 
 static u32
-sanitize_target_dc_state(struct drm_i915_private *dev_priv,
+sanitize_target_dc_state(struct drm_i915_private *i915,
 			 u32 target_dc_state)
 {
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	static const u32 states[] = {
 		DC_STATE_EN_UPTO_DC6,
 		DC_STATE_EN_UPTO_DC5,
@@ -279,7 +280,7 @@ sanitize_target_dc_state(struct drm_i915_private *dev_priv,
 		if (target_dc_state != states[i])
 			continue;
 
-		if (dev_priv->display.dmc.allowed_dc_mask & target_dc_state)
+		if (power_domains->allowed_dc_mask & target_dc_state)
 			break;
 
 		target_dc_state = states[i + 1];
@@ -312,7 +313,7 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 
 	state = sanitize_target_dc_state(dev_priv, state);
 
-	if (state == dev_priv->display.dmc.target_dc_state)
+	if (state == power_domains->target_dc_state)
 		goto unlock;
 
 	dc_off_enabled = intel_power_well_is_enabled(dev_priv, power_well);
@@ -323,7 +324,7 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 	if (!dc_off_enabled)
 		intel_power_well_enable(dev_priv, power_well);
 
-	dev_priv->display.dmc.target_dc_state = state;
+	power_domains->target_dc_state = state;
 
 	if (!dc_off_enabled)
 		intel_power_well_disable(dev_priv, power_well);
@@ -992,10 +993,10 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
 	dev_priv->params.disable_power_well =
 		sanitize_disable_power_well_option(dev_priv,
 						   dev_priv->params.disable_power_well);
-	dev_priv->display.dmc.allowed_dc_mask =
+	power_domains->allowed_dc_mask =
 		get_allowed_dc_mask(dev_priv, dev_priv->params.enable_dc);
 
-	dev_priv->display.dmc.target_dc_state =
+	power_domains->target_dc_state =
 		sanitize_target_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
 
 	mutex_init(&power_domains->lock);
@@ -2032,7 +2033,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
 	 * resources as required and also enable deeper system power states
 	 * that would be blocked if the firmware was inactive.
 	 */
-	if (!(i915->display.dmc.allowed_dc_mask & DC_STATE_EN_DC9) &&
+	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC9) &&
 	    suspend_mode == I915_DRM_SUSPEND_IDLE &&
 	    intel_dmc_has_payload(i915)) {
 		intel_display_power_flush_work(i915);
@@ -2221,22 +2222,22 @@ void intel_display_power_suspend(struct drm_i915_private *i915)
 
 void intel_display_power_resume(struct drm_i915_private *i915)
 {
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
+
 	if (DISPLAY_VER(i915) >= 11) {
 		bxt_disable_dc9(i915);
 		icl_display_core_init(i915, true);
 		if (intel_dmc_has_payload(i915)) {
-			if (i915->display.dmc.allowed_dc_mask &
-			    DC_STATE_EN_UPTO_DC6)
+			if (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC6)
 				skl_enable_dc6(i915);
-			else if (i915->display.dmc.allowed_dc_mask &
-				 DC_STATE_EN_UPTO_DC5)
+			else if (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC5)
 				gen9_enable_dc5(i915);
 		}
 	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
 		bxt_disable_dc9(i915);
 		bxt_display_core_init(i915, true);
 		if (intel_dmc_has_payload(i915) &&
-		    (i915->display.dmc.allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
+		    (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
 			gen9_enable_dc5(i915);
 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 		hsw_disable_pc8(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 2154d900b1aa..8e96be8e6330 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -137,6 +137,10 @@ struct i915_power_domains {
 	bool display_core_suspended;
 	int power_well_count;
 
+	u32 dc_state;
+	u32 target_dc_state;
+	u32 allowed_dc_mask;
+
 	intel_wakeref_t init_wakeref;
 	intel_wakeref_t disable_wakeref;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 49042ece9d1c..1676df1dc066 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -691,19 +691,20 @@ static u32 gen9_dc_mask(struct drm_i915_private *dev_priv)
 	return mask;
 }
 
-void gen9_sanitize_dc_state(struct drm_i915_private *dev_priv)
+void gen9_sanitize_dc_state(struct drm_i915_private *i915)
 {
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	u32 val;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(i915))
 		return;
 
-	val = intel_de_read(dev_priv, DC_STATE_EN) & gen9_dc_mask(dev_priv);
+	val = intel_de_read(i915, DC_STATE_EN) & gen9_dc_mask(i915);
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "Resetting DC state tracking from %02x to %02x\n",
-		    dev_priv->display.dmc.dc_state, val);
-	dev_priv->display.dmc.dc_state = val;
+		    power_domains->dc_state, val);
+	power_domains->dc_state = val;
 }
 
 /**
@@ -731,6 +732,7 @@ void gen9_sanitize_dc_state(struct drm_i915_private *dev_priv)
  */
 void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
 {
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	u32 val;
 	u32 mask;
 
@@ -738,8 +740,8 @@ void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
 		return;
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm,
-			     state & ~dev_priv->display.dmc.allowed_dc_mask))
-		state &= dev_priv->display.dmc.allowed_dc_mask;
+			     state & ~power_domains->allowed_dc_mask))
+		state &= power_domains->allowed_dc_mask;
 
 	val = intel_de_read(dev_priv, DC_STATE_EN);
 	mask = gen9_dc_mask(dev_priv);
@@ -747,16 +749,16 @@ void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
 		    val & mask, state);
 
 	/* Check if DMC is ignoring our DC state requests */
-	if ((val & mask) != dev_priv->display.dmc.dc_state)
+	if ((val & mask) != power_domains->dc_state)
 		drm_err(&dev_priv->drm, "DC state mismatch (0x%x -> 0x%x)\n",
-			dev_priv->display.dmc.dc_state, val & mask);
+			power_domains->dc_state, val & mask);
 
 	val &= ~mask;
 	val |= state;
 
 	gen9_write_dc_state(dev_priv, val);
 
-	dev_priv->display.dmc.dc_state = val & mask;
+	power_domains->dc_state = val & mask;
 }
 
 static void tgl_enable_dc3co(struct drm_i915_private *dev_priv)
@@ -944,9 +946,10 @@ static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
 
 void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 {
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct intel_cdclk_config cdclk_config = {};
 
-	if (dev_priv->display.dmc.target_dc_state == DC_STATE_EN_DC3CO) {
+	if (power_domains->target_dc_state == DC_STATE_EN_DC3CO) {
 		tgl_disable_dc3co(dev_priv);
 		return;
 	}
@@ -985,10 +988,12 @@ static void gen9_dc_off_power_well_enable(struct drm_i915_private *dev_priv,
 static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well)
 {
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+
 	if (!intel_dmc_has_payload(dev_priv))
 		return;
 
-	switch (dev_priv->display.dmc.target_dc_state) {
+	switch (power_domains->target_dc_state) {
 	case DC_STATE_EN_DC3CO:
 		tgl_enable_dc3co(dev_priv);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index f70ada2357dc..ab4fdedd4c5f 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -449,6 +449,7 @@ void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
  */
 void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 {
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct intel_dmc *dmc = &dev_priv->display.dmc;
 	enum intel_dmc_id dmc_id;
 	u32 i;
@@ -481,7 +482,7 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 		}
 	}
 
-	dev_priv->display.dmc.dc_state = 0;
+	power_domains->dc_state = 0;
 
 	gen9_set_dc_state_debugmask(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index c9808bbe7162..90910cecc2f6 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -40,9 +40,6 @@ struct intel_dmc {
 		bool present;
 	} dmc_info[DMC_FW_MAX];
 
-	u32 dc_state;
-	u32 target_dc_state;
-	u32 allowed_dc_mask;
 	intel_wakeref_t wakeref;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6d8cf3198382..c251fa4b31de 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -690,6 +690,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 {
 	const u32 crtc_vdisplay = crtc_state->uapi.adjusted_mode.crtc_vdisplay;
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	u32 exit_scanlines;
 
 	/*
@@ -706,7 +707,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 	if (crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	if (!(dev_priv->display.dmc.allowed_dc_mask & DC_STATE_EN_DC3CO))
+	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC3CO))
 		return;
 
 	if (!dc3co_is_pipe_port_compatible(intel_dp, crtc_state))
-- 
2.39.1

