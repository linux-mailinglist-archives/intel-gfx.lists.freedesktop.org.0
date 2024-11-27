Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED969DAC3D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 18:06:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E654B10EB8B;
	Wed, 27 Nov 2024 17:06:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DSLX927Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BF9310EB80;
 Wed, 27 Nov 2024 17:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732727205; x=1764263205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nX9W9dL3J9pAEEB/S8wJX3DjUMLPqEpMKFo63zhHGAo=;
 b=DSLX927QP4CNuoYtCFAH2Ya2US7N1PWL5dIWOGze8n5ZUbDx4UM0d3+4
 P9LrloSscG7F9kX1eYL1GKIOYpWKiFcYTOasMpW5mMSQyTluIzLExvSCu
 ZsuMnBXMsn9GGx+z4d1XRfmJSfLKfNujzyTwd9BuxZoHAgNOvzTT5ijts
 DFK8o8E4zSYPggCzJbjKy4GwsMi1xJwnAsQSd6SWuWcCfz03B09ul8mbl
 9lmn0PIX2+WRdx3iAZvAQKCk24FrXtf6hLKdLVqqkqirKHo4iQKOWZZpb
 K0lKG+rJYyBtsMoXXhFxlwhUvYYVkV1ygE9dn7kxPyw5dnY6oWae86cmU A==;
X-CSE-ConnectionGUID: Uu3wSOU4Rs2iWRwjOl0AQQ==
X-CSE-MsgGUID: YKYVGUkCTAWdDLco5eML+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="36729303"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="36729303"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:06:44 -0800
X-CSE-ConnectionGUID: ec0HGg4KTyW+UaiH8dPFHA==
X-CSE-MsgGUID: 6iH9bYFbQkOK33smdNUCAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="129503501"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:06:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 6/7] drm/i915/display: convert high level power interfaces to
 struct intel_display
Date: Wed, 27 Nov 2024 19:06:07 +0200
Message-Id: <3adba2f8d03d178a5b7c971fb41d9644fb24424d.1732727056.git.jani.nikula@intel.com>
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
for display. Convert the high level interfaces (init, cleanup, suspend,
resume, etc.) of intel_display_power.c over to it. The actual power
get/put etc. are left for follow-up.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  8 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  3 +-
 .../drm/i915/display/intel_display_power.c    | 78 +++++++++----------
 .../drm/i915/display/intel_display_power.h    | 31 ++++----
 .../drm/i915/display/intel_modeset_setup.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  6 +-
 drivers/gpu/drm/i915/i915_driver.c            | 32 +++++---
 drivers/gpu/drm/xe/display/xe_display.c       | 28 ++++---
 8 files changed, 98 insertions(+), 90 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 2a6301b8674a..2ef5aeb04bd5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -226,13 +226,13 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 		goto cleanup_bios;
 
 	/* FIXME: completely on the wrong abstraction layer */
-	ret = intel_power_domains_init(i915);
+	ret = intel_power_domains_init(display);
 	if (ret < 0)
 		goto cleanup_vga;
 
 	intel_pmdemand_init_early(i915);
 
-	intel_power_domains_init_hw(i915, false);
+	intel_power_domains_init_hw(display, false);
 
 	if (!HAS_DISPLAY(i915))
 		return 0;
@@ -273,7 +273,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 
 cleanup_vga_client_pw_domain_dmc:
 	intel_dmc_fini(display);
-	intel_power_domains_driver_remove(i915);
+	intel_power_domains_driver_remove(display);
 cleanup_vga:
 	intel_vga_unregister(display);
 cleanup_bios:
@@ -624,7 +624,7 @@ void intel_display_driver_remove_nogem(struct drm_i915_private *i915)
 
 	intel_dmc_fini(display);
 
