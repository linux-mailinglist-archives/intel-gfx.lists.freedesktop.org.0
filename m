Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F1D96F6D3
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 16:33:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 771CB10EA5A;
	Fri,  6 Sep 2024 14:33:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oDKxXGbY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911A710EA5A;
 Fri,  6 Sep 2024 14:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725633198; x=1757169198;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eXorUYslhE1L4WWJE6Vd1fcsYuu1VTXueqsdwc/e4z4=;
 b=oDKxXGbYrF8oMcMl0CFd3LJwst2YyH3AXt1XifVI/aHPpkgpwalHOVAX
 lF00om8V/MDL5n16QtEerI2xJZp4e2QYVVjg4U49rCGF59c5t1hexBoxd
 +IrDfx4DPaS82lFgqy6aXkCCq7WMduWRZVBgGCqFD+/rUvpJB7sE7rnec
 EmeDfjL5osA+ZlrVW0ZSBbZ5aSjqc03GC+eQ9fmQHxT3uboIBvmsVk9H+
 89er4UzYukkG7qFmBj6VVIb9+t8V+pEJiLufHLAMqvgDF81rlewPc5mZU
 1nK+zV5jEUEMv88Y9I/StlpJcV8XFpUOgzrCp1J6aG7X2xZFTGGHez6o4 A==;
X-CSE-ConnectionGUID: cVxvGAP4TA+52QZ6UrXeRA==
X-CSE-MsgGUID: bA8pBXIlQpqBsSS+/XK8HA==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="41903064"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="41903064"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 07:33:18 -0700
X-CSE-ConnectionGUID: VCedjKMESOiLLXdvDUKE8Q==
X-CSE-MsgGUID: mvxlyrDxRtiXil/4zacXFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="66003928"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Sep 2024 07:33:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2024 17:33:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/6] drm/i915/power: Convert low level DC state code to
 intel_display
Date: Fri,  6 Sep 2024 17:33:03 +0300
Message-ID: <20240906143306.15937-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

struct intel_display will replace struct drm_i915_private as
the main thing for display code. Convert the lower level
DC state code to use it (as much as possible at this stage).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_power.c    |  41 ++--
 .../i915/display/intel_display_power_well.c   | 199 ++++++++++--------
 .../i915/display/intel_display_power_well.h   |  15 +-
 3 files changed, 139 insertions(+), 116 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index eb3e2a56af1d..86ac494ed33b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1421,7 +1421,7 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
-	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
+	gen9_set_dc_state(display, DC_STATE_DISABLE);
 
 	/* enable PCH reset handshake */
 	intel_pch_reset_handshake(dev_priv, !HAS_PCH_NOP(dev_priv));
