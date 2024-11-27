Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D3C9DAC3C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 18:06:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3873A10EB83;
	Wed, 27 Nov 2024 17:06:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K8nsBlwS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1049B10EB7B;
 Wed, 27 Nov 2024 17:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732727196; x=1764263196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fsSaP8E0y/y3BkrZ53wEP9xaaIpM1ETpcCyzrQiF5rU=;
 b=K8nsBlwSbFhTA8PSbUV/wyL2K899tvzG1K3368HBacG2GdpeDeoUHEJW
 IaOesqKwTaDlLeZXpgo/xR4KnYd4SGmcM7aItBPtCy5bHR/XyAdcaUt8P
 hPzkF8d6iZ2z6avjtsfsU2Isjk9aGI8l4uKpN1Ij7FP+KmRf1sZTA4Aeo
 fsjGECSViF0YD227Rjv4b4P/OAYAXb5gIi3OxR7vTQCvmCVnGxjWK79W9
 t1L3bAY8vkedoHwDkEf6xQWOr80yUk5j7nlPjYL+pPWLvxMDVmgDzk+iR
 OttIWUTi5QXcmZbgnesViTd7pQUVlukT9sofJAwe+4E2hg0Mg6TWR6OIy w==;
X-CSE-ConnectionGUID: s5E230M+TJOUH4pKqSXtLw==
X-CSE-MsgGUID: 6EdBkupvSlGPcnmrc9nYZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="32994361"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="32994361"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:06:35 -0800
X-CSE-ConnectionGUID: Kcx1B6PKS8OFWh34sGeHvQ==
X-CSE-MsgGUID: 6qtIlFqoT8+dZwmduDiL+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="91621199"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:06:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 4/7] drm/i915/display: convert power wells to struct
 intel_display