-	intel_power_domains_driver_remove(i915);
+	intel_power_domains_driver_remove(display);
 
 	intel_vga_unregister(display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index cb79c2796e3a..069043f9d894 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1423,7 +1423,6 @@ static void intel_display_vblank_dc_work(struct work_struct *work)
 {
 	struct intel_display *display =
 		container_of(work, typeof(*display), irq.vblank_dc_work);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int vblank_wa_num_pipes = READ_ONCE(display->irq.vblank_wa_num_pipes);
 
 	/*
@@ -1432,7 +1431,7 @@ static void intel_display_vblank_dc_work(struct work_struct *work)
 	 * PSR code. If DC3CO is taken into use we need take that into account
 	 * here as well.
 	 */
-	intel_display_power_set_target_dc_state(i915, vblank_wa_num_pipes ? DC_STATE_DISABLE :
+	intel_display_power_set_target_dc_state(display, vblank_wa_num_pipes ? DC_STATE_DISABLE :
 						DC_STATE_EN_UPTO_DC6);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 957c66ee77d1..f24c30e95fa3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -281,17 +281,16 @@ sanitize_target_dc_state(struct intel_display *display,
 
 /**
  * intel_display_power_set_target_dc_state - Set target dc state.
- * @dev_priv: i915 device
+ * @display: display device
  * @state: state which needs to be set as target_dc_state.
  *
  * This function set the "DC off" power well target_dc_state,
  * based upon this target_dc_stste, "DC off" power well will
  * enable desired DC state.
  */
-void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
+void intel_display_power_set_target_dc_state(struct intel_display *display,
 					     u32 state)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i915_power_well *power_well;
 	bool dc_off_enabled;
 	struct i915_power_domains *power_domains = &display->power.domains;
@@ -1011,14 +1010,13 @@ static u32 get_allowed_dc_mask(struct intel_display *display, int enable_dc)
 
 /**
  * intel_power_domains_init - initializes the power domain structures
- * @dev_priv: i915 device instance
+ * @display: display device instance
  *
  * Initializes the power domain structures for @dev_priv depending upon the
  * supported platform.
  */
-int intel_power_domains_init(struct drm_i915_private *dev_priv)
+int intel_power_domains_init(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i915_power_domains *power_domains = &display->power.domains;
 
 	display->params.disable_power_well =
@@ -1039,14 +1037,12 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
 
 /**
  * intel_power_domains_cleanup - clean up power domains resources
- * @dev_priv: i915 device instance
+ * @display: display device instance
  *
  * Release any resources acquired by intel_power_domains_init()
  */
-void intel_power_domains_cleanup(struct drm_i915_private *dev_priv)
+void intel_power_domains_cleanup(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	intel_display_power_map_cleanup(&display->power.domains);
 }
 
@@ -1928,7 +1924,7 @@ static void intel_power_domains_verify_state(struct intel_display *display);
 
 /**
  * intel_power_domains_init_hw - initialize hardware power domain state
- * @i915: i915 device instance
+ * @display: display device instance
  * @resume: Called from resume code paths or not
  *
  * This function initializes the hardware power domain state and enables all
@@ -1942,9 +1938,9 @@ static void intel_power_domains_verify_state(struct intel_display *display);
  * intel_power_domains_enable()) and must be paired with
  * intel_power_domains_driver_remove().
  */
-void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
+void intel_power_domains_init_hw(struct intel_display *display, bool resume)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 
 	power_domains->initializing = true;
@@ -1996,7 +1992,7 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 
 /**
  * intel_power_domains_driver_remove - deinitialize hw power domain state
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * De-initializes the display power domain HW state. It also ensures that the
  * device stays powered up so that the driver can be reloaded.
@@ -2005,9 +2001,9 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
  * intel_power_domains_disable()) and must be paired with
  * intel_power_domains_init_hw().
  */
-void intel_power_domains_driver_remove(struct drm_i915_private *i915)
+void intel_power_domains_driver_remove(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref __maybe_unused =
 		fetch_and_zero(&display->power.domains.init_wakeref);
 
@@ -2026,7 +2022,7 @@ void intel_power_domains_driver_remove(struct drm_i915_private *i915)
 
 /**
  * intel_power_domains_sanitize_state - sanitize power domains state
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * Sanitize the power domains state during driver loading and system resume.
  * The function will disable all display power wells that BIOS has enabled
@@ -2034,9 +2030,8 @@ void intel_power_domains_driver_remove(struct drm_i915_private *i915)
  * on it by the time this function is called, after the state of all the
  * pipe, encoder, etc. HW resources have been sanitized).
  */
-void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
+void intel_power_domains_sanitize_state(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *power_well;
 
@@ -2058,7 +2053,7 @@ void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
 
 /**
  * intel_power_domains_enable - enable toggling of display power wells
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * Enable the ondemand enabling/disabling of the display power wells. Note that
  * power wells not belonging to POWER_DOMAIN_INIT are allowed to be toggled
@@ -2068,9 +2063,9 @@ void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
  * of display HW readout (which will acquire the power references reflecting
  * the current HW state).
  */
-void intel_power_domains_enable(struct drm_i915_private *i915)
+void intel_power_domains_enable(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref __maybe_unused =
 		fetch_and_zero(&display->power.domains.init_wakeref);
 
@@ -2080,14 +2075,14 @@ void intel_power_domains_enable(struct drm_i915_private *i915)
 
 /**
  * intel_power_domains_disable - disable toggling of display power wells
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * Disable the ondemand enabling/disabling of the display power wells. See
  * intel_power_domains_enable() for which power wells this call controls.
  */
-void intel_power_domains_disable(struct drm_i915_private *i915)
+void intel_power_domains_disable(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 
 	drm_WARN_ON(display->drm, power_domains->init_wakeref);
@@ -2099,7 +2094,7 @@ void intel_power_domains_disable(struct drm_i915_private *i915)
 
 /**
  * intel_power_domains_suspend - suspend power domain state
- * @i915: i915 device instance
+ * @display: display device instance
  * @s2idle: specifies whether we go to idle, or deeper sleep
  *
  * This function prepares the hardware power domain state before entering
@@ -2108,9 +2103,9 @@ void intel_power_domains_disable(struct drm_i915_private *i915)
  * It must be called with power domains already disabled (after a call to
  * intel_power_domains_disable()) and paired with intel_power_domains_resume().
  */
-void intel_power_domains_suspend(struct drm_i915_private *i915, bool s2idle)
+void intel_power_domains_suspend(struct intel_display *display, bool s2idle)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	intel_wakeref_t wakeref __maybe_unused =
 		fetch_and_zero(&power_domains->init_wakeref);
@@ -2154,7 +2149,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915, bool s2idle)
 
 /**
  * intel_power_domains_resume - resume power domain state
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * This function resume the hardware power domain state during system resume.
  *
@@ -2162,13 +2157,13 @@ void intel_power_domains_suspend(struct drm_i915_private *i915, bool s2idle)
  * intel_power_domains_enable()) and must be paired with
  * intel_power_domains_suspend().
  */
-void intel_power_domains_resume(struct drm_i915_private *i915)
+void intel_power_domains_resume(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 
 	if (power_domains->display_core_suspended) {
-		intel_power_domains_init_hw(i915, true);
+		intel_power_domains_init_hw(display, true);
 		power_domains->display_core_suspended = false;
 	} else {
 		drm_WARN_ON(display->drm, power_domains->init_wakeref);
@@ -2269,11 +2264,11 @@ static void intel_power_domains_verify_state(struct intel_display *display)
 
 #endif
 
-void intel_display_power_suspend_late(struct drm_i915_private *i915, bool s2idle)
+void intel_display_power_suspend_late(struct intel_display *display, bool s2idle)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	intel_power_domains_suspend(i915, s2idle);
+	intel_power_domains_suspend(display, s2idle);
 
 	if (DISPLAY_VER(display) >= 11 || display->platform.geminilake ||
 	    display->platform.broxton) {
@@ -2287,9 +2282,9 @@ void intel_display_power_suspend_late(struct drm_i915_private *i915, bool s2idle
 		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
 }
 
-void intel_display_power_resume_early(struct drm_i915_private *i915)
+void intel_display_power_resume_early(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (DISPLAY_VER(display) >= 11 || display->platform.geminilake ||
 	    display->platform.broxton) {
@@ -2303,13 +2298,11 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
 	if (INTEL_PCH_TYPE(i915) >= PCH_CNP && INTEL_PCH_TYPE(i915) < PCH_DG1)
 		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
 
-	intel_power_domains_resume(i915);
+	intel_power_domains_resume(display);
 }
 
-void intel_display_power_suspend(struct drm_i915_private *i915)
+void intel_display_power_suspend(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-
 	if (DISPLAY_VER(display) >= 11) {
 		icl_display_core_uninit(display);
 		bxt_enable_dc9(display);
@@ -2321,9 +2314,8 @@ void intel_display_power_suspend(struct drm_i915_private *i915)
 	}
 }
 
-void intel_display_power_resume(struct drm_i915_private *i915)
+void intel_display_power_resume(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	struct i915_power_domains *power_domains = &display->power.domains;
 
 	if (DISPLAY_VER(display) >= 11) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index c6bd4f122487..23110fbcee5b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -15,6 +15,7 @@ enum aux_ch;
 enum port;
 struct drm_i915_private;
 struct i915_power_well;
+struct intel_display;
 struct intel_encoder;
 struct seq_file;
 
@@ -166,21 +167,21 @@ struct intel_display_power_domain_set {
 	for ((__domain) = 0; (__domain) < POWER_DOMAIN_NUM; (__domain)++)	\
 		for_each_if(test_bit((__domain), (__mask)->bits))
 
-int intel_power_domains_init(struct drm_i915_private *dev_priv);
-void intel_power_domains_cleanup(struct drm_i915_private *dev_priv);
-void intel_power_domains_init_hw(struct drm_i915_private *dev_priv, bool resume);
-void intel_power_domains_driver_remove(struct drm_i915_private *dev_priv);
-void intel_power_domains_enable(struct drm_i915_private *dev_priv);
-void intel_power_domains_disable(struct drm_i915_private *dev_priv);
-void intel_power_domains_suspend(struct drm_i915_private *dev_priv, bool s2idle);
-void intel_power_domains_resume(struct drm_i915_private *dev_priv);
-void intel_power_domains_sanitize_state(struct drm_i915_private *dev_priv);
-
-void intel_display_power_suspend_late(struct drm_i915_private *i915, bool s2idle);
-void intel_display_power_resume_early(struct drm_i915_private *i915);
-void intel_display_power_suspend(struct drm_i915_private *i915);
-void intel_display_power_resume(struct drm_i915_private *i915);
-void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
+int intel_power_domains_init(struct intel_display *display);
+void intel_power_domains_cleanup(struct intel_display *display);
+void intel_power_domains_init_hw(struct intel_display *display, bool resume);
+void intel_power_domains_driver_remove(struct intel_display *display);
+void intel_power_domains_enable(struct intel_display *display);
+void intel_power_domains_disable(struct intel_display *display);
+void intel_power_domains_suspend(struct intel_display *display, bool s2idle);
+void intel_power_domains_resume(struct intel_display *display);
+void intel_power_domains_sanitize_state(struct intel_display *display);
+
+void intel_display_power_suspend_late(struct intel_display *display, bool s2idle);
+void intel_display_power_resume_early(struct intel_display *display);
+void intel_display_power_suspend(struct intel_display *display);
+void intel_display_power_resume(struct intel_display *display);
+void intel_display_power_set_target_dc_state(struct intel_display *display,
 					     u32 state);
 
 bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 2c8668b1ebae..9db30db428f7 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -1024,5 +1024,5 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 
 	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
 
-	intel_power_domains_sanitize_state(i915);
+	intel_power_domains_sanitize_state(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 15b70a1127d4..64c00a8a6850 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1130,18 +1130,16 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
 static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	psr2_program_idle_frames(intel_dp, 0);
-	intel_display_power_set_target_dc_state(dev_priv, DC_STATE_EN_DC3CO);
+	intel_display_power_set_target_dc_state(display, DC_STATE_EN_DC3CO);
 }
 
 static void tgl_psr2_disable_dc3co(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	intel_display_power_set_target_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
+	intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
 	psr2_program_idle_frames(intel_dp, psr_compute_idle_frames(intel_dp));
 }
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index ff99d45bdfda..c1edf5e1f61e 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -286,8 +286,10 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	intel_irq_fini(dev_priv);
-	intel_power_domains_cleanup(dev_priv);
+	intel_power_domains_cleanup(display);
 	i915_gem_cleanup_early(dev_priv);
 	intel_gt_driver_late_release_all(dev_priv);
 	intel_region_ttm_device_fini(dev_priv);
@@ -605,6 +607,7 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_register(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_gt *gt;
 	unsigned int i;
 
@@ -635,7 +638,7 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_register(dev_priv);
 
-	intel_power_domains_enable(dev_priv);
+	intel_power_domains_enable(display);
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
 
 	intel_register_dsm_handler();
@@ -650,6 +653,7 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_gt *gt;
 	unsigned int i;
 
@@ -658,7 +662,7 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	intel_unregister_dsm_handler();
 
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
-	intel_power_domains_disable(dev_priv);
+	intel_power_domains_disable(display);
 
 	intel_display_driver_unregister(dev_priv);
 
@@ -943,9 +947,11 @@ static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
 
 void i915_driver_shutdown(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
+
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 	intel_runtime_pm_disable(&i915->runtime_pm);
-	intel_power_domains_disable(i915);
+	intel_power_domains_disable(display);
 
 	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
 	if (HAS_DISPLAY(i915)) {
@@ -981,7 +987,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	 * - unify the driver remove and system/runtime suspend sequences with
 	 *   the above unified shutdown/poweroff sequence.
 	 */
-	intel_power_domains_driver_remove(i915);
+	intel_power_domains_driver_remove(display);
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 
 	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
@@ -1029,7 +1035,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	/* We do a lot of poking in a lot of registers, make sure they work
 	 * properly. */
-	intel_power_domains_disable(dev_priv);
+	intel_power_domains_disable(display);
 	intel_fbdev_set_suspend(dev, FBINFO_STATE_SUSPENDED, true);
 	if (HAS_DISPLAY(dev_priv)) {
 		drm_kms_helper_poll_disable(dev);
@@ -1071,6 +1077,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = &dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct intel_gt *gt;
@@ -1086,12 +1093,12 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_suspend(gt->uncore);
 
-	intel_display_power_suspend_late(dev_priv, s2idle);
+	intel_display_power_suspend_late(display, s2idle);
 
 	ret = vlv_suspend_complete(dev_priv);
 	if (ret) {
 		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
-		intel_display_power_resume_early(dev_priv);
+		intel_display_power_resume_early(display);
 
 		goto out;
 	}
@@ -1217,7 +1224,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_fbdev_set_suspend(dev, FBINFO_STATE_RUNNING, false);
 
-	intel_power_domains_enable(dev_priv);
+	intel_power_domains_enable(display);
 
 	intel_gvt_resume(dev_priv);
 
@@ -1229,6 +1236,7 @@ static int i915_drm_resume(struct drm_device *dev)
 static int i915_drm_resume_early(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = &dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_gt *gt;
 	int ret, i;
@@ -1288,7 +1296,7 @@ static int i915_drm_resume_early(struct drm_device *dev)
 	for_each_gt(gt, dev_priv, i)
 		intel_gt_resume_early(gt);
 
-	intel_display_power_resume_early(dev_priv);
+	intel_display_power_resume_early(display);
 
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
@@ -1490,7 +1498,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_suspend(gt->uncore);
 
-	intel_display_power_suspend(dev_priv);
+	intel_display_power_suspend(display);
 
 	ret = vlv_suspend_complete(dev_priv);
 	if (ret) {
@@ -1584,7 +1592,7 @@ static int intel_runtime_resume(struct device *kdev)
 		drm_dbg(&dev_priv->drm,
 			"Unclaimed access during suspend, bios?\n");
 
-	intel_display_power_resume(dev_priv);
+	intel_display_power_resume(display);
 
 	ret = vlv_resume_prepare(dev_priv, true);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 69c828f38cb6..31c05f54b699 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -103,11 +103,12 @@ int xe_display_create(struct xe_device *xe)
 static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
 {
 	struct xe_device *xe = to_xe_device(dev);
+	struct intel_display *display = &xe->display;
 
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_cleanup(xe);
+	intel_power_domains_cleanup(display);
 }
 
 int xe_display_init_nommio(struct xe_device *xe)
@@ -215,21 +216,25 @@ void xe_display_fini(struct xe_device *xe)
 
 void xe_display_register(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
 	intel_display_driver_register(xe);
-	intel_power_domains_enable(xe);
+	intel_power_domains_enable(display);
 	intel_register_dsm_handler();
 }
 
 void xe_display_unregister(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
 	intel_unregister_dsm_handler();
-	intel_power_domains_disable(xe);
+	intel_power_domains_disable(display);
 	intel_display_driver_unregister(xe);
 }
 
@@ -322,7 +327,7 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 	 * We do a lot of poking in a lot of registers, make sure they work
 	 * properly.
 	 */
-	intel_power_domains_disable(xe);
+	intel_power_domains_disable(display);
 	if (!runtime)
 		intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
 
@@ -361,7 +366,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_disable(xe);
+	intel_power_domains_disable(display);
 	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
 	if (has_display(xe)) {
 		drm_kms_helper_poll_disable(&xe->drm);
@@ -399,16 +404,19 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 
 void xe_display_pm_suspend_late(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
 	bool s2idle = suspend_to_idle();
 
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_power_suspend_late(xe, s2idle);
+	intel_display_power_suspend_late(display, s2idle);
 }
 
 void xe_display_pm_shutdown_late(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
@@ -417,15 +425,17 @@ void xe_display_pm_shutdown_late(struct xe_device *xe)
 	 * for now leaving all display power wells in the INIT power domain
 	 * enabled.
 	 */
-	intel_power_domains_driver_remove(xe);
+	intel_power_domains_driver_remove(display);
 }
 
 void xe_display_pm_resume_early(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_power_resume_early(xe);
+	intel_display_power_resume_early(display);
 }
 
 static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
@@ -461,7 +471,7 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
 	if (!runtime)
 		intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
 
-	intel_power_domains_enable(xe);
+	intel_power_domains_enable(display);
 }
 
 void xe_display_pm_resume(struct xe_device *xe)
-- 
2.39.5