@@ -1457,7 +1457,7 @@ static void skl_display_core_uninit(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	gen9_disable_dc_states(dev_priv);
+	gen9_disable_dc_states(display);
 	/* TODO: disable DMC program */
 
 	gen9_dbuf_disable(dev_priv);
@@ -1489,7 +1489,7 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
-	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
+	gen9_set_dc_state(display, DC_STATE_DISABLE);
 
 	/*
 	 * NDE_RSTWRN_OPT RST PCH Handshake En must always be 0b on BXT
@@ -1527,7 +1527,7 @@ static void bxt_display_core_uninit(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	gen9_disable_dc_states(dev_priv);
+	gen9_disable_dc_states(display);
 	/* TODO: disable DMC program */
 
 	gen9_dbuf_disable(dev_priv);
@@ -1632,7 +1632,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
-	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
+	gen9_set_dc_state(display, DC_STATE_DISABLE);
 
 	/* Wa_14011294188:ehl,jsl,tgl,rkl,adl-s */
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP &&
@@ -1717,7 +1717,7 @@ static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	gen9_disable_dc_states(dev_priv);
+	gen9_disable_dc_states(display);
 	intel_dmc_disable_program(dev_priv);
 
 	/* 1. Disable all display engine functions -> aready done */
@@ -2232,9 +2232,11 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 
 void intel_display_power_suspend_late(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
+
 	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
 	    IS_BROXTON(i915)) {
-		bxt_enable_dc9(i915);
+		bxt_enable_dc9(display);
 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 		hsw_enable_pc8(i915);
 	}
@@ -2246,10 +2248,12 @@ void intel_display_power_suspend_late(struct drm_i915_private *i915)
 
 void intel_display_power_resume_early(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
+
 	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
 	    IS_BROXTON(i915)) {
-		gen9_sanitize_dc_state(i915);
-		bxt_disable_dc9(i915);
+		gen9_sanitize_dc_state(display);
+		bxt_disable_dc9(display);
 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 		hsw_disable_pc8(i915);
 	}
@@ -2261,12 +2265,14 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
 
 void intel_display_power_suspend(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
+
 	if (DISPLAY_VER(i915) >= 11) {
 		icl_display_core_uninit(i915);
-		bxt_enable_dc9(i915);
+		bxt_enable_dc9(display);
 	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
 		bxt_display_core_uninit(i915);
-		bxt_enable_dc9(i915);
+		bxt_enable_dc9(display);
 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 		hsw_enable_pc8(i915);
 	}
@@ -2274,23 +2280,24 @@ void intel_display_power_suspend(struct drm_i915_private *i915)
 
 void intel_display_power_resume(struct drm_i915_private *i915)
 {
-	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct intel_display *display = &i915->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 
 	if (DISPLAY_VER(i915) >= 11) {
-		bxt_disable_dc9(i915);
+		bxt_disable_dc9(display);
 		icl_display_core_init(i915, true);
 		if (intel_dmc_has_payload(i915)) {
 			if (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC6)
-				skl_enable_dc6(i915);
+				skl_enable_dc6(display);
 			else if (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC5)
-				gen9_enable_dc5(i915);
+				gen9_enable_dc5(display);
 		}
 	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
-		bxt_disable_dc9(i915);
+		bxt_disable_dc9(display);
 		bxt_display_core_init(i915, true);
 		if (intel_dmc_has_payload(i915) &&
 		    (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
-			gen9_enable_dc5(i915);
+			gen9_enable_dc5(display);
 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 		hsw_disable_pc8(i915);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 7b40a5b88214..1f0084ca6248 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -601,20 +601,22 @@ static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
 	return (val & mask) == mask;
 }
 
-static void assert_can_enable_dc9(struct drm_i915_private *dev_priv)
+static void assert_can_enable_dc9(struct intel_display *display)
 {
-	drm_WARN_ONCE(&dev_priv->drm,
-		      (intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_DC9),
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	drm_WARN_ONCE(display->drm,
+		      (intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_DC9),
 		      "DC9 already programmed to be enabled.\n");
-	drm_WARN_ONCE(&dev_priv->drm,
-		      intel_de_read(dev_priv, DC_STATE_EN) &
+	drm_WARN_ONCE(display->drm,
+		      intel_de_read(display, DC_STATE_EN) &
 		      DC_STATE_EN_UPTO_DC5,
 		      "DC5 still not disabled to enable DC9.\n");
-	drm_WARN_ONCE(&dev_priv->drm,
-		      intel_de_read(dev_priv, HSW_PWR_WELL_CTL2) &
+	drm_WARN_ONCE(display->drm,
+		      intel_de_read(display, HSW_PWR_WELL_CTL2) &
 		      HSW_PWR_WELL_CTL_REQ(SKL_PW_CTL_IDX_PW_2),
 		      "Power well 2 on.\n");
-	drm_WARN_ONCE(&dev_priv->drm, intel_irqs_enabled(dev_priv),
+	drm_WARN_ONCE(display->drm, intel_irqs_enabled(dev_priv),
 		      "Interrupts not disabled yet.\n");
 
 	 /*
@@ -626,12 +628,14 @@ static void assert_can_enable_dc9(struct drm_i915_private *dev_priv)
 	  */
 }
 
-static void assert_can_disable_dc9(struct drm_i915_private *dev_priv)
+static void assert_can_disable_dc9(struct intel_display *display)
 {
-	drm_WARN_ONCE(&dev_priv->drm, intel_irqs_enabled(dev_priv),
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	drm_WARN_ONCE(display->drm, intel_irqs_enabled(dev_priv),
 		      "Interrupts not disabled yet.\n");
-	drm_WARN_ONCE(&dev_priv->drm,
-		      intel_de_read(dev_priv, DC_STATE_EN) &
+	drm_WARN_ONCE(display->drm,
+		      intel_de_read(display, DC_STATE_EN) &
 		      DC_STATE_EN_UPTO_DC5,
 		      "DC5 still not disabled.\n");
 
@@ -644,14 +648,14 @@ static void assert_can_disable_dc9(struct drm_i915_private *dev_priv)
 	  */
 }
 
-static void gen9_write_dc_state(struct drm_i915_private *dev_priv,
+static void gen9_write_dc_state(struct intel_display *display,
 				u32 state)
 {
 	int rewrites = 0;
 	int rereads = 0;
 	u32 v;
 
-	intel_de_write(dev_priv, DC_STATE_EN, state);
+	intel_de_write(display, DC_STATE_EN, state);
 
 	/* It has been observed that disabling the dc6 state sometimes
 	 * doesn't stick and dmc keeps returning old value. Make sure
@@ -659,10 +663,10 @@ static void gen9_write_dc_state(struct drm_i915_private *dev_priv,
 	 * we are confident that state is exactly what we want.
 	 */
 	do  {
-		v = intel_de_read(dev_priv, DC_STATE_EN);
+		v = intel_de_read(display, DC_STATE_EN);
 
 		if (v != state) {
-			intel_de_write(dev_priv, DC_STATE_EN, state);
+			intel_de_write(display, DC_STATE_EN, state);
 			rewrites++;
 			rereads = 0;
 		} else if (rereads++ > 5) {
@@ -672,27 +676,28 @@ static void gen9_write_dc_state(struct drm_i915_private *dev_priv,
 	} while (rewrites < 100);
 
 	if (v != state)
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Writing dc state to 0x%x failed, now 0x%x\n",
 			state, v);
 
 	/* Most of the times we need one retry, avoid spam */
 	if (rewrites > 1)
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Rewrote dc state to 0x%x %d times\n",
 			    state, rewrites);
 }
 
-static u32 gen9_dc_mask(struct drm_i915_private *dev_priv)
+static u32 gen9_dc_mask(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 mask;
 
 	mask = DC_STATE_EN_UPTO_DC5;
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
 					  | DC_STATE_EN_DC9;
-	else if (DISPLAY_VER(dev_priv) == 11)
+	else if (DISPLAY_VER(display) == 11)
 		mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
 	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		mask |= DC_STATE_EN_DC9;
@@ -702,17 +707,17 @@ static u32 gen9_dc_mask(struct drm_i915_private *dev_priv)
 	return mask;
 }
 
-void gen9_sanitize_dc_state(struct drm_i915_private *i915)
+void gen9_sanitize_dc_state(struct intel_display *display)
 {
-	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	u32 val;
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	val = intel_de_read(i915, DC_STATE_EN) & gen9_dc_mask(i915);
+	val = intel_de_read(display, DC_STATE_EN) & gen9_dc_mask(display);
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Resetting DC state tracking from %02x to %02x\n",
 		    power_domains->dc_state, val);
 	power_domains->dc_state = val;
@@ -720,7 +725,7 @@ void gen9_sanitize_dc_state(struct drm_i915_private *i915)
 
 /**
  * gen9_set_dc_state - set target display C power state
- * @dev_priv: i915 device instance
+ * @display: display instance
  * @state: target DC power state
  * - DC_STATE_DISABLE
  * - DC_STATE_EN_UPTO_DC5
@@ -741,70 +746,71 @@ void gen9_sanitize_dc_state(struct drm_i915_private *i915)
  * back on and register state is restored. This is guaranteed by the MMIO write
  * to DC_STATE_EN blocking until the state is restored.
  */
-void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
+void gen9_set_dc_state(struct intel_display *display, u32 state)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	u32 val;
 	u32 mask;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	if (drm_WARN_ON_ONCE(&dev_priv->drm,
+	if (drm_WARN_ON_ONCE(display->drm,
 			     state & ~power_domains->allowed_dc_mask))
 		state &= power_domains->allowed_dc_mask;
 
-	val = intel_de_read(dev_priv, DC_STATE_EN);
-	mask = gen9_dc_mask(dev_priv);
-	drm_dbg_kms(&dev_priv->drm, "Setting DC state from %02x to %02x\n",
+	val = intel_de_read(display, DC_STATE_EN);
+	mask = gen9_dc_mask(display);
+	drm_dbg_kms(display->drm, "Setting DC state from %02x to %02x\n",
 		    val & mask, state);
 
 	/* Check if DMC is ignoring our DC state requests */
 	if ((val & mask) != power_domains->dc_state)
-		drm_err(&dev_priv->drm, "DC state mismatch (0x%x -> 0x%x)\n",
+		drm_err(display->drm, "DC state mismatch (0x%x -> 0x%x)\n",
 			power_domains->dc_state, val & mask);
 
 	val &= ~mask;
 	val |= state;
 
-	gen9_write_dc_state(dev_priv, val);
+	gen9_write_dc_state(display, val);
 
 	power_domains->dc_state = val & mask;
 }
 
-static void tgl_enable_dc3co(struct drm_i915_private *dev_priv)
+static void tgl_enable_dc3co(struct intel_display *display)
 {
-	drm_dbg_kms(&dev_priv->drm, "Enabling DC3CO\n");
-	gen9_set_dc_state(dev_priv, DC_STATE_EN_DC3CO);
+	drm_dbg_kms(display->drm, "Enabling DC3CO\n");
+	gen9_set_dc_state(display, DC_STATE_EN_DC3CO);
 }
 
-static void tgl_disable_dc3co(struct drm_i915_private *dev_priv)
+static void tgl_disable_dc3co(struct intel_display *display)
 {
-	drm_dbg_kms(&dev_priv->drm, "Disabling DC3CO\n");
-	intel_de_rmw(dev_priv, DC_STATE_EN, DC_STATE_DC3CO_STATUS, 0);
-	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
+	drm_dbg_kms(display->drm, "Disabling DC3CO\n");
+	intel_de_rmw(display, DC_STATE_EN, DC_STATE_DC3CO_STATUS, 0);
+	gen9_set_dc_state(display, DC_STATE_DISABLE);
 	/*
 	 * Delay of 200us DC3CO Exit time B.Spec 49196
 	 */
 	usleep_range(200, 210);
 }
 
-static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
+static void assert_can_enable_dc5(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum i915_power_well_id high_pg;
 
 	/* Power wells at this level and above must be disabled for DC5 entry */
-	if (DISPLAY_VER(dev_priv) == 12)
+	if (DISPLAY_VER(display) == 12)
 		high_pg = ICL_DISP_PW_3;
 	else
 		high_pg = SKL_DISP_PW_2;
 
-	drm_WARN_ONCE(&dev_priv->drm,
+	drm_WARN_ONCE(display->drm,
 		      intel_display_power_well_is_enabled(dev_priv, high_pg),
 		      "Power wells above platform's DC5 limit still enabled.\n");
 
-	drm_WARN_ONCE(&dev_priv->drm,
-		      (intel_de_read(dev_priv, DC_STATE_EN) &
+	drm_WARN_ONCE(display->drm,
+		      (intel_de_read(display, DC_STATE_EN) &
 		       DC_STATE_EN_UPTO_DC5),
 		      "DC5 already programmed to be enabled.\n");
 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
@@ -812,60 +818,66 @@ static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
 	assert_dmc_loaded(dev_priv);
 }
 
-void gen9_enable_dc5(struct drm_i915_private *dev_priv)
+void gen9_enable_dc5(struct intel_display *display)
 {
-	assert_can_enable_dc5(dev_priv);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	drm_dbg_kms(&dev_priv->drm, "Enabling DC5\n");
+	assert_can_enable_dc5(display);
+
+	drm_dbg_kms(display->drm, "Enabling DC5\n");
 
 	/* Wa Display #1183: skl,kbl,cfl */
-	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
-		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
+	if (DISPLAY_VER(display) == 9 && !IS_BROXTON(dev_priv))
+		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
 			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
 
-	intel_dmc_wl_enable(&dev_priv->display);
+	intel_dmc_wl_enable(display);
 
-	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC5);
+	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC5);
 }
 
-static void assert_can_enable_dc6(struct drm_i915_private *dev_priv)
+static void assert_can_enable_dc6(struct intel_display *display)
 {
-	drm_WARN_ONCE(&dev_priv->drm,
-		      (intel_de_read(dev_priv, UTIL_PIN_CTL) &
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	drm_WARN_ONCE(display->drm,
+		      (intel_de_read(display, UTIL_PIN_CTL) &
 		       (UTIL_PIN_ENABLE | UTIL_PIN_MODE_MASK)) ==
 		      (UTIL_PIN_ENABLE | UTIL_PIN_MODE_PWM),
 		      "Utility pin enabled in PWM mode\n");
-	drm_WARN_ONCE(&dev_priv->drm,
-		      (intel_de_read(dev_priv, DC_STATE_EN) &
+	drm_WARN_ONCE(display->drm,
+		      (intel_de_read(display, DC_STATE_EN) &
 		       DC_STATE_EN_UPTO_DC6),
 		      "DC6 already programmed to be enabled.\n");
 
 	assert_dmc_loaded(dev_priv);
 }
 
-void skl_enable_dc6(struct drm_i915_private *dev_priv)
+void skl_enable_dc6(struct intel_display *display)
 {
-	assert_can_enable_dc6(dev_priv);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	drm_dbg_kms(&dev_priv->drm, "Enabling DC6\n");
+	assert_can_enable_dc6(display);
+
+	drm_dbg_kms(display->drm, "Enabling DC6\n");
 
 	/* Wa Display #1183: skl,kbl,cfl */
-	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
-		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
+	if (DISPLAY_VER(display) == 9 && !IS_BROXTON(dev_priv))
+		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
 			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
 
-	intel_dmc_wl_enable(&dev_priv->display);
+	intel_dmc_wl_enable(display);
 
-	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
+	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
 }
 
-void bxt_enable_dc9(struct drm_i915_private *dev_priv)
+void bxt_enable_dc9(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	assert_can_enable_dc9(dev_priv);
+	assert_can_enable_dc9(display);
 
-	drm_dbg_kms(&dev_priv->drm, "Enabling DC9\n");
+	drm_dbg_kms(display->drm, "Enabling DC9\n");
 	/*
 	 * Power sequencer reset is not needed on
 	 * platforms with South Display Engine on PCH,
@@ -873,18 +885,16 @@ void bxt_enable_dc9(struct drm_i915_private *dev_priv)
 	 */
 	if (!HAS_PCH_SPLIT(dev_priv))
 		intel_pps_reset_all(display);
-	gen9_set_dc_state(dev_priv, DC_STATE_EN_DC9);
+	gen9_set_dc_state(display, DC_STATE_EN_DC9);
 }
 
-void bxt_disable_dc9(struct drm_i915_private *dev_priv)
+void bxt_disable_dc9(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	assert_can_disable_dc9(display);
 
-	assert_can_disable_dc9(dev_priv);
+	drm_dbg_kms(display->drm, "Disabling DC9\n");
 
-	drm_dbg_kms(&dev_priv->drm, "Disabling DC9\n");
-
-	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
+	gen9_set_dc_state(display, DC_STATE_DISABLE);
 
 	intel_pps_unlock_regs_wa(display);
 }
@@ -949,8 +959,10 @@ static void bxt_verify_dpio_phy_power_wells(struct drm_i915_private *dev_priv)
 static bool gen9_dc_off_power_well_enabled(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well)
 {
-	return ((intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_DC3CO) == 0 &&
-		(intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
+	struct intel_display *display = &dev_priv->display;
+
+	return ((intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_DC3CO) == 0 &&
+		(intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
 }
 
 static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
@@ -965,23 +977,23 @@ static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
 		 enabled_dbuf_slices);
 }
 
-void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
+void gen9_disable_dc_states(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_cdclk_config cdclk_config = {};
 
 	if (power_domains->target_dc_state == DC_STATE_EN_DC3CO) {
-		tgl_disable_dc3co(dev_priv);
+		tgl_disable_dc3co(display);
 		return;
 	}
 
-	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
+	gen9_set_dc_state(display, DC_STATE_DISABLE);
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	intel_dmc_wl_disable(&dev_priv->display);
+	intel_dmc_wl_disable(display);
 
 	intel_cdclk_get_cdclk(display, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
@@ -994,7 +1006,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		bxt_verify_dpio_phy_power_wells(dev_priv);
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		/*
 		 * DMC retains HW context only for port A, the other combo
 		 * PHY's HW context for port B is lost after DC transitions,
@@ -1006,26 +1018,29 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 static void gen9_dc_off_power_well_enable(struct drm_i915_private *dev_priv,
 					  struct i915_power_well *power_well)
 {
-	gen9_disable_dc_states(dev_priv);
+	struct intel_display *display = &dev_priv->display;
+
+	gen9_disable_dc_states(display);
 }
 
 static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 
 	if (!intel_dmc_has_payload(dev_priv))
 		return;
 
 	switch (power_domains->target_dc_state) {
 	case DC_STATE_EN_DC3CO:
-		tgl_enable_dc3co(dev_priv);
+		tgl_enable_dc3co(display);
 		break;
 	case DC_STATE_EN_UPTO_DC6:
-		skl_enable_dc6(dev_priv);
+		skl_enable_dc6(display);
 		break;
 	case DC_STATE_EN_UPTO_DC5:
-		gen9_enable_dc5(dev_priv);
+		gen9_enable_dc5(display);
 		break;
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index 9357a9a73c06..93559f7c6100 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -12,6 +12,7 @@
 
 struct drm_i915_private;
 struct i915_power_well_ops;
+struct intel_display;
 struct intel_encoder;
 
 #define for_each_power_well(__dev_priv, __power_well)				\
@@ -154,13 +155,13 @@ void chv_phy_powergate_lanes(struct intel_encoder *encoder,
 bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 			  enum dpio_channel ch, bool override);
 
-void gen9_enable_dc5(struct drm_i915_private *dev_priv);
-void skl_enable_dc6(struct drm_i915_private *dev_priv);
-void gen9_sanitize_dc_state(struct drm_i915_private *dev_priv);
-void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state);
-void gen9_disable_dc_states(struct drm_i915_private *dev_priv);
-void bxt_enable_dc9(struct drm_i915_private *dev_priv);
-void bxt_disable_dc9(struct drm_i915_private *dev_priv);
+void gen9_enable_dc5(struct intel_display *display);
+void skl_enable_dc6(struct intel_display *display);
+void gen9_sanitize_dc_state(struct intel_display *display);
+void gen9_set_dc_state(struct intel_display *display, u32 state);
+void gen9_disable_dc_states(struct intel_display *display);
+void bxt_enable_dc9(struct intel_display *display);
+void bxt_disable_dc9(struct intel_display *display);
 
 extern const struct i915_power_well_ops i9xx_always_on_power_well_ops;
 extern const struct i915_power_well_ops chv_pipe_power_well_ops;
-- 
2.44.2