Date: Wed, 27 Nov 2024 19:06:05 +0200
Message-Id: <cd8b25244d61177f2e6efc52d99defafce5207de.1732727056.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732727056.git.jani.nikula@intel.com>
References: <cover.1732727056.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Going forward, struct intel_display is the main device data structure
for display. Switch the power well code over to it.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   3 +-
 .../drm/i915/display/intel_display_power.c    |  71 +--
 .../i915/display/intel_display_power_well.c   | 545 +++++++++---------
 .../i915/display/intel_display_power_well.h   |  19 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   7 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   4 +-
 7 files changed, 320 insertions(+), 331 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 2874867aae2b..3eb7565cd83c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -730,11 +730,12 @@ static bool
 intel_lpsp_power_well_enabled(struct drm_i915_private *i915,
 			      enum i915_power_well_id power_well_id)
 {
+	struct intel_display *display = &i915->display;
 	intel_wakeref_t wakeref;
 	bool is_enabled;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
-	is_enabled = intel_display_power_well_is_enabled(i915,
+	is_enabled = intel_display_power_well_is_enabled(display,
 							 power_well_id);
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index c6252b2c40a4..e577e99af48a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -293,12 +293,13 @@ sanitize_target_dc_state(struct drm_i915_private *i915,
 void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 					     u32 state)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct i915_power_well *power_well;
 	bool dc_off_enabled;
 	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 
 	mutex_lock(&power_domains->lock);
-	power_well = lookup_power_well(dev_priv, SKL_DISP_DC_OFF);
+	power_well = lookup_power_well(display, SKL_DISP_DC_OFF);
 
 	if (drm_WARN_ON(&dev_priv->drm, !power_well))
 		goto unlock;
@@ -308,18 +309,18 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 	if (state == power_domains->target_dc_state)
 		goto unlock;
 
-	dc_off_enabled = intel_power_well_is_enabled(dev_priv, power_well);
+	dc_off_enabled = intel_power_well_is_enabled(display, power_well);
 	/*
 	 * If DC off power well is disabled, need to enable and disable the
 	 * DC off power well to effect target DC state.
 	 */
 	if (!dc_off_enabled)
-		intel_power_well_enable(dev_priv, power_well);
+		intel_power_well_enable(display, power_well);
 
 	power_domains->target_dc_state = state;
 
 	if (!dc_off_enabled)
-		intel_power_well_disable(dev_priv, power_well);
+		intel_power_well_disable(display, power_well);
 
 unlock:
 	mutex_unlock(&power_domains->lock);
@@ -495,7 +496,7 @@ __intel_display_power_get_domain(struct drm_i915_private *dev_priv,
 		return;
 
 	for_each_power_domain_well(display, power_well, domain)
-		intel_power_well_get(dev_priv, power_well);
+		intel_power_well_get(display, power_well);
 
 	power_domains->domain_use_count[domain]++;
 }
@@ -592,7 +593,7 @@ __intel_display_power_put_domain(struct drm_i915_private *dev_priv,
 	power_domains->domain_use_count[domain]--;
 
 	for_each_power_domain_well_reverse(display, power_well, domain)
-		intel_power_well_put(dev_priv, power_well);
+		intel_power_well_put(display, power_well);
 }
 
 static void __intel_display_power_put(struct drm_i915_private *dev_priv,
@@ -1046,7 +1047,7 @@ static void intel_power_domains_sync_hw(struct drm_i915_private *dev_priv)
 
 	mutex_lock(&power_domains->lock);
 	for_each_power_well(display, power_well)
-		intel_power_well_sync_hw(dev_priv, power_well);
+		intel_power_well_sync_hw(display, power_well);
 	mutex_unlock(&power_domains->lock);
 }
 
@@ -1446,11 +1447,11 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
 	/* enable PG1 and Misc I/O */
 	mutex_lock(&power_domains->lock);
 
-	well = lookup_power_well(dev_priv, SKL_DISP_PW_1);
-	intel_power_well_enable(dev_priv, well);
+	well = lookup_power_well(display, SKL_DISP_PW_1);
+	intel_power_well_enable(display, well);
 
-	well = lookup_power_well(dev_priv, SKL_DISP_PW_MISC_IO);
-	intel_power_well_enable(dev_priv, well);
+	well = lookup_power_well(display, SKL_DISP_PW_MISC_IO);
+	intel_power_well_enable(display, well);
 
 	mutex_unlock(&power_domains->lock);
 
@@ -1489,8 +1490,8 @@ static void skl_display_core_uninit(struct drm_i915_private *dev_priv)
 	 * Note that even though the driver's request is removed power well 1
 	 * may stay enabled after this due to DMC's own request on it.
 	 */
-	well = lookup_power_well(dev_priv, SKL_DISP_PW_1);
-	intel_power_well_disable(dev_priv, well);
+	well = lookup_power_well(display, SKL_DISP_PW_1);
+	intel_power_well_disable(display, well);
 
 	mutex_unlock(&power_domains->lock);
 
@@ -1519,8 +1520,8 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
 	/* Enable PG1 */
 	mutex_lock(&power_domains->lock);
 
-	well = lookup_power_well(dev_priv, SKL_DISP_PW_1);
-	intel_power_well_enable(dev_priv, well);
+	well = lookup_power_well(display, SKL_DISP_PW_1);
+	intel_power_well_enable(display, well);
 
 	mutex_unlock(&power_domains->lock);
 
@@ -1557,8 +1558,8 @@ static void bxt_display_core_uninit(struct drm_i915_private *dev_priv)
 	 */
 	mutex_lock(&power_domains->lock);
 
-	well = lookup_power_well(dev_priv, SKL_DISP_PW_1);
-	intel_power_well_disable(dev_priv, well);
+	well = lookup_power_well(display, SKL_DISP_PW_1);
+	intel_power_well_disable(display, well);
 
 	mutex_unlock(&power_domains->lock);
 
@@ -1668,8 +1669,8 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	 *    The AUX IO power wells will be enabled on demand.
 	 */
 	mutex_lock(&power_domains->lock);
-	well = lookup_power_well(dev_priv, SKL_DISP_PW_1);
-	intel_power_well_enable(dev_priv, well);
+	well = lookup_power_well(display, SKL_DISP_PW_1);
+	intel_power_well_enable(display, well);
 	mutex_unlock(&power_domains->lock);
 
 	if (DISPLAY_VER(dev_priv) == 14)
@@ -1752,8 +1753,8 @@ static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
 	 *    disabled at this point.
 	 */
 	mutex_lock(&power_domains->lock);
-	well = lookup_power_well(dev_priv, SKL_DISP_PW_1);
-	intel_power_well_disable(dev_priv, well);
+	well = lookup_power_well(display, SKL_DISP_PW_1);
+	intel_power_well_disable(display, well);
 	mutex_unlock(&power_domains->lock);
 
 	/* 5. */
@@ -1762,10 +1763,11 @@ static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
 
 static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct i915_power_well *cmn_bc =
-		lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
+		lookup_power_well(display, VLV_DISP_PW_DPIO_CMN_BC);
 	struct i915_power_well *cmn_d =
-		lookup_power_well(dev_priv, CHV_DISP_PW_DPIO_CMN_D);
+		lookup_power_well(display, CHV_DISP_PW_DPIO_CMN_D);
 
 	/*
 	 * DISPLAY_PHY_CONTROL can get corrupted if read. As a
@@ -1788,7 +1790,7 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 	 * override and set the lane powerdown bits accding to the
 	 * current lane status.
 	 */
-	if (intel_power_well_is_enabled(dev_priv, cmn_bc)) {
+	if (intel_power_well_is_enabled(display, cmn_bc)) {
 		u32 status = intel_de_read(dev_priv, DPLL(dev_priv, PIPE_A));
 		unsigned int mask;
 
@@ -1819,7 +1821,7 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 		dev_priv->display.power.chv_phy_assert[DPIO_PHY0] = true;
 	}
 
-	if (intel_power_well_is_enabled(dev_priv, cmn_d)) {
+	if (intel_power_well_is_enabled(display, cmn_d)) {
 		u32 status = intel_de_read(dev_priv, DPIO_PHY_STATUS);
 		unsigned int mask;
 
@@ -1849,21 +1851,22 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 
 static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct i915_power_well *cmn =
-		lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
+		lookup_power_well(display, VLV_DISP_PW_DPIO_CMN_BC);
 	struct i915_power_well *disp2d =
-		lookup_power_well(dev_priv, VLV_DISP_PW_DISP2D);
+		lookup_power_well(display, VLV_DISP_PW_DISP2D);
 
 	/* If the display might be already active skip this */
-	if (intel_power_well_is_enabled(dev_priv, cmn) &&
-	    intel_power_well_is_enabled(dev_priv, disp2d) &&
+	if (intel_power_well_is_enabled(display, cmn) &&
+	    intel_power_well_is_enabled(display, disp2d) &&
 	    intel_de_read(dev_priv, DPIO_CTL) & DPIO_CMNRST)
 		return;
 
 	drm_dbg_kms(&dev_priv->drm, "toggling display PHY side reset\n");
 
 	/* cmnlane needs DPLL registers */
-	intel_power_well_enable(dev_priv, disp2d);
+	intel_power_well_enable(display, disp2d);
 
 	/*
 	 * From VLV2A0_DP_eDP_HDMI_DPIO_driver_vbios_notes_11.docx:
@@ -1872,7 +1875,7 @@ static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
 	 * Simply ungating isn't enough to reset the PHY enough to get
 	 * ports and lanes running.
 	 */
-	intel_power_well_disable(dev_priv, cmn);
+	intel_power_well_disable(display, cmn);
 }
 
 static bool vlv_punit_is_power_gated(struct drm_i915_private *dev_priv, u32 reg0)
@@ -2024,13 +2027,13 @@ void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
 
 	for_each_power_well_reverse(display, power_well) {
 		if (power_well->desc->always_on || power_well->count ||
-		    !intel_power_well_is_enabled(i915, power_well))
+		    !intel_power_well_is_enabled(display, power_well))
 			continue;
 
 		drm_dbg_kms(&i915->drm,
 			    "BIOS left unused %s power well enabled, disabling it\n",
 			    intel_power_well_name(power_well));
-		intel_power_well_disable(i915, power_well);
+		intel_power_well_disable(display, power_well);
 	}
 
 	mutex_unlock(&power_domains->lock);
@@ -2204,7 +2207,7 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 		int domains_count;
 		bool enabled;
 
-		enabled = intel_power_well_is_enabled(i915, power_well);
+		enabled = intel_power_well_is_enabled(display, power_well);
 		if ((intel_power_well_refcount(power_well) ||
 		     intel_power_well_is_always_on(power_well)) !=
 		    enabled)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 11734951937a..6615630328c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -46,23 +46,23 @@ struct i915_power_well_ops {
 	 * during driver init and resume time, possibly after first calling
 	 * the enable/disable handlers.
 	 */
-	void (*sync_hw)(struct drm_i915_private *i915,
+	void (*sync_hw)(struct intel_display *display,
 			struct i915_power_well *power_well);
 	/*
 	 * Enable the well and resources that depend on it (for example
 	 * interrupts located on the well). Called after the 0->1 refcount
 	 * transition.
 	 */
-	void (*enable)(struct drm_i915_private *i915,
+	void (*enable)(struct intel_display *display,
 		       struct i915_power_well *power_well);
 	/*
 	 * Disable the well and resources that depend on it. Called after
 	 * the 1->0 refcount transition.
 	 */
-	void (*disable)(struct drm_i915_private *i915,
+	void (*disable)(struct intel_display *display,
 			struct i915_power_well *power_well);
 	/* Returns the hw enabled state. */
-	bool (*is_enabled)(struct drm_i915_private *i915,
+	bool (*is_enabled)(struct intel_display *display,
 			   struct i915_power_well *power_well);
 };
 
@@ -73,10 +73,9 @@ i915_power_well_instance(const struct i915_power_well *power_well)
 }
 
 struct i915_power_well *
-lookup_power_well(struct drm_i915_private *i915,
+lookup_power_well(struct intel_display *display,
 		  enum i915_power_well_id power_well_id)
 {
-	struct intel_display *display = &i915->display;
 	struct i915_power_well *power_well;
 
 	for_each_power_well(display, power_well)
@@ -90,58 +89,57 @@ lookup_power_well(struct drm_i915_private *i915,
 	 * the first power well and hope the WARN gets reported so we can fix
 	 * our driver.
 	 */
-	drm_WARN(&i915->drm, 1,
+	drm_WARN(display->drm, 1,
 		 "Power well %d not defined for this platform\n",
 		 power_well_id);
-	return &i915->display.power.domains.power_wells[0];
+	return &display->power.domains.power_wells[0];
 }
 
-void intel_power_well_enable(struct drm_i915_private *i915,
+void intel_power_well_enable(struct intel_display *display,
 			     struct i915_power_well *power_well)
 {
-	drm_dbg_kms(&i915->drm, "enabling %s\n", intel_power_well_name(power_well));
-	power_well->desc->ops->enable(i915, power_well);
+	drm_dbg_kms(display->drm, "enabling %s\n", intel_power_well_name(power_well));
+	power_well->desc->ops->enable(display, power_well);
 	power_well->hw_enabled = true;
 }
 
-void intel_power_well_disable(struct drm_i915_private *i915,
+void intel_power_well_disable(struct intel_display *display,
 			      struct i915_power_well *power_well)
 {
-	drm_dbg_kms(&i915->drm, "disabling %s\n", intel_power_well_name(power_well));
+	drm_dbg_kms(display->drm, "disabling %s\n", intel_power_well_name(power_well));
 	power_well->hw_enabled = false;
-	power_well->desc->ops->disable(i915, power_well);
+	power_well->desc->ops->disable(display, power_well);
 }
 
-void intel_power_well_sync_hw(struct drm_i915_private *i915,
+void intel_power_well_sync_hw(struct intel_display *display,
 			      struct i915_power_well *power_well)
 {
-	power_well->desc->ops->sync_hw(i915, power_well);
-	power_well->hw_enabled =
-		power_well->desc->ops->is_enabled(i915, power_well);
+	power_well->desc->ops->sync_hw(display, power_well);
+	power_well->hw_enabled = power_well->desc->ops->is_enabled(display, power_well);
 }
 
-void intel_power_well_get(struct drm_i915_private *i915,
+void intel_power_well_get(struct intel_display *display,
 			  struct i915_power_well *power_well)
 {
 	if (!power_well->count++)
-		intel_power_well_enable(i915, power_well);
+		intel_power_well_enable(display, power_well);
 }
 
-void intel_power_well_put(struct drm_i915_private *i915,
+void intel_power_well_put(struct intel_display *display,
 			  struct i915_power_well *power_well)
 {
-	drm_WARN(&i915->drm, !power_well->count,
+	drm_WARN(display->drm, !power_well->count,
 		 "Use count on power well %s is already zero",
 		 i915_power_well_instance(power_well)->name);
 
 	if (!--power_well->count)
-		intel_power_well_disable(i915, power_well);
+		intel_power_well_disable(display, power_well);
 }
 
-bool intel_power_well_is_enabled(struct drm_i915_private *i915,
+bool intel_power_well_is_enabled(struct intel_display *display,
 				 struct i915_power_well *power_well)
 {
-	return power_well->desc->ops->is_enabled(i915, power_well);
+	return power_well->desc->ops->is_enabled(display, power_well);
 }
 
 bool intel_power_well_is_enabled_cached(struct i915_power_well *power_well)
@@ -149,14 +147,14 @@ bool intel_power_well_is_enabled_cached(struct i915_power_well *power_well)
 	return power_well->hw_enabled;
 }
 
-bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
+bool intel_display_power_well_is_enabled(struct intel_display *display,
 					 enum i915_power_well_id power_well_id)
 {
 	struct i915_power_well *power_well;
 
-	power_well = lookup_power_well(dev_priv, power_well_id);
+	power_well = lookup_power_well(display, power_well_id);
 
-	return intel_power_well_is_enabled(dev_priv, power_well);
+	return intel_power_well_is_enabled(display, power_well);
 }
 
 bool intel_power_well_is_always_on(struct i915_power_well *power_well)
@@ -185,10 +183,10 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
  * to be enabled, and it will only be disabled if none of the registers is
  * requesting it to be enabled.
  */
-static void hsw_power_well_post_enable(struct drm_i915_private *dev_priv,
+static void hsw_power_well_post_enable(struct intel_display *display,
 				       u8 irq_pipe_mask, bool has_vga)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	if (has_vga)
 		intel_vga_reset_io_mem(display);
@@ -197,9 +195,11 @@ static void hsw_power_well_post_enable(struct drm_i915_private *dev_priv,
 		gen8_irq_power_well_post_enable(dev_priv, irq_pipe_mask);
 }
 
-static void hsw_power_well_pre_disable(struct drm_i915_private *dev_priv,
+static void hsw_power_well_pre_disable(struct intel_display *display,
 				       u8 irq_pipe_mask)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	if (irq_pipe_mask)
 		gen8_irq_power_well_pre_disable(dev_priv, irq_pipe_mask);
 }
@@ -222,12 +222,12 @@ static enum aux_ch icl_aux_pw_to_ch(const struct i915_power_well *power_well)
 }
 
 static struct intel_digital_port *
-aux_ch_to_digital_port(struct drm_i915_private *dev_priv,
+aux_ch_to_digital_port(struct intel_display *display,
 		       enum aux_ch aux_ch)
 {
 	struct intel_encoder *encoder;
 
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		struct intel_digital_port *dig_port;
 
 		/* We'll check the MST primary port */
@@ -243,11 +243,11 @@ aux_ch_to_digital_port(struct drm_i915_private *dev_priv,
 	return NULL;
 }
 
-static enum phy icl_aux_pw_to_phy(struct drm_i915_private *i915,
+static enum phy icl_aux_pw_to_phy(struct intel_display *display,
 				  const struct i915_power_well *power_well)
 {
 	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
-	struct intel_digital_port *dig_port = aux_ch_to_digital_port(i915, aux_ch);
+	struct intel_digital_port *dig_port = aux_ch_to_digital_port(display, aux_ch);
 
 	/*
 	 * FIXME should we care about the (VBT defined) dig_port->aux_ch
@@ -259,7 +259,7 @@ static enum phy icl_aux_pw_to_phy(struct drm_i915_private *i915,
 	return dig_port ? intel_encoder_to_phy(&dig_port->base) : PHY_NONE;
 }
 
-static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
+static void hsw_wait_for_power_well_enable(struct intel_display *display,
 					   struct i915_power_well *power_well,
 					   bool timeout_expected)
 {
@@ -272,39 +272,39 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 	 * an ack, but rather just wait a fixed amount of time and then
 	 * proceed.  This is only used on DG2.
 	 */
-	if (IS_DG2(dev_priv) && power_well->desc->fixed_enable_delay) {
+	if (display->platform.dg2 && power_well->desc->fixed_enable_delay) {
 		usleep_range(600, 1200);
 		return;
 	}
 
 	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
-	if (intel_de_wait_for_set(dev_priv, regs->driver,
+	if (intel_de_wait_for_set(display, regs->driver,
 				  HSW_PWR_WELL_CTL_STATE(pw_idx), timeout)) {
-		drm_dbg_kms(&dev_priv->drm, "%s power well enable timeout\n",
+		drm_dbg_kms(display->drm, "%s power well enable timeout\n",
 			    intel_power_well_name(power_well));
 
-		drm_WARN_ON(&dev_priv->drm, !timeout_expected);
+		drm_WARN_ON(display->drm, !timeout_expected);
 
 	}
 }
 
-static u32 hsw_power_well_requesters(struct drm_i915_private *dev_priv,
+static u32 hsw_power_well_requesters(struct intel_display *display,
 				     const struct i915_power_well_regs *regs,
 				     int pw_idx)
 {
 	u32 req_mask = HSW_PWR_WELL_CTL_REQ(pw_idx);
 	u32 ret;
 
-	ret = intel_de_read(dev_priv, regs->bios) & req_mask ? 1 : 0;
-	ret |= intel_de_read(dev_priv, regs->driver) & req_mask ? 2 : 0;
+	ret = intel_de_read(display, regs->bios) & req_mask ? 1 : 0;
+	ret |= intel_de_read(display, regs->driver) & req_mask ? 2 : 0;
 	if (regs->kvmr.reg)
-		ret |= intel_de_read(dev_priv, regs->kvmr) & req_mask ? 4 : 0;
-	ret |= intel_de_read(dev_priv, regs->debug) & req_mask ? 8 : 0;
+		ret |= intel_de_read(display, regs->kvmr) & req_mask ? 4 : 0;
+	ret |= intel_de_read(display, regs->debug) & req_mask ? 8 : 0;
 
 	return ret;
 }
 
-static void hsw_wait_for_power_well_disable(struct drm_i915_private *dev_priv,
+static void hsw_wait_for_power_well_disable(struct intel_display *display,
 					    struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
@@ -321,28 +321,28 @@ static void hsw_wait_for_power_well_disable(struct drm_i915_private *dev_priv,
 	 * Skip the wait in case any of the request bits are set and print a
 	 * diagnostic message.
 	 */
-	wait_for((disabled = !(intel_de_read(dev_priv, regs->driver) &
+	wait_for((disabled = !(intel_de_read(display, regs->driver) &
 			       HSW_PWR_WELL_CTL_STATE(pw_idx))) ||
-		 (reqs = hsw_power_well_requesters(dev_priv, regs, pw_idx)), 1);
+		 (reqs = hsw_power_well_requesters(display, regs, pw_idx)), 1);
 	if (disabled)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "%s forced on (bios:%d driver:%d kvmr:%d debug:%d)\n",
 		    intel_power_well_name(power_well),
 		    !!(reqs & 1), !!(reqs & 2), !!(reqs & 4), !!(reqs & 8));
 }
 
-static void gen9_wait_for_power_well_fuses(struct drm_i915_private *dev_priv,
+static void gen9_wait_for_power_well_fuses(struct intel_display *display,
 					   enum skl_power_gate pg)
 {
 	/* Timeout 5us for PG#0, for other PGs 1us */
-	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_wait_for_set(dev_priv, SKL_FUSE_STATUS,
+	drm_WARN_ON(display->drm,
+		    intel_de_wait_for_set(display, SKL_FUSE_STATUS,
 					  SKL_FUSE_PG_DIST_STATUS(pg), 1));
 }
 
-static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
+static void hsw_power_well_enable(struct intel_display *display,
 				  struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
@@ -351,12 +351,12 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 	if (power_well->desc->has_fuses) {
 		enum skl_power_gate pg;
 
-		pg = DISPLAY_VER(dev_priv) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
+		pg = DISPLAY_VER(display) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
 						 SKL_PW_CTL_IDX_TO_PG(pw_idx);
 
 		/* Wa_16013190616:adlp */
-		if (IS_ALDERLAKE_P(dev_priv) && pg == SKL_PG1)
-			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0, DISABLE_FLR_SRC);
+		if (display->platform.alderlake_p && pg == SKL_PG1)
+			intel_de_rmw(display, GEN8_CHICKEN_DCPR_1, 0, DISABLE_FLR_SRC);
 
 		/*
 		 * For PW1 we have to wait both for the PW0/PG0 fuse state
@@ -366,112 +366,112 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 		 * after the enabling.
 		 */
 		if (pg == SKL_PG1)
-			gen9_wait_for_power_well_fuses(dev_priv, SKL_PG0);
+			gen9_wait_for_power_well_fuses(display, SKL_PG0);
 	}
 
-	intel_de_rmw(dev_priv, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
+	intel_de_rmw(display, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
 
-	hsw_wait_for_power_well_enable(dev_priv, power_well, false);
+	hsw_wait_for_power_well_enable(display, power_well, false);
 
 	if (power_well->desc->has_fuses) {
 		enum skl_power_gate pg;
 
-		pg = DISPLAY_VER(dev_priv) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
+		pg = DISPLAY_VER(display) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
 						 SKL_PW_CTL_IDX_TO_PG(pw_idx);
-		gen9_wait_for_power_well_fuses(dev_priv, pg);
+		gen9_wait_for_power_well_fuses(display, pg);
 	}
 
-	hsw_power_well_post_enable(dev_priv,
+	hsw_power_well_post_enable(display,
 				   power_well->desc->irq_pipe_mask,
 				   power_well->desc->has_vga);
 }
 
-static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
+static void hsw_power_well_disable(struct intel_display *display,
 				   struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 
-	hsw_power_well_pre_disable(dev_priv,
+	hsw_power_well_pre_disable(display,
 				   power_well->desc->irq_pipe_mask);
 
-	intel_de_rmw(dev_priv, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
-	hsw_wait_for_power_well_disable(dev_priv, power_well);
+	intel_de_rmw(display, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
+	hsw_wait_for_power_well_disable(display, power_well);
 }
 
-static bool intel_aux_ch_is_edp(struct drm_i915_private *i915, enum aux_ch aux_ch)
+static bool intel_aux_ch_is_edp(struct intel_display *display, enum aux_ch aux_ch)
 {
-	struct intel_digital_port *dig_port = aux_ch_to_digital_port(i915, aux_ch);
+	struct intel_digital_port *dig_port = aux_ch_to_digital_port(display, aux_ch);
 
 	return dig_port && dig_port->base.type == INTEL_OUTPUT_EDP;
 }
 
 static void
-icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
+icl_combo_phy_aux_power_well_enable(struct intel_display *display,
 				    struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 
-	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
+	drm_WARN_ON(display->drm, !display->platform.icelake);
 
-	intel_de_rmw(dev_priv, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
+	intel_de_rmw(display, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
 
 	/*
 	 * FIXME not sure if we should derive the PHY from the pw_idx, or
 	 * from the VBT defined AUX_CH->DDI->PHY mapping.
 	 */
-	intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(ICL_AUX_PW_TO_PHY(pw_idx)),
+	intel_de_rmw(display, ICL_PORT_CL_DW12(ICL_AUX_PW_TO_PHY(pw_idx)),
 		     0, ICL_LANE_ENABLE_AUX);
 
-	hsw_wait_for_power_well_enable(dev_priv, power_well, false);
+	hsw_wait_for_power_well_enable(display, power_well, false);
 
 	/* Display WA #1178: icl */
 	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
-	    !intel_aux_ch_is_edp(dev_priv, ICL_AUX_PW_TO_CH(pw_idx)))
-		intel_de_rmw(dev_priv, ICL_PORT_TX_DW6_AUX(ICL_AUX_PW_TO_PHY(pw_idx)),
+	    !intel_aux_ch_is_edp(display, ICL_AUX_PW_TO_CH(pw_idx)))
+		intel_de_rmw(display, ICL_PORT_TX_DW6_AUX(ICL_AUX_PW_TO_PHY(pw_idx)),
 			     0, O_FUNC_OVRD_EN | O_LDO_BYPASS_CRI);
 }
 
 static void
-icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
+icl_combo_phy_aux_power_well_disable(struct intel_display *display,
 				     struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 
-	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
+	drm_WARN_ON(display->drm, !display->platform.icelake);
 
 	/*
 	 * FIXME not sure if we should derive the PHY from the pw_idx, or
 	 * from the VBT defined AUX_CH->DDI->PHY mapping.
 	 */
-	intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(ICL_AUX_PW_TO_PHY(pw_idx)),
+	intel_de_rmw(display, ICL_PORT_CL_DW12(ICL_AUX_PW_TO_PHY(pw_idx)),
 		     ICL_LANE_ENABLE_AUX, 0);
 
-	intel_de_rmw(dev_priv, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
+	intel_de_rmw(display, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
 
-	hsw_wait_for_power_well_disable(dev_priv, power_well);
+	hsw_wait_for_power_well_disable(display, power_well);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 
-static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_priv,
+static void icl_tc_port_assert_ref_held(struct intel_display *display,
 					struct i915_power_well *power_well,
 					struct intel_digital_port *dig_port)
 {
-	if (drm_WARN_ON(&dev_priv->drm, !dig_port))
+	if (drm_WARN_ON(display->drm, !dig_port))
 		return;
 
-	if (DISPLAY_VER(dev_priv) == 11 && intel_tc_cold_requires_aux_pw(dig_port))
+	if (DISPLAY_VER(display) == 11 && intel_tc_cold_requires_aux_pw(dig_port))
 		return;
 
-	drm_WARN_ON(&dev_priv->drm, !intel_tc_port_ref_held(dig_port));
+	drm_WARN_ON(display->drm, !intel_tc_port_ref_held(dig_port));
 }
 
 #else
 
-static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_priv,
+static void icl_tc_port_assert_ref_held(struct intel_display *display,
 					struct i915_power_well *power_well,
 					struct intel_digital_port *dig_port)
 {
@@ -481,8 +481,9 @@ static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_priv,
 
 #define TGL_AUX_PW_TO_TC_PORT(pw_idx)	((pw_idx) - TGL_PW_CTL_IDX_AUX_TC1)
 
-static void icl_tc_cold_exit(struct drm_i915_private *i915)
+static void icl_tc_cold_exit(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret, tries = 0;
 
 	while (1) {
@@ -503,21 +504,22 @@ static void icl_tc_cold_exit(struct drm_i915_private *i915)
 }
 
 static void
-icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
+icl_tc_phy_aux_power_well_enable(struct intel_display *display,
 				 struct i915_power_well *power_well)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
-	struct intel_digital_port *dig_port = aux_ch_to_digital_port(dev_priv, aux_ch);
+	struct intel_digital_port *dig_port = aux_ch_to_digital_port(display, aux_ch);
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	bool is_tbt = power_well->desc->is_tc_tbt;
 	bool timeout_expected;
 
-	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
+	icl_tc_port_assert_ref_held(display, power_well, dig_port);
 
-	intel_de_rmw(dev_priv, DP_AUX_CH_CTL(aux_ch),
+	intel_de_rmw(display, DP_AUX_CH_CTL(aux_ch),
 		     DP_AUX_CH_CTL_TBT_IO, is_tbt ? DP_AUX_CH_CTL_TBT_IO : 0);
 
-	intel_de_rmw(dev_priv, regs->driver,
+	intel_de_rmw(display, regs->driver,
 		     0,
 		     HSW_PWR_WELL_CTL_REQ(i915_power_well_instance(power_well)->hsw.idx));
 
@@ -527,51 +529,53 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	 * exit sequence.
 	 */
 	timeout_expected = is_tbt || intel_tc_cold_requires_aux_pw(dig_port);
-	if (DISPLAY_VER(dev_priv) == 11 && intel_tc_cold_requires_aux_pw(dig_port))
-		icl_tc_cold_exit(dev_priv);
+	if (DISPLAY_VER(display) == 11 && intel_tc_cold_requires_aux_pw(dig_port))
+		icl_tc_cold_exit(display);
 
-	hsw_wait_for_power_well_enable(dev_priv, power_well, timeout_expected);
+	hsw_wait_for_power_well_enable(display, power_well, timeout_expected);
 
-	if (DISPLAY_VER(dev_priv) >= 12 && !is_tbt) {
+	if (DISPLAY_VER(display) >= 12 && !is_tbt) {
 		enum tc_port tc_port;
 
 		tc_port = TGL_AUX_PW_TO_TC_PORT(i915_power_well_instance(power_well)->hsw.idx);
 
 		if (wait_for(intel_dkl_phy_read(dev_priv, DKL_CMN_UC_DW_27(tc_port)) &
 			     DKL_CMN_UC_DW27_UC_HEALTH, 1))
-			drm_warn(&dev_priv->drm,
+			drm_warn(display->drm,
 				 "Timeout waiting TC uC health\n");
 	}
 }
 
 static void
-icl_aux_power_well_enable(struct drm_i915_private *dev_priv,
+icl_aux_power_well_enable(struct intel_display *display,
 			  struct i915_power_well *power_well)
 {
-	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	enum phy phy = icl_aux_pw_to_phy(display, power_well);
 
 	if (intel_phy_is_tc(dev_priv, phy))
-		return icl_tc_phy_aux_power_well_enable(dev_priv, power_well);
-	else if (IS_ICELAKE(dev_priv))
-		return icl_combo_phy_aux_power_well_enable(dev_priv,
+		return icl_tc_phy_aux_power_well_enable(display, power_well);
+	else if (display->platform.icelake)
+		return icl_combo_phy_aux_power_well_enable(display,
 							   power_well);
 	else
-		return hsw_power_well_enable(dev_priv, power_well);
+		return hsw_power_well_enable(display, power_well);
 }
 
 static void
-icl_aux_power_well_disable(struct drm_i915_private *dev_priv,
+icl_aux_power_well_disable(struct intel_display *display,
 			   struct i915_power_well *power_well)
 {
-	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	enum phy phy = icl_aux_pw_to_phy(display, power_well);
 
 	if (intel_phy_is_tc(dev_priv, phy))
-		return hsw_power_well_disable(dev_priv, power_well);
-	else if (IS_ICELAKE(dev_priv))
-		return icl_combo_phy_aux_power_well_disable(dev_priv,
+		return hsw_power_well_disable(display, power_well);
+	else if (display->platform.icelake)
+		return icl_combo_phy_aux_power_well_disable(display,
 							    power_well);
 	else
-		return hsw_power_well_disable(dev_priv, power_well);
+		return hsw_power_well_disable(display, power_well);
 }
 
 /*
@@ -579,7 +583,7 @@ icl_aux_power_well_disable(struct drm_i915_private *dev_priv,
  * enable it, so check if it's enabled and also check if we've requested it to
  * be enabled.
  */
-static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
+static bool hsw_power_well_enabled(struct intel_display *display,
 				   struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
@@ -589,7 +593,7 @@ static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
 		   HSW_PWR_WELL_CTL_STATE(pw_idx);
 	u32 val;
 
-	val = intel_de_read(dev_priv, regs->driver);
+	val = intel_de_read(display, regs->driver);
 
 	/*
 	 * On GEN9 big core due to a DMC bug the driver's request bits for PW1
@@ -597,9 +601,9 @@ static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
 	 * BIOS's own request bits, which are forced-on for these power wells
 	 * when exiting DC5/6.
 	 */
-	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv) &&
+	if (DISPLAY_VER(display) == 9 && !display->platform.broxton &&
 	    (id == SKL_DISP_PW_1 || id == SKL_DISP_PW_MISC_IO))
-		val |= intel_de_read(dev_priv, regs->bios);
+		val |= intel_de_read(display, regs->bios);
 
 	return (val & mask) == mask;
 }
@@ -692,7 +696,6 @@ static void gen9_write_dc_state(struct intel_display *display,
 
 static u32 gen9_dc_mask(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 mask;
 
 	mask = DC_STATE_EN_UPTO_DC5;
@@ -702,7 +705,7 @@ static u32 gen9_dc_mask(struct intel_display *display)
 					  | DC_STATE_EN_DC9;
 	else if (DISPLAY_VER(display) == 11)
 		mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	else if (display->platform.geminilake || display->platform.broxton)
 		mask |= DC_STATE_EN_DC9;
 	else
 		mask |= DC_STATE_EN_UPTO_DC6;
@@ -799,7 +802,7 @@ static void tgl_disable_dc3co(struct intel_display *display)
 
 static void assert_can_enable_dc5(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct drm_i915_private __maybe_unused *dev_priv = to_i915(display->drm);
 	enum i915_power_well_id high_pg;
 
 	/* Power wells at this level and above must be disabled for DC5 entry */
@@ -809,7 +812,7 @@ static void assert_can_enable_dc5(struct intel_display *display)
 		high_pg = SKL_DISP_PW_2;
 
 	drm_WARN_ONCE(display->drm,
-		      intel_display_power_well_is_enabled(dev_priv, high_pg),
+		      intel_display_power_well_is_enabled(display, high_pg),
 		      "Power wells above platform's DC5 limit still enabled.\n");
 
 	drm_WARN_ONCE(display->drm,
@@ -823,14 +826,12 @@ static void assert_can_enable_dc5(struct intel_display *display)
 
 void gen9_enable_dc5(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	assert_can_enable_dc5(display);
 
 	drm_dbg_kms(display->drm, "Enabling DC5\n");
 
 	/* Wa Display #1183: skl,kbl,cfl */
-	if (DISPLAY_VER(display) == 9 && !IS_BROXTON(dev_priv))
+	if (DISPLAY_VER(display) == 9 && !display->platform.broxton)
 		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
 			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
 
@@ -856,14 +857,12 @@ static void assert_can_enable_dc6(struct intel_display *display)
 
 void skl_enable_dc6(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	assert_can_enable_dc6(display);
 
 	drm_dbg_kms(display->drm, "Enabling DC6\n");
 
 	/* Wa Display #1183: skl,kbl,cfl */
-	if (DISPLAY_VER(display) == 9 && !IS_BROXTON(dev_priv))
+	if (DISPLAY_VER(display) == 9 && !display->platform.broxton)
 		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
 			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
 
@@ -874,8 +873,6 @@ void skl_enable_dc6(struct intel_display *display)
 
 void bxt_enable_dc9(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	assert_can_enable_dc9(display);
 
 	drm_dbg_kms(display->drm, "Enabling DC9\n");
@@ -883,7 +880,7 @@ void bxt_enable_dc9(struct intel_display *display)
 	 * Power sequencer reset is needed on BXT/GLK, because the PPS registers
 	 * aren't always on, unlike with South Display Engine on PCH.
 	 */
-	if (IS_BROXTON(dev_priv) || IS_GEMINILAKE(dev_priv))
+	if (display->platform.broxton || display->platform.geminilake)
 		bxt_pps_reset_all(display);
 	gen9_set_dc_state(display, DC_STATE_EN_DC9);
 }
@@ -899,63 +896,56 @@ void bxt_disable_dc9(struct intel_display *display)
 	intel_pps_unlock_regs_wa(display);
 }
 
-static void hsw_power_well_sync_hw(struct drm_i915_private *dev_priv,
+static void hsw_power_well_sync_hw(struct intel_display *display,
 				   struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 	u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx);
-	u32 bios_req = intel_de_read(dev_priv, regs->bios);
+	u32 bios_req = intel_de_read(display, regs->bios);
 
 	/* Take over the request bit if set by BIOS. */
 	if (bios_req & mask) {
-		u32 drv_req = intel_de_read(dev_priv, regs->driver);
+		u32 drv_req = intel_de_read(display, regs->driver);
 
 		if (!(drv_req & mask))
-			intel_de_write(dev_priv, regs->driver, drv_req | mask);
-		intel_de_write(dev_priv, regs->bios, bios_req & ~mask);
+			intel_de_write(display, regs->driver, drv_req | mask);
+		intel_de_write(display, regs->bios, bios_req & ~mask);
 	}
 }
 
-static void bxt_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
+static void bxt_dpio_cmn_power_well_enable(struct intel_display *display,
 					   struct i915_power_well *power_well)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	bxt_dpio_phy_init(display, i915_power_well_instance(power_well)->bxt.phy);
 }
 
-static void bxt_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
+static void bxt_dpio_cmn_power_well_disable(struct intel_display *display,
 					    struct i915_power_well *power_well)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	bxt_dpio_phy_uninit(display, i915_power_well_instance(power_well)->bxt.phy);
 }
 
-static bool bxt_dpio_cmn_power_well_enabled(struct drm_i915_private *dev_priv,
+static bool bxt_dpio_cmn_power_well_enabled(struct intel_display *display,
 					    struct i915_power_well *power_well)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	return bxt_dpio_phy_is_enabled(display, i915_power_well_instance(power_well)->bxt.phy);
 }
 
-static void bxt_verify_dpio_phy_power_wells(struct drm_i915_private *dev_priv)
+static void bxt_verify_dpio_phy_power_wells(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i915_power_well *power_well;
 
-	power_well = lookup_power_well(dev_priv, BXT_DISP_PW_DPIO_CMN_A);
+	power_well = lookup_power_well(display, BXT_DISP_PW_DPIO_CMN_A);
 	if (intel_power_well_refcount(power_well) > 0)
 		bxt_dpio_phy_verify_state(display, i915_power_well_instance(power_well)->bxt.phy);
 
-	power_well = lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
+	power_well = lookup_power_well(display, VLV_DISP_PW_DPIO_CMN_BC);
 	if (intel_power_well_refcount(power_well) > 0)
 		bxt_dpio_phy_verify_state(display, i915_power_well_instance(power_well)->bxt.phy);
 
-	if (IS_GEMINILAKE(dev_priv)) {
-		power_well = lookup_power_well(dev_priv,
+	if (display->platform.geminilake) {
+		power_well = lookup_power_well(display,
 					       GLK_DISP_PW_DPIO_CMN_C);
 		if (intel_power_well_refcount(power_well) > 0)
 			bxt_dpio_phy_verify_state(display,
@@ -963,21 +953,20 @@ static void bxt_verify_dpio_phy_power_wells(struct drm_i915_private *dev_priv)
 	}
 }
 
-static bool gen9_dc_off_power_well_enabled(struct drm_i915_private *dev_priv,
+static bool gen9_dc_off_power_well_enabled(struct intel_display *display,
 					   struct i915_power_well *power_well)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	return ((intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_DC3CO) == 0 &&
 		(intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
 }
 
-static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
+static void gen9_assert_dbuf_enabled(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u8 hw_enabled_dbuf_slices = intel_enabled_dbuf_slices_mask(dev_priv);
-	u8 enabled_dbuf_slices = dev_priv->display.dbuf.enabled_slices;
+	u8 enabled_dbuf_slices = display->dbuf.enabled_slices;
 
-	drm_WARN(&dev_priv->drm,
+	drm_WARN(display->drm,
 		 hw_enabled_dbuf_slices != enabled_dbuf_slices,
 		 "Unexpected DBuf power power state (0x%08x, expected 0x%08x)\n",
 		 hw_enabled_dbuf_slices,
@@ -1015,10 +1004,10 @@ void gen9_disable_dc_states(struct intel_display *display)
 		    intel_cdclk_clock_changed(&display->cdclk.hw,
 					      &cdclk_config));
 
-	gen9_assert_dbuf_enabled(dev_priv);
+	gen9_assert_dbuf_enabled(display);
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		bxt_verify_dpio_phy_power_wells(dev_priv);
+	if (display->platform.geminilake || display->platform.broxton)
+		bxt_verify_dpio_phy_power_wells(display);
 
 	if (DISPLAY_VER(display) >= 11)
 		/*
@@ -1029,18 +1018,15 @@ void gen9_disable_dc_states(struct intel_display *display)
 		intel_combo_phy_init(dev_priv);
 }
 
-static void gen9_dc_off_power_well_enable(struct drm_i915_private *dev_priv,
+static void gen9_dc_off_power_well_enable(struct intel_display *display,
 					  struct i915_power_well *power_well)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	gen9_disable_dc_states(display);
 }
 
-static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
+static void gen9_dc_off_power_well_disable(struct intel_display *display,
 					   struct i915_power_well *power_well)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i915_power_domains *power_domains = &display->power.domains;
 
 	if (!intel_dmc_has_payload(display))
@@ -1059,63 +1045,58 @@ static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void i9xx_power_well_sync_hw_noop(struct drm_i915_private *dev_priv,
+static void i9xx_power_well_sync_hw_noop(struct intel_display *display,
 					 struct i915_power_well *power_well)
 {
 }
 
-static void i9xx_always_on_power_well_noop(struct drm_i915_private *dev_priv,
+static void i9xx_always_on_power_well_noop(struct intel_display *display,
 					   struct i915_power_well *power_well)
 {
 }
 
-static bool i9xx_always_on_power_well_enabled(struct drm_i915_private *dev_priv,
+static bool i9xx_always_on_power_well_enabled(struct intel_display *display,
 					     struct i915_power_well *power_well)
 {
 	return true;
 }
 
-static void i830_pipes_power_well_enable(struct drm_i915_private *dev_priv,
+static void i830_pipes_power_well_enable(struct intel_display *display,
 					 struct i915_power_well *power_well)
 {
-	struct intel_display *display = &dev_priv->display;
-
-	if ((intel_de_read(display, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE) == 0)
+	if ((intel_de_read(display, TRANSCONF(display, PIPE_A)) & TRANSCONF_ENABLE) == 0)
 		i830_enable_pipe(display, PIPE_A);
-	if ((intel_de_read(display, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE) == 0)
+	if ((intel_de_read(display, TRANSCONF(display, PIPE_B)) & TRANSCONF_ENABLE) == 0)
 		i830_enable_pipe(display, PIPE_B);
 }
 
-static void i830_pipes_power_well_disable(struct drm_i915_private *dev_priv,
+static void i830_pipes_power_well_disable(struct intel_display *display,
 					  struct i915_power_well *power_well)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	i830_disable_pipe(display, PIPE_B);
 	i830_disable_pipe(display, PIPE_A);
 }
 
-static bool i830_pipes_power_well_enabled(struct drm_i915_private *dev_priv,
+static bool i830_pipes_power_well_enabled(struct intel_display *display,
 					  struct i915_power_well *power_well)
 {
-	struct intel_display *display = &dev_priv->display;
-
-	return intel_de_read(display, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE &&
-		intel_de_read(display, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE;
+	return intel_de_read(display, TRANSCONF(display, PIPE_A)) & TRANSCONF_ENABLE &&
+		intel_de_read(display, TRANSCONF(display, PIPE_B)) & TRANSCONF_ENABLE;
 }
 
-static void i830_pipes_power_well_sync_hw(struct drm_i915_private *dev_priv,
+static void i830_pipes_power_well_sync_hw(struct intel_display *display,
 					  struct i915_power_well *power_well)
 {
 	if (intel_power_well_refcount(power_well) > 0)
-		i830_pipes_power_well_enable(dev_priv, power_well);
+		i830_pipes_power_well_enable(display, power_well);
 	else
-		i830_pipes_power_well_disable(dev_priv, power_well);
+		i830_pipes_power_well_disable(display, power_well);
 }
 
-static void vlv_set_power_well(struct drm_i915_private *dev_priv,
+static void vlv_set_power_well(struct intel_display *display,
 			       struct i915_power_well *power_well, bool enable)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int pw_idx = i915_power_well_instance(power_well)->vlv.idx;
 	u32 mask;
 	u32 state;
@@ -1139,7 +1120,7 @@ static void vlv_set_power_well(struct drm_i915_private *dev_priv,
 	vlv_punit_write(dev_priv, PUNIT_REG_PWRGT_CTRL, ctrl);
 
 	if (wait_for(COND, 100))
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"timeout setting power well state %08x (%08x)\n",
 			state,
 			vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_CTRL));
@@ -1150,21 +1131,22 @@ static void vlv_set_power_well(struct drm_i915_private *dev_priv,
 	vlv_punit_put(dev_priv);
 }
 
-static void vlv_power_well_enable(struct drm_i915_private *dev_priv,
+static void vlv_power_well_enable(struct intel_display *display,
 				  struct i915_power_well *power_well)
 {
-	vlv_set_power_well(dev_priv, power_well, true);
+	vlv_set_power_well(display, power_well, true);
 }
 
-static void vlv_power_well_disable(struct drm_i915_private *dev_priv,
+static void vlv_power_well_disable(struct intel_display *display,
 				   struct i915_power_well *power_well)
 {
-	vlv_set_power_well(dev_priv, power_well, false);
+	vlv_set_power_well(display, power_well, false);
 }
 
-static bool vlv_power_well_enabled(struct drm_i915_private *dev_priv,
+static bool vlv_power_well_enabled(struct intel_display *display,
 				   struct i915_power_well *power_well)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int pw_idx = i915_power_well_instance(power_well)->vlv.idx;
 	bool enabled = false;
 	u32 mask;
@@ -1181,7 +1163,7 @@ static bool vlv_power_well_enabled(struct drm_i915_private *dev_priv,
 	 * We only ever set the power-on and power-gate states, anything
 	 * else is unexpected.
 	 */
-	drm_WARN_ON(&dev_priv->drm, state != PUNIT_PWRGT_PWR_ON(pw_idx) &&
+	drm_WARN_ON(display->drm, state != PUNIT_PWRGT_PWR_ON(pw_idx) &&
 		    state != PUNIT_PWRGT_PWR_GATE(pw_idx));
 	if (state == ctrl)
 		enabled = true;
@@ -1191,14 +1173,14 @@ static bool vlv_power_well_enabled(struct drm_i915_private *dev_priv,
 	 * is poking at the power controls too.
 	 */
 	ctrl = vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_CTRL) & mask;
-	drm_WARN_ON(&dev_priv->drm, ctrl != state);
+	drm_WARN_ON(display->drm, ctrl != state);
 
 	vlv_punit_put(dev_priv);
 
 	return enabled;
 }
 
-static void vlv_init_display_clock_gating(struct drm_i915_private *dev_priv)
+static void vlv_init_display_clock_gating(struct intel_display *display)
 {
 	/*
 	 * On driver load, a pipe may be active and driving a DSI display.
@@ -1206,25 +1188,25 @@ static void vlv_init_display_clock_gating(struct drm_i915_private *dev_priv)
 	 * (and never recovering) in this case. intel_dsi_post_disable() will
 	 * clear it when we turn off the display.
 	 */
-	intel_de_rmw(dev_priv, DSPCLK_GATE_D(dev_priv),
+	intel_de_rmw(display, DSPCLK_GATE_D(display),
 		     ~DPOUNIT_CLOCK_GATE_DISABLE, VRHUNIT_CLOCK_GATE_DISABLE);
 
 	/*
 	 * Disable trickle feed and enable pnd deadline calculation
 	 */
-	intel_de_write(dev_priv, MI_ARB_VLV,
+	intel_de_write(display, MI_ARB_VLV,
 		       MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE);
-	intel_de_write(dev_priv, CBR1_VLV, 0);
+	intel_de_write(display, CBR1_VLV, 0);
 
-	drm_WARN_ON(&dev_priv->drm, DISPLAY_RUNTIME_INFO(dev_priv)->rawclk_freq == 0);
-	intel_de_write(dev_priv, RAWCLK_FREQ_VLV,
-		       DIV_ROUND_CLOSEST(DISPLAY_RUNTIME_INFO(dev_priv)->rawclk_freq,
+	drm_WARN_ON(display->drm, DISPLAY_RUNTIME_INFO(display)->rawclk_freq == 0);
+	intel_de_write(display, RAWCLK_FREQ_VLV,
+		       DIV_ROUND_CLOSEST(DISPLAY_RUNTIME_INFO(display)->rawclk_freq,
 					 1000));
 }
 
-static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
+static void vlv_display_power_well_init(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder;
 	enum pipe pipe;
 
@@ -1236,17 +1218,17 @@ static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
 	 *
 	 * CHV DPLL B/C have some issues if VGA mode is enabled.
 	 */
-	for_each_pipe(dev_priv, pipe) {
-		u32 val = intel_de_read(dev_priv, DPLL(dev_priv, pipe));
+	for_each_pipe(display, pipe) {
+		u32 val = intel_de_read(display, DPLL(display, pipe));
 
 		val |= DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
 		if (pipe != PIPE_A)
 			val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-		intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
+		intel_de_write(display, DPLL(display, pipe), val);
 	}
 
-	vlv_init_display_clock_gating(dev_priv);
+	vlv_init_display_clock_gating(display);
 
 	spin_lock_irq(&dev_priv->irq_lock);
 	valleyview_enable_display_irqs(dev_priv);
@@ -1256,14 +1238,14 @@ static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
 	 * During driver initialization/resume we can avoid restoring the
 	 * part of the HW/SW state that will be inited anyway explicitly.
 	 */
-	if (dev_priv->display.power.domains.initializing)
+	if (display->power.domains.initializing)
 		return;
 
 	intel_hpd_init(dev_priv);
 	intel_hpd_poll_disable(dev_priv);
 
 	/* Re-enable the ADPA, if we have one */
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		if (encoder->type == INTEL_OUTPUT_ANALOG)
 			intel_crt_reset(&encoder->base);
 	}
@@ -1273,9 +1255,9 @@ static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
 	intel_pps_unlock_regs_wa(display);
 }
 
-static void vlv_display_power_well_deinit(struct drm_i915_private *dev_priv)
+static void vlv_display_power_well_deinit(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	spin_lock_irq(&dev_priv->irq_lock);
 	valleyview_disable_display_irqs(dev_priv);
@@ -1287,33 +1269,33 @@ static void vlv_display_power_well_deinit(struct drm_i915_private *dev_priv)
 	vlv_pps_reset_all(display);
 
 	/* Prevent us from re-enabling polling on accident in late suspend */
-	if (!dev_priv->drm.dev->power.is_suspended)
+	if (!display->drm->dev->power.is_suspended)
 		intel_hpd_poll_enable(dev_priv);
 }
 
-static void vlv_display_power_well_enable(struct drm_i915_private *dev_priv,
+static void vlv_display_power_well_enable(struct intel_display *display,
 					  struct i915_power_well *power_well)
 {
-	vlv_set_power_well(dev_priv, power_well, true);
+	vlv_set_power_well(display, power_well, true);
 
-	vlv_display_power_well_init(dev_priv);
+	vlv_display_power_well_init(display);
 }
 
-static void vlv_display_power_well_disable(struct drm_i915_private *dev_priv,
+static void vlv_display_power_well_disable(struct intel_display *display,
 					   struct i915_power_well *power_well)
 {
-	vlv_display_power_well_deinit(dev_priv);
+	vlv_display_power_well_deinit(display);
 
-	vlv_set_power_well(dev_priv, power_well, false);
+	vlv_set_power_well(display, power_well, false);
 }
 
-static void vlv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
+static void vlv_dpio_cmn_power_well_enable(struct intel_display *display,
 					   struct i915_power_well *power_well)
 {
 	/* since ref/cri clock was enabled */
 	udelay(1); /* >10ns for cmnreset, >0ns for sidereset */
 
-	vlv_set_power_well(dev_priv, power_well, true);
+	vlv_set_power_well(display, power_well, true);
 
 	/*
 	 * From VLV2A0_DP_eDP_DPIO_driver_vbios_notes_10.docx -
@@ -1326,32 +1308,32 @@ static void vlv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 	 * both PLLs disabled, or we risk losing DPIO and PLL
 	 * synchronization.
 	 */
-	intel_de_rmw(dev_priv, DPIO_CTL, 0, DPIO_CMNRST);
+	intel_de_rmw(display, DPIO_CTL, 0, DPIO_CMNRST);
 }
 
-static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
+static void vlv_dpio_cmn_power_well_disable(struct intel_display *display,
 					    struct i915_power_well *power_well)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 
-	for_each_pipe(dev_priv, pipe)
+	for_each_pipe(display, pipe)
 		assert_pll_disabled(dev_priv, pipe);
 
 	/* Assert common reset */
-	intel_de_rmw(dev_priv, DPIO_CTL, DPIO_CMNRST, 0);
+	intel_de_rmw(display, DPIO_CTL, DPIO_CMNRST, 0);
 
-	vlv_set_power_well(dev_priv, power_well, false);
+	vlv_set_power_well(display, power_well, false);
 }
 
 #define BITS_SET(val, bits) (((val) & (bits)) == (bits))
 
 static void assert_chv_phy_status(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_well *cmn_bc =
-		lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
+		lookup_power_well(display, VLV_DISP_PW_DPIO_CMN_BC);
 	struct i915_power_well *cmn_d =
-		lookup_power_well(dev_priv, CHV_DISP_PW_DPIO_CMN_D);
+		lookup_power_well(display, CHV_DISP_PW_DPIO_CMN_D);
 	u32 phy_control = display->power.chv_phy_control;
 	u32 phy_status = 0;
 	u32 phy_status_mask = 0xffffffff;
@@ -1376,7 +1358,7 @@ static void assert_chv_phy_status(struct intel_display *display)
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 0) |
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 1));
 
-	if (intel_power_well_is_enabled(dev_priv, cmn_bc)) {
+	if (intel_power_well_is_enabled(display, cmn_bc)) {
 		phy_status |= PHY_POWERGOOD(DPIO_PHY0);
 
 		/* this assumes override is only used to enable lanes */
@@ -1417,7 +1399,7 @@ static void assert_chv_phy_status(struct intel_display *display)
 			phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 1);
 	}
 
-	if (intel_power_well_is_enabled(dev_priv, cmn_d)) {
+	if (intel_power_well_is_enabled(display, cmn_d)) {
 		phy_status |= PHY_POWERGOOD(DPIO_PHY1);
 
 		/* this assumes override is only used to enable lanes */
@@ -1452,10 +1434,10 @@ static void assert_chv_phy_status(struct intel_display *display)
 
 #undef BITS_SET
 
-static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
+static void chv_dpio_cmn_power_well_enable(struct intel_display *display,
 					   struct i915_power_well *power_well)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum i915_power_well_id id = i915_power_well_instance(power_well)->id;
 	enum dpio_phy phy;
 	u32 tmp;
@@ -1471,7 +1453,7 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 
 	/* since ref/cri clock was enabled */
 	udelay(1); /* >10ns for cmnreset, >0ns for sidereset */
-	vlv_set_power_well(dev_priv, power_well, true);
+	vlv_set_power_well(display, power_well, true);
 
 	/* Poll for phypwrgood signal */
 	if (intel_de_wait_for_set(display, DISPLAY_PHY_STATUS,
@@ -1515,10 +1497,10 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 	assert_chv_phy_status(display);
 }
 
-static void chv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
+static void chv_dpio_cmn_power_well_disable(struct intel_display *display,
 					    struct i915_power_well *power_well)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum i915_power_well_id id = i915_power_well_instance(power_well)->id;
 	enum dpio_phy phy;
 
@@ -1539,7 +1521,7 @@ static void chv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 	intel_de_write(display, DISPLAY_PHY_CONTROL,
 		       display->power.chv_phy_control);
 
-	vlv_set_power_well(dev_priv, power_well, false);
+	vlv_set_power_well(display, power_well, false);
 
 	drm_dbg_kms(display->drm,
 		    "Disabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
@@ -1551,9 +1533,10 @@ static void chv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 	assert_chv_phy_status(display);
 }
 
-static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpio_phy phy,
+static void assert_chv_phy_powergate(struct intel_display *display, enum dpio_phy phy,
 				     enum dpio_channel ch, bool override, unsigned int mask)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 reg, val, expected, actual;
 
 	/*
@@ -1563,7 +1546,7 @@ static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpi
 	 * reset (ie. the power well has been disabled at
 	 * least once).
 	 */
-	if (!dev_priv->display.power.chv_phy_assert[phy])
+	if (!display->power.chv_phy_assert[phy])
 		return;
 
 	if (ch == DPIO_CH0)
@@ -1606,7 +1589,7 @@ static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpi
 		actual = REG_FIELD_GET(DPIO_ANYDL_POWERDOWN_CH1 |
 				       DPIO_ALLDL_POWERDOWN_CH1, val);
 
-	drm_WARN(&dev_priv->drm, actual != expected,
+	drm_WARN(display->drm, actual != expected,
 		 "Unexpected DPIO lane power down: all %d, any %d. Expected: all %d, any %d. (0x%x = 0x%08x)\n",
 		 !!(actual & DPIO_ALLDL_POWERDOWN),
 		 !!(actual & DPIO_ANYDL_POWERDOWN),
@@ -1615,10 +1598,9 @@ static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpi
 		 reg, val);
 }
 
-bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
+bool chv_phy_powergate_ch(struct intel_display *display, enum dpio_phy phy,
 			  enum dpio_channel ch, bool override)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i915_power_domains *power_domains = &display->power.domains;
 	bool was_override;
 
@@ -1653,7 +1635,6 @@ void chv_phy_powergate_lanes(struct intel_encoder *encoder,
 			     bool override, unsigned int mask)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	enum dpio_phy phy = vlv_dig_port_to_phy(enc_to_dig_port(encoder));
 	enum dpio_channel ch = vlv_dig_port_to_channel(enc_to_dig_port(encoder));
@@ -1677,14 +1658,15 @@ void chv_phy_powergate_lanes(struct intel_encoder *encoder,
 
 	assert_chv_phy_status(display);
 
-	assert_chv_phy_powergate(dev_priv, phy, ch, override, mask);
+	assert_chv_phy_powergate(display, phy, ch, override, mask);
 
 	mutex_unlock(&power_domains->lock);
 }
 
-static bool chv_pipe_power_well_enabled(struct drm_i915_private *dev_priv,
+static bool chv_pipe_power_well_enabled(struct intel_display *display,
 					struct i915_power_well *power_well)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe = PIPE_A;
 	bool enabled;
 	u32 state, ctrl;
@@ -1696,7 +1678,7 @@ static bool chv_pipe_power_well_enabled(struct drm_i915_private *dev_priv,
 	 * We only ever set the power-on and power-gate states, anything
 	 * else is unexpected.
 	 */
-	drm_WARN_ON(&dev_priv->drm, state != DP_SSS_PWR_ON(pipe) &&
+	drm_WARN_ON(display->drm, state != DP_SSS_PWR_ON(pipe) &&
 		    state != DP_SSS_PWR_GATE(pipe));
 	enabled = state == DP_SSS_PWR_ON(pipe);
 
@@ -1705,17 +1687,18 @@ static bool chv_pipe_power_well_enabled(struct drm_i915_private *dev_priv,
 	 * is poking at the power controls too.
 	 */
 	ctrl = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) & DP_SSC_MASK(pipe);
-	drm_WARN_ON(&dev_priv->drm, ctrl << 16 != state);
+	drm_WARN_ON(display->drm, ctrl << 16 != state);
 
 	vlv_punit_put(dev_priv);
 
 	return enabled;
 }
 
-static void chv_set_pipe_power_well(struct drm_i915_private *dev_priv,
+static void chv_set_pipe_power_well(struct intel_display *display,
 				    struct i915_power_well *power_well,
 				    bool enable)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe = PIPE_A;
 	u32 state;
 	u32 ctrl;
@@ -1736,7 +1719,7 @@ static void chv_set_pipe_power_well(struct drm_i915_private *dev_priv,
 	vlv_punit_write(dev_priv, PUNIT_REG_DSPSSPM, ctrl);
 
 	if (wait_for(COND, 100))
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"timeout setting power well state %08x (%08x)\n",
 			state,
 			vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM));
@@ -1747,32 +1730,33 @@ static void chv_set_pipe_power_well(struct drm_i915_private *dev_priv,
 	vlv_punit_put(dev_priv);
 }
 
-static void chv_pipe_power_well_sync_hw(struct drm_i915_private *dev_priv,
+static void chv_pipe_power_well_sync_hw(struct intel_display *display,
 					struct i915_power_well *power_well)
 {
-	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-		       dev_priv->display.power.chv_phy_control);
+	intel_de_write(display, DISPLAY_PHY_CONTROL,
+		       display->power.chv_phy_control);
 }
 
-static void chv_pipe_power_well_enable(struct drm_i915_private *dev_priv,
+static void chv_pipe_power_well_enable(struct intel_display *display,
 				       struct i915_power_well *power_well)
 {
-	chv_set_pipe_power_well(dev_priv, power_well, true);
+	chv_set_pipe_power_well(display, power_well, true);
 
-	vlv_display_power_well_init(dev_priv);
+	vlv_display_power_well_init(display);
 }
 
-static void chv_pipe_power_well_disable(struct drm_i915_private *dev_priv,
+static void chv_pipe_power_well_disable(struct intel_display *display,
 					struct i915_power_well *power_well)
 {
-	vlv_display_power_well_deinit(dev_priv);
+	vlv_display_power_well_deinit(display);
 
-	chv_set_pipe_power_well(dev_priv, power_well, false);
+	chv_set_pipe_power_well(display, power_well, false);
 }
 
 static void
-tgl_tc_cold_request(struct drm_i915_private *i915, bool block)
+tgl_tc_cold_request(struct intel_display *display, bool block)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u8 tries = 0;
 	int ret;
 
@@ -1813,31 +1797,31 @@ tgl_tc_cold_request(struct drm_i915_private *i915, bool block)
 }
 
 static void
-tgl_tc_cold_off_power_well_enable(struct drm_i915_private *i915,
+tgl_tc_cold_off_power_well_enable(struct intel_display *display,
 				  struct i915_power_well *power_well)
 {
-	tgl_tc_cold_request(i915, true);
+	tgl_tc_cold_request(display, true);
 }
 
 static void
-tgl_tc_cold_off_power_well_disable(struct drm_i915_private *i915,
+tgl_tc_cold_off_power_well_disable(struct intel_display *display,
 				   struct i915_power_well *power_well)
 {
-	tgl_tc_cold_request(i915, false);
+	tgl_tc_cold_request(display, false);
 }
 
 static void
-tgl_tc_cold_off_power_well_sync_hw(struct drm_i915_private *i915,
+tgl_tc_cold_off_power_well_sync_hw(struct intel_display *display,
 				   struct i915_power_well *power_well)
 {
 	if (intel_power_well_refcount(power_well) > 0)
-		tgl_tc_cold_off_power_well_enable(i915, power_well);
+		tgl_tc_cold_off_power_well_enable(display, power_well);
 	else
-		tgl_tc_cold_off_power_well_disable(i915, power_well);
+		tgl_tc_cold_off_power_well_disable(display, power_well);
 }
 
 static bool
-tgl_tc_cold_off_power_well_is_enabled(struct drm_i915_private *dev_priv,
+tgl_tc_cold_off_power_well_is_enabled(struct intel_display *display,
 				      struct i915_power_well *power_well)
 {
 	/*
@@ -1847,17 +1831,18 @@ tgl_tc_cold_off_power_well_is_enabled(struct drm_i915_private *dev_priv,
 	return intel_power_well_refcount(power_well);
 }
 
-static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
+static void xelpdp_aux_power_well_enable(struct intel_display *display,
 					 struct i915_power_well *power_well)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
-	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
+	enum phy phy = icl_aux_pw_to_phy(display, power_well);
 
 	if (intel_phy_is_tc(dev_priv, phy))
-		icl_tc_port_assert_ref_held(dev_priv, power_well,
-					    aux_ch_to_digital_port(dev_priv, aux_ch));
+		icl_tc_port_assert_ref_held(display, power_well,
+					    aux_ch_to_digital_port(display, aux_ch));
 
-	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch),
+	intel_de_rmw(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
 
@@ -1870,57 +1855,57 @@ static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	usleep_range(600, 1200);
 }
 
-static void xelpdp_aux_power_well_disable(struct drm_i915_private *dev_priv,
+static void xelpdp_aux_power_well_disable(struct intel_display *display,
 					  struct i915_power_well *power_well)
 {
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
 
-	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch),
+	intel_de_rmw(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
 		     0);
 	usleep_range(10, 30);
 }
 
-static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
+static bool xelpdp_aux_power_well_enabled(struct intel_display *display,
 					  struct i915_power_well *power_well)
 {
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
 
-	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch)) &
+	return intel_de_read(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch)) &
 		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
 }
 
-static void xe2lpd_pica_power_well_enable(struct drm_i915_private *dev_priv,
+static void xe2lpd_pica_power_well_enable(struct intel_display *display,
 					  struct i915_power_well *power_well)
 {
-	intel_de_write(dev_priv, XE2LPD_PICA_PW_CTL,
+	intel_de_write(display, XE2LPD_PICA_PW_CTL,
 		       XE2LPD_PICA_CTL_POWER_REQUEST);
 
-	if (intel_de_wait_for_set(dev_priv, XE2LPD_PICA_PW_CTL,
+	if (intel_de_wait_for_set(display, XE2LPD_PICA_PW_CTL,
 				  XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
-		drm_dbg_kms(&dev_priv->drm, "pica power well enable timeout\n");
+		drm_dbg_kms(display->drm, "pica power well enable timeout\n");
 
-		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when enabled");
+		drm_WARN(display->drm, 1, "Power well PICA timeout when enabled");
 	}
 }
 
-static void xe2lpd_pica_power_well_disable(struct drm_i915_private *dev_priv,
+static void xe2lpd_pica_power_well_disable(struct intel_display *display,
 					   struct i915_power_well *power_well)
 {
-	intel_de_write(dev_priv, XE2LPD_PICA_PW_CTL, 0);
+	intel_de_write(display, XE2LPD_PICA_PW_CTL, 0);
 
-	if (intel_de_wait_for_clear(dev_priv, XE2LPD_PICA_PW_CTL,
+	if (intel_de_wait_for_clear(display, XE2LPD_PICA_PW_CTL,
 				    XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
-		drm_dbg_kms(&dev_priv->drm, "pica power well disable timeout\n");
+		drm_dbg_kms(display->drm, "pica power well disable timeout\n");
 
-		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when disabled");
+		drm_WARN(display->drm, 1, "Power well PICA timeout when disabled");
 	}
 }
 
-static bool xe2lpd_pica_power_well_enabled(struct drm_i915_private *dev_priv,
+static bool xe2lpd_pica_power_well_enabled(struct intel_display *display,
 					   struct i915_power_well *power_well)
 {
-	return intel_de_read(dev_priv, XE2LPD_PICA_PW_CTL) &
+	return intel_de_read(display, XE2LPD_PICA_PW_CTL) &
 		XE2LPD_PICA_CTL_POWER_STATUS;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index 0c12ca46dfc8..338379dae44c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -10,7 +10,6 @@
 #include "intel_display_power.h"
 #include "intel_dpio_phy.h"
 
-struct drm_i915_private;
 struct i915_power_well_ops;
 struct intel_display;
 struct intel_encoder;
@@ -127,23 +126,23 @@ struct i915_power_well {
 	u8 instance_idx;
 };
 
-struct i915_power_well *lookup_power_well(struct drm_i915_private *i915,
+struct i915_power_well *lookup_power_well(struct intel_display *display,
 					  enum i915_power_well_id id);
 
-void intel_power_well_enable(struct drm_i915_private *i915,
+void intel_power_well_enable(struct intel_display *display,
 			     struct i915_power_well *power_well);
-void intel_power_well_disable(struct drm_i915_private *i915,
+void intel_power_well_disable(struct intel_display *display,
 			      struct i915_power_well *power_well);
-void intel_power_well_sync_hw(struct drm_i915_private *i915,
+void intel_power_well_sync_hw(struct intel_display *display,
 			      struct i915_power_well *power_well);
-void intel_power_well_get(struct drm_i915_private *i915,
+void intel_power_well_get(struct intel_display *display,
 			  struct i915_power_well *power_well);
-void intel_power_well_put(struct drm_i915_private *i915,
+void intel_power_well_put(struct intel_display *display,
 			  struct i915_power_well *power_well);
-bool intel_power_well_is_enabled(struct drm_i915_private *i915,
+bool intel_power_well_is_enabled(struct intel_display *display,
 				 struct i915_power_well *power_well);
 bool intel_power_well_is_enabled_cached(struct i915_power_well *power_well);
-bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
+bool intel_display_power_well_is_enabled(struct intel_display *display,
 					 enum i915_power_well_id power_well_id);
 bool intel_power_well_is_always_on(struct i915_power_well *power_well);
 const char *intel_power_well_name(struct i915_power_well *power_well);
@@ -152,7 +151,7 @@ int intel_power_well_refcount(struct i915_power_well *power_well);
 
 void chv_phy_powergate_lanes(struct intel_encoder *encoder,
 			     bool override, unsigned int mask);
-bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
+bool chv_phy_powergate_ch(struct intel_display *display, enum dpio_phy phy,
 			  enum dpio_channel ch, bool override);
 
 void gen9_enable_dc5(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 0f12f2c3467c..eb3053ff9afa 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -855,6 +855,7 @@ void chv_data_lane_soft_reset(struct intel_encoder *encoder,
 void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -871,7 +872,7 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	 */
 	if (ch == DPIO_CH0 && pipe == PIPE_B)
 		dig_port->release_cl2_override =
-			!chv_phy_powergate_ch(dev_priv, DPIO_PHY0, DPIO_CH1, true);
+			!chv_phy_powergate_ch(display, DPIO_PHY0, DPIO_CH1, true);
 
 	chv_phy_powergate_lanes(encoder, true, lane_mask);
 
@@ -1013,11 +1014,11 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 
 void chv_phy_release_cl2_override(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	if (dig_port->release_cl2_override) {
-		chv_phy_powergate_ch(dev_priv, DPIO_PHY0, DPIO_CH1, false);
+		chv_phy_powergate_ch(display, DPIO_PHY0, DPIO_CH1, false);
 		dig_port->release_cl2_override = false;
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index b368584f481d..f6e68a0e3b6d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -349,7 +349,7 @@ static bool hdcp_key_loadable(struct intel_display *display)
 
 	/* PG1 (power well #1) needs to be enabled */
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		enabled = intel_display_power_well_is_enabled(i915, id);
+		enabled = intel_display_power_well_is_enabled(display, id);
 
 	/*
 	 * Another req for hdcp key loadability is enabled state of pll for
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 093fe37a3983..244865e0cc57 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -134,7 +134,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	 */
 	if (!pll_enabled) {
 		release_cl_override = display->platform.cherryview &&
-			!chv_phy_powergate_ch(dev_priv, phy, ch, true);
+			!chv_phy_powergate_ch(display, phy, ch, true);
 
 		if (vlv_force_pll_on(dev_priv, pipe, vlv_get_dpll(dev_priv))) {
 			drm_err(display->drm,
@@ -163,7 +163,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 		vlv_force_pll_off(dev_priv, pipe);
 
 		if (release_cl_override)
-			chv_phy_powergate_ch(dev_priv, phy, ch, false);
+			chv_phy_powergate_ch(display, phy, ch, false);
 	}
 }
 
-- 
2.39.5

