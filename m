Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBED9E3763
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 11:21:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6D1A10E2A4;
	Wed,  4 Dec 2024 10:21:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X90IINjl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378C210E2A4;
 Wed,  4 Dec 2024 10:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733307718; x=1764843718;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=z+/qUzC6+Bl7ETpFfCqx3hJhiBn1uY0t53D7i5g1pWE=;
 b=X90IINjloVOQsycy5T1Oi0m+O9EWMZ6v1KKIMh0lTK/Swm8rvBdcfZVu
 KLW6eQLyPwKjV990mE57F7juzdK5+FinS4PqxW3t7/f0BflPUVRF/e9P2
 YmXK+z10/mKJ6zgQDxu0MP9piqTRId7QAQEPIJFE2Kye5f1N0lYWEmTdW
 e8Nvxg0FaX2pRLxX+hpgOlIUfbRWueN34Jzi0+9VIsnyY0oSW0I9F49nP
 /zZdFfyuNBTbxbZkARYA1oklfOpYdgaNVU9yblZbKeUIGOEONAdWbQAfo
 WCy5qkWnl++4BSoM+T8Taox9wGsi4CCBj9JqIWXiFD/R7BgSdasEyZkyl g==;
X-CSE-ConnectionGUID: nbKLMF94SHOUhCbVb/h0TA==
X-CSE-MsgGUID: mqrVOyEPTGyQ8BVM2mO8yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44043619"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44043619"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 02:21:57 -0800
X-CSE-ConnectionGUID: 7bocHDPZTQOeWFN17u2rjA==
X-CSE-MsgGUID: pQI6VMwMQXiq9BwY14YR9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="94552940"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 02:21:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH] drm/i915/display: convert intel_display_driver.[ch] to struct
 intel_display
Date: Wed,  4 Dec 2024 12:21:50 +0200
Message-Id: <20241204102150.2223455-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Going forward, struct intel_display will be the main display driver
structure. Convert the main display entry points to struct
intel_display.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +-
 .../drm/i915/display/intel_display_driver.c   | 280 +++++++++---------
 .../drm/i915/display/intel_display_driver.h   |  38 +--
 .../drm/i915/display/intel_display_reset.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   5 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   7 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |   3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   3 +-
 drivers/gpu/drm/i915/i915_driver.c            |  47 +--
 drivers/gpu/drm/xe/display/xe_display.c       |  44 +--
 14 files changed, 238 insertions(+), 220 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 15de755c464e..4634d3fd9f20 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -870,7 +870,7 @@ intel_crt_detect(struct drm_connector *connector,
 	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
-	if (!intel_display_driver_check_access(dev_priv))
+	if (!intel_display_driver_check_access(display))
 		return connector->status;
 
 	if (display->params.load_detect_test) {
@@ -954,7 +954,7 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 	struct i2c_adapter *ddc;
 	int ret;
 
-	if (!intel_display_driver_check_access(dev_priv))
+	if (!intel_display_driver_check_access(display))
 		return drm_edid_connector_add_modes(connector);
 
 	wakeref = intel_display_power_get(dev_priv, encoder->power_domain);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4805bf682d43..d39067f8e854 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6806,6 +6806,7 @@ static int intel_atomic_check_config_and_link(struct intel_atomic_state *state)
 int intel_atomic_check(struct drm_device *dev,
 		       struct drm_atomic_state *_state)
 {
+	struct intel_display *display = to_intel_display(dev);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
@@ -6813,7 +6814,7 @@ int intel_atomic_check(struct drm_device *dev,
 	int ret, i;
 	bool any_ms = false;
 
-	if (!intel_display_driver_check_access(dev_priv))
+	if (!intel_display_driver_check_access(display))
 		return -ENODEV;
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 9f881bdee574..a7f4b0ce0740 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -80,12 +80,12 @@ bool intel_display_driver_probe_defer(struct pci_dev *pdev)
 	return false;
 }
 
-void intel_display_driver_init_hw(struct drm_i915_private *i915)
+void intel_display_driver_init_hw(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_cdclk_state *cdclk_state;
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	cdclk_state = to_intel_cdclk_state(display->cdclk.obj.state);
@@ -112,12 +112,12 @@ static const struct drm_mode_config_helper_funcs intel_mode_config_funcs = {
 	.atomic_commit_setup = drm_dp_mst_atomic_setup_commit,
 };
 
-static void intel_mode_config_init(struct drm_i915_private *i915)
+static void intel_mode_config_init(struct intel_display *display)
 {
-	struct drm_mode_config *mode_config = &i915->drm.mode_config;
+	struct drm_mode_config *mode_config = &display->drm->mode_config;
 
-	drm_mode_config_init(&i915->drm);
-	INIT_LIST_HEAD(&i915->display.global.obj_list);
+	drm_mode_config_init(display->drm);
+	INIT_LIST_HEAD(&display->global.obj_list);
 
 	mode_config->min_width = 0;
 	mode_config->min_height = 0;
@@ -128,19 +128,19 @@ static void intel_mode_config_init(struct drm_i915_private *i915)
 	mode_config->funcs = &intel_mode_funcs;
 	mode_config->helper_private = &intel_mode_config_funcs;
 
-	mode_config->async_page_flip = HAS_ASYNC_FLIPS(i915);
+	mode_config->async_page_flip = HAS_ASYNC_FLIPS(display);
 
 	/*
 	 * Maximum framebuffer dimensions, chosen to match
 	 * the maximum render engine surface size on gen4+.
 	 */
-	if (DISPLAY_VER(i915) >= 7) {
+	if (DISPLAY_VER(display) >= 7) {
 		mode_config->max_width = 16384;
 		mode_config->max_height = 16384;
-	} else if (DISPLAY_VER(i915) >= 4) {
+	} else if (DISPLAY_VER(display) >= 4) {
 		mode_config->max_width = 8192;
 		mode_config->max_height = 8192;
-	} else if (DISPLAY_VER(i915) == 3) {
+	} else if (DISPLAY_VER(display) == 3) {
 		mode_config->max_width = 4096;
 		mode_config->max_height = 4096;
 	} else {
@@ -148,11 +148,11 @@ static void intel_mode_config_init(struct drm_i915_private *i915)
 		mode_config->max_height = 2048;
 	}
 
-	if (IS_I845G(i915) || IS_I865G(i915)) {
-		mode_config->cursor_width = IS_I845G(i915) ? 64 : 512;
+	if (display->platform.i845g || display->platform.i865g) {
+		mode_config->cursor_width = display->platform.i845g ? 64 : 512;
 		mode_config->cursor_height = 1023;
-	} else if (IS_I830(i915) || IS_I85X(i915) ||
-		   IS_I915G(i915) || IS_I915GM(i915)) {
+	} else if (display->platform.i830 || display->platform.i85x ||
+		   display->platform.i915g || display->platform.i915gm) {
 		mode_config->cursor_width = 64;
 		mode_config->cursor_height = 64;
 	} else {
@@ -161,18 +161,19 @@ static void intel_mode_config_init(struct drm_i915_private *i915)
 	}
 }
 
-static void intel_mode_config_cleanup(struct drm_i915_private *i915)
+static void intel_mode_config_cleanup(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	intel_atomic_global_obj_cleanup(i915);
-	drm_mode_config_cleanup(&i915->drm);
+	drm_mode_config_cleanup(display->drm);
 }
 
-static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev_priv)
+static void intel_plane_possible_crtcs_init(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_plane *plane;
 
-	for_each_intel_plane(&dev_priv->drm, plane) {
+	for_each_intel_plane(display->drm, plane) {
 		struct intel_crtc *crtc = intel_crtc_for_pipe(display,
 							      plane->pipe);
 
@@ -180,41 +181,43 @@ static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev_priv)
 	}
 }
 
-void intel_display_driver_early_probe(struct drm_i915_private *i915)
+void intel_display_driver_early_probe(struct intel_display *display)
 {
-	if (!HAS_DISPLAY(i915))
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (!HAS_DISPLAY(display))
 		return;
 
-	spin_lock_init(&i915->display.fb_tracking.lock);
-	mutex_init(&i915->display.backlight.lock);
-	mutex_init(&i915->display.audio.mutex);
-	mutex_init(&i915->display.wm.wm_mutex);
-	mutex_init(&i915->display.pps.mutex);
-	mutex_init(&i915->display.hdcp.hdcp_mutex);
+	spin_lock_init(&display->fb_tracking.lock);
+	mutex_init(&display->backlight.lock);
+	mutex_init(&display->audio.mutex);
+	mutex_init(&display->wm.wm_mutex);
+	mutex_init(&display->pps.mutex);
+	mutex_init(&display->hdcp.hdcp_mutex);
 
 	intel_display_irq_init(i915);
 	intel_dkl_phy_init(i915);
-	intel_color_init_hooks(&i915->display);
-	intel_init_cdclk_hooks(&i915->display);
+	intel_color_init_hooks(display);
+	intel_init_cdclk_hooks(display);
 	intel_audio_hooks_init(i915);
 	intel_dpll_init_clock_hook(i915);
 	intel_init_display_hooks(i915);
 	intel_fdi_init_hook(i915);
-	intel_dmc_wl_init(&i915->display);
+	intel_dmc_wl_init(display);
 }
 
 /* part #1: call before irq install */
-int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
+int intel_display_driver_probe_noirq(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 
 	if (i915_inject_probe_failure(i915))
 		return -ENODEV;
 
-	if (HAS_DISPLAY(i915)) {
-		ret = drm_vblank_init(&i915->drm,
-				      INTEL_NUM_PIPES(i915));
+	if (HAS_DISPLAY(display)) {
+		ret = drm_vblank_init(display->drm,
+				      INTEL_NUM_PIPES(display));
 		if (ret)
 			return ret;
 	}
@@ -234,17 +237,17 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 
 	intel_power_domains_init_hw(display, false);
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return 0;
 
 	intel_dmc_init(display);
 
-	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
-	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
+	display->wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
+	display->wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
 						WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
-	i915->display.wq.cleanup = alloc_workqueue("i915_cleanup", WQ_HIGHPRI, 0);
+	display->wq.cleanup = alloc_workqueue("i915_cleanup", WQ_HIGHPRI, 0);
 
-	intel_mode_config_init(i915);
+	intel_mode_config_init(display);
 
 	ret = intel_cdclk_init(display);
 	if (ret)
@@ -283,7 +286,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 	return ret;
 }
 
-static void set_display_access(struct drm_i915_private *i915,
+static void set_display_access(struct intel_display *display,
 			       bool any_task_allowed,
 			       struct task_struct *allowed_task)
 {
@@ -291,20 +294,20 @@ static void set_display_access(struct drm_i915_private *i915,
 	int err;
 
 	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, err) {
-		err = drm_modeset_lock_all_ctx(&i915->drm, &ctx);
+		err = drm_modeset_lock_all_ctx(display->drm, &ctx);
 		if (err)
 			continue;
 
-		i915->display.access.any_task_allowed = any_task_allowed;
-		i915->display.access.allowed_task = allowed_task;
+		display->access.any_task_allowed = any_task_allowed;
+		display->access.allowed_task = allowed_task;
 	}
 
-	drm_WARN_ON(&i915->drm, err);
+	drm_WARN_ON(display->drm, err);
 }
 
 /**
  * intel_display_driver_enable_user_access - Enable display HW access for all threads
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * Enable the display HW access for all threads. Examples for such accesses
  * are modeset commits and connector probing.
@@ -312,16 +315,18 @@ static void set_display_access(struct drm_i915_private *i915,
  * This function should be called during driver loading and system resume once
  * all the HW initialization steps are done.
  */
-void intel_display_driver_enable_user_access(struct drm_i915_private *i915)
+void intel_display_driver_enable_user_access(struct intel_display *display)
 {
-	set_display_access(i915, true, NULL);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	set_display_access(display, true, NULL);
 
 	intel_hpd_enable_detection_work(i915);
 }
 
 /**
  * intel_display_driver_disable_user_access - Disable display HW access for user threads
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * Disable the display HW access for user threads. Examples for such accesses
  * are modeset commits and connector probing. For the current thread the
@@ -336,16 +341,18 @@ void intel_display_driver_enable_user_access(struct drm_i915_private *i915)
  * This function should be called during driver loading/unloading and system
  * suspend/shutdown before starting the HW init/deinit programming.
  */
-void intel_display_driver_disable_user_access(struct drm_i915_private *i915)
+void intel_display_driver_disable_user_access(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	intel_hpd_disable_detection_work(i915);
 
-	set_display_access(i915, false, current);
+	set_display_access(display, false, current);
 }
 
 /**
  * intel_display_driver_suspend_access - Suspend display HW access for all threads
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * Disable the display HW access for all threads. Examples for such accesses
  * are modeset commits and connector probing. This call should be either
@@ -355,14 +362,14 @@ void intel_display_driver_disable_user_access(struct drm_i915_private *i915)
  * This function should be called during driver unloading and system
  * suspend/shutdown after completing the HW deinit programming.
  */
-void intel_display_driver_suspend_access(struct drm_i915_private *i915)
+void intel_display_driver_suspend_access(struct intel_display *display)
 {
-	set_display_access(i915, false, NULL);
+	set_display_access(display, false, NULL);
 }
 
 /**
  * intel_display_driver_resume_access - Resume display HW access for the resume thread
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * Enable the display HW access for the current resume thread, keeping the
  * access disabled for all other (user) threads. Examples for such accesses
@@ -374,14 +381,14 @@ void intel_display_driver_suspend_access(struct drm_i915_private *i915)
  * This function should be called during system resume before starting the HW
  * init steps.
  */
-void intel_display_driver_resume_access(struct drm_i915_private *i915)
+void intel_display_driver_resume_access(struct intel_display *display)
 {
-	set_display_access(i915, false, current);
+	set_display_access(display, false, current);
 }
 
 /**
  * intel_display_driver_check_access - Check if the current thread has disaplay HW access
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * Check whether the current thread has display HW access, print a debug
  * message if it doesn't. Such accesses are modeset commits and connector
@@ -390,26 +397,26 @@ void intel_display_driver_resume_access(struct drm_i915_private *i915)
  * Returns %true if the current thread has display HW access, %false
  * otherwise.
  */
-bool intel_display_driver_check_access(struct drm_i915_private *i915)
+bool intel_display_driver_check_access(struct intel_display *display)
 {
 	char comm[TASK_COMM_LEN];
 	char current_task[TASK_COMM_LEN + 16];
 	char allowed_task[TASK_COMM_LEN + 16] = "none";
 
-	if (i915->display.access.any_task_allowed ||
-	    i915->display.access.allowed_task == current)
+	if (display->access.any_task_allowed ||
+	    display->access.allowed_task == current)
 		return true;
 
 	snprintf(current_task, sizeof(current_task), "%s[%d]",
 		 get_task_comm(comm, current),
 		 task_pid_vnr(current));
 
-	if (i915->display.access.allowed_task)
+	if (display->access.allowed_task)
 		snprintf(allowed_task, sizeof(allowed_task), "%s[%d]",
-			 get_task_comm(comm, i915->display.access.allowed_task),
-			 task_pid_vnr(i915->display.access.allowed_task));
+			 get_task_comm(comm, display->access.allowed_task),
+			 task_pid_vnr(display->access.allowed_task));
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Reject display access from task %s (allowed to %s)\n",
 		    current_task, allowed_task);
 
@@ -417,14 +424,13 @@ bool intel_display_driver_check_access(struct drm_i915_private *i915)
 }
 
 /* part #2: call after irq install, but before gem init */
-int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
+int intel_display_driver_probe_nogem(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-	struct drm_device *dev = display->drm;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	enum pipe pipe;
 	int ret;
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return 0;
 
 	intel_wm_init(i915);
@@ -435,22 +441,22 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 
 	intel_gmbus_setup(display);
 
-	drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
-		    INTEL_NUM_PIPES(i915),
-		    INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
+	drm_dbg_kms(display->drm, "%d display pipe%s available.\n",
+		    INTEL_NUM_PIPES(display),
+		    INTEL_NUM_PIPES(display) > 1 ? "s" : "");
 
-	for_each_pipe(i915, pipe) {
+	for_each_pipe(display, pipe) {
 		ret = intel_crtc_init(i915, pipe);
 		if (ret)
 			goto err_mode_config;
 	}
 
-	intel_plane_possible_crtcs_init(i915);
+	intel_plane_possible_crtcs_init(display);
 	intel_shared_dpll_init(i915);
 	intel_fdi_pll_freq_update(i915);
 
 	intel_update_czclk(i915);
-	intel_display_driver_init_hw(i915);
+	intel_display_driver_init_hw(display);
 	intel_dpll_update_ref_clks(i915);
 
 	if (display->cdclk.max_cdclk_freq == 0)
@@ -466,12 +472,12 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 	if (ret)
 		goto err_hdcp;
 
-	intel_display_driver_disable_user_access(i915);
+	intel_display_driver_disable_user_access(display);
 
-	drm_modeset_lock_all(dev);
-	intel_modeset_setup_hw_state(i915, dev->mode_config.acquire_ctx);
+	drm_modeset_lock_all(display->drm);
+	intel_modeset_setup_hw_state(i915, display->drm->mode_config.acquire_ctx);
 	intel_acpi_assign_connector_fwnodes(display);
-	drm_modeset_unlock_all(dev);
+	drm_modeset_unlock_all(display->drm);
 
 	intel_initial_plane_config(display);
 
@@ -480,7 +486,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 	 * Note that we need to do this after reconstructing the BIOS fb's
 	 * since the watermark calculation done here will use pstate->fb.
 	 */
-	if (!HAS_GMCH(i915))
+	if (!HAS_GMCH(display))
 		ilk_wm_sanitize(i915);
 
 	return 0;
@@ -488,18 +494,18 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 err_hdcp:
 	intel_hdcp_component_fini(display);
 err_mode_config:
-	intel_mode_config_cleanup(i915);
+	intel_mode_config_cleanup(display);
 
 	return ret;
 }
 
 /* part #3: call after gem init */
-int intel_display_driver_probe(struct drm_i915_private *i915)
+int intel_display_driver_probe(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return 0;
 
 	/*
@@ -515,9 +521,9 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
 	 * are already calculated and there is no assert_plane warnings
 	 * during bootup.
 	 */
-	ret = intel_initial_commit(&i915->drm);
+	ret = intel_initial_commit(display->drm);
 	if (ret)
-		drm_dbg_kms(&i915->drm, "Initial modeset failed, %d\n", ret);
+		drm_dbg_kms(display->drm, "Initial modeset failed, %d\n", ret);
 
 	intel_overlay_setup(display);
 
@@ -529,13 +535,13 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
 	return 0;
 }
 
-void intel_display_driver_register(struct drm_i915_private *i915)
+void intel_display_driver_register(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-	struct drm_printer p = drm_dbg_printer(&i915->drm, DRM_UT_KMS,
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct drm_printer p = drm_dbg_printer(display->drm, DRM_UT_KMS,
 					       "i915 display info:");
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	/* Must be done after probing outputs */
@@ -544,7 +550,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 
 	intel_audio_init(i915);
 
-	intel_display_driver_enable_user_access(i915);
+	intel_display_driver_enable_user_access(display);
 
 	intel_audio_register(i915);
 
@@ -555,24 +561,26 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 	 * fbdev configuration, for which we use the
 	 * fbdev->async_cookie.
 	 */
-	drm_kms_helper_poll_init(&i915->drm);
+	drm_kms_helper_poll_init(display->drm);
 	intel_hpd_poll_disable(i915);
 
 	intel_fbdev_setup(i915);
 
-	intel_display_device_info_print(DISPLAY_INFO(i915),
-					DISPLAY_RUNTIME_INFO(i915), &p);
+	intel_display_device_info_print(DISPLAY_INFO(display),
+					DISPLAY_RUNTIME_INFO(display), &p);
 }
 
 /* part #1: call before irq uninstall */
-void intel_display_driver_remove(struct drm_i915_private *i915)
+void intel_display_driver_remove(struct intel_display *display)
 {
-	if (!HAS_DISPLAY(i915))
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (!HAS_DISPLAY(display))
 		return;
 
-	flush_workqueue(i915->display.wq.flip);
-	flush_workqueue(i915->display.wq.modeset);
-	flush_workqueue(i915->display.wq.cleanup);
+	flush_workqueue(display->wq.flip);
+	flush_workqueue(display->wq.modeset);
+	flush_workqueue(display->wq.cleanup);
 
 	/*
 	 * MST topology needs to be suspended so we don't have any calls to
@@ -583,14 +591,14 @@ void intel_display_driver_remove(struct drm_i915_private *i915)
 }
 
 /* part #2: call after irq uninstall */
-void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
+void intel_display_driver_remove_noirq(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	intel_display_driver_suspend_access(i915);
+	intel_display_driver_suspend_access(display);
 
 	/*
 	 * Due to the hpd irq storm handling the hotplug work can re-arm the
@@ -605,7 +613,7 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
 
 	intel_hdcp_component_fini(display);
 
-	intel_mode_config_cleanup(i915);
+	intel_mode_config_cleanup(display);
 
 	intel_dp_tunnel_mgr_cleanup(display);
 
@@ -613,18 +621,16 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
 
 	intel_gmbus_teardown(display);
 
-	destroy_workqueue(i915->display.wq.flip);
-	destroy_workqueue(i915->display.wq.modeset);
-	destroy_workqueue(i915->display.wq.cleanup);
+	destroy_workqueue(display->wq.flip);
+	destroy_workqueue(display->wq.modeset);
+	destroy_workqueue(display->wq.cleanup);
 
-	intel_fbc_cleanup(&i915->display);
+	intel_fbc_cleanup(display);
 }
 
 /* part #3: call after gem init */
-void intel_display_driver_remove_nogem(struct drm_i915_private *i915)
+void intel_display_driver_remove_nogem(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-
 	intel_dmc_fini(display);
 
 	intel_power_domains_driver_remove(display);
@@ -634,27 +640,27 @@ void intel_display_driver_remove_nogem(struct drm_i915_private *i915)
 	intel_bios_driver_remove(display);
 }
 
-void intel_display_driver_unregister(struct drm_i915_private *i915)
+void intel_display_driver_unregister(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	drm_client_dev_unregister(&i915->drm);
+	drm_client_dev_unregister(display->drm);
 
 	/*
 	 * After flushing the fbdev (incl. a late async config which
 	 * will have delayed queuing of a hotplug event), then flush
 	 * the hotplug events.
 	 */
-	drm_kms_helper_poll_fini(&i915->drm);
+	drm_kms_helper_poll_fini(display->drm);
 
-	intel_display_driver_disable_user_access(i915);
+	intel_display_driver_disable_user_access(display);
 
 	intel_audio_deinit(i915);
 
-	drm_atomic_helper_shutdown(&i915->drm);
+	drm_atomic_helper_shutdown(display->drm);
 
 	acpi_video_unregister();
 	intel_opregion_unregister(display);
@@ -664,24 +670,25 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
  * turn all crtc's off, but do not adjust state
  * This has to be paired with a call to intel_modeset_setup_hw_state.
  */
-int intel_display_driver_suspend(struct drm_i915_private *i915)
+int intel_display_driver_suspend(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_atomic_state *state;
 	int ret;
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return 0;
 
-	state = drm_atomic_helper_suspend(&i915->drm);
+	state = drm_atomic_helper_suspend(display->drm);
 	ret = PTR_ERR_OR_ZERO(state);
 	if (ret)
-		drm_err(&i915->drm, "Suspending crtc's failed with %i\n",
+		drm_err(display->drm, "Suspending crtc's failed with %i\n",
 			ret);
 	else
-		i915->display.restore.modeset_state = state;
+		display->restore.modeset_state = state;
 
 	/* ensure all DPT VMAs have been unpinned for intel_dpt_suspend() */
-	flush_workqueue(i915->display.wq.cleanup);
+	flush_workqueue(display->wq.cleanup);
 
 	intel_dp_mst_suspend(i915);
 
@@ -689,11 +696,11 @@ int intel_display_driver_suspend(struct drm_i915_private *i915)
 }
 
 int
-__intel_display_driver_resume(struct drm_i915_private *i915,
+__intel_display_driver_resume(struct intel_display *display,
 			      struct drm_atomic_state *state,
 			      struct drm_modeset_acquire_ctx *ctx)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_crtc_state *crtc_state;
 	struct drm_crtc *crtc;
 	int ret, i;
@@ -719,36 +726,37 @@ __intel_display_driver_resume(struct drm_i915_private *i915,
 	}
 
 	/* ignore any reset values/BIOS leftovers in the WM registers */
-	if (!HAS_GMCH(i915))
+	if (!HAS_GMCH(display))
 		to_intel_atomic_state(state)->skip_intermediate_wm = true;
 
 	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
 
-	drm_WARN_ON(&i915->drm, ret == -EDEADLK);
+	drm_WARN_ON(display->drm, ret == -EDEADLK);
 
 	return ret;
 }
 
-void intel_display_driver_resume(struct drm_i915_private *i915)
+void intel_display_driver_resume(struct intel_display *display)
 {
-	struct drm_atomic_state *state = i915->display.restore.modeset_state;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct drm_atomic_state *state = display->restore.modeset_state;
 	struct drm_modeset_acquire_ctx ctx;
 	int ret;
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	/* MST sideband requires HPD interrupts enabled */
 	intel_dp_mst_resume(i915);
 
-	i915->display.restore.modeset_state = NULL;
+	display->restore.modeset_state = NULL;
 	if (state)
 		state->acquire_ctx = &ctx;
 
 	drm_modeset_acquire_init(&ctx, 0);
 
 	while (1) {
-		ret = drm_modeset_lock_all_ctx(&i915->drm, &ctx);
+		ret = drm_modeset_lock_all_ctx(display->drm, &ctx);
 		if (ret != -EDEADLK)
 			break;
 
@@ -756,14 +764,14 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
 	}
 
 	if (!ret)
-		ret = __intel_display_driver_resume(i915, state, &ctx);
+		ret = __intel_display_driver_resume(display, state, &ctx);
 
 	skl_watermark_ipc_update(i915);
 	drm_modeset_drop_locks(&ctx);
 	drm_modeset_acquire_fini(&ctx);
 
 	if (ret)
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"Restoring old state failed with %i\n", ret);
 	if (state)
 		drm_atomic_state_put(state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 42cc4af6d3fd..2966ff91b219 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -9,34 +9,34 @@
 #include <linux/types.h>
 
 struct drm_atomic_state;
-struct drm_i915_private;
 struct drm_modeset_acquire_ctx;
+struct intel_display;
 struct pci_dev;
 
 bool intel_display_driver_probe_defer(struct pci_dev *pdev);
-void intel_display_driver_init_hw(struct drm_i915_private *i915);
-void intel_display_driver_early_probe(struct drm_i915_private *i915);
-int intel_display_driver_probe_noirq(struct drm_i915_private *i915);
-int intel_display_driver_probe_nogem(struct drm_i915_private *i915);
-int intel_display_driver_probe(struct drm_i915_private *i915);
-void intel_display_driver_register(struct drm_i915_private *i915);
-void intel_display_driver_remove(struct drm_i915_private *i915);
-void intel_display_driver_remove_noirq(struct drm_i915_private *i915);
-void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
-void intel_display_driver_unregister(struct drm_i915_private *i915);
-int intel_display_driver_suspend(struct drm_i915_private *i915);
-void intel_display_driver_resume(struct drm_i915_private *i915);
+void intel_display_driver_init_hw(struct intel_display *display);
+void intel_display_driver_early_probe(struct intel_display *display);
+int intel_display_driver_probe_noirq(struct intel_display *display);
+int intel_display_driver_probe_nogem(struct intel_display *display);
+int intel_display_driver_probe(struct intel_display *display);
+void intel_display_driver_register(struct intel_display *display);
+void intel_display_driver_remove(struct intel_display *display);
+void intel_display_driver_remove_noirq(struct intel_display *display);
+void intel_display_driver_remove_nogem(struct intel_display *display);
+void intel_display_driver_unregister(struct intel_display *display);
+int intel_display_driver_suspend(struct intel_display *display);
+void intel_display_driver_resume(struct intel_display *display);
 
 /* interface for intel_display_reset.c */
-int __intel_display_driver_resume(struct drm_i915_private *i915,
+int __intel_display_driver_resume(struct intel_display *display,
 				  struct drm_atomic_state *state,
 				  struct drm_modeset_acquire_ctx *ctx);
 
-void intel_display_driver_enable_user_access(struct drm_i915_private *i915);
-void intel_display_driver_disable_user_access(struct drm_i915_private *i915);
-void intel_display_driver_suspend_access(struct drm_i915_private *i915);
-void intel_display_driver_resume_access(struct drm_i915_private *i915);
-bool intel_display_driver_check_access(struct drm_i915_private *i915);
+void intel_display_driver_enable_user_access(struct intel_display *display);
+void intel_display_driver_disable_user_access(struct intel_display *display);
+void intel_display_driver_suspend_access(struct intel_display *display);
+void intel_display_driver_resume_access(struct intel_display *display);
+bool intel_display_driver_check_access(struct intel_display *display);
 
 #endif /* __INTEL_DISPLAY_DRIVER_H__ */
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 49e2e650ebcd..093b386c95e8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -114,11 +114,11 @@ void intel_display_reset_finish(struct drm_i915_private *i915)
 		 * so need a full re-initialization.
 		 */
 		intel_pps_unlock_regs_wa(display);
-		intel_display_driver_init_hw(i915);
+		intel_display_driver_init_hw(display);
 		intel_clock_gating_init(i915);
 		intel_hpd_init(i915);
 
-		ret = __intel_display_driver_resume(i915, state, ctx);
+		ret = __intel_display_driver_resume(display, state, ctx);
 		if (ret)
 			drm_err(&i915->drm,
 				"Restoring old state failed with %i\n", ret);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4471c8fcd478..fbe6b77d642e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5652,7 +5652,7 @@ intel_dp_detect(struct drm_connector *connector,
 	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
-	if (!intel_display_driver_check_access(dev_priv))
+	if (!intel_display_driver_check_access(display))
 		return connector->status;
 
 	intel_dp_flush_connector_commits(intel_connector);
@@ -5774,6 +5774,7 @@ intel_dp_detect(struct drm_connector *connector,
 static void
 intel_dp_force(struct drm_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *intel_encoder = &dig_port->base;
@@ -5782,7 +5783,7 @@ intel_dp_force(struct drm_connector *connector)
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
-	if (!intel_display_driver_check_access(dev_priv))
+	if (!intel_display_driver_check_access(display))
 		return;
 
 	intel_dp_unset_edid(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c59c2c14679c..34ff93f5306d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1345,8 +1345,8 @@ static bool mst_stream_initial_fastset_check(struct intel_encoder *encoder,
 
 static int mst_connector_get_ddc_modes(struct drm_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_connector *intel_connector = to_intel_connector(connector);
-	struct drm_i915_private *i915 = to_i915(intel_connector->base.dev);
 	struct intel_dp *intel_dp = intel_connector->mst_port;
 	const struct drm_edid *drm_edid;
 	int ret;
@@ -1354,7 +1354,7 @@ static int mst_connector_get_ddc_modes(struct drm_connector *connector)
 	if (drm_connector_is_unregistered(connector))
 		return intel_connector_update_modes(connector, NULL);
 
-	if (!intel_display_driver_check_access(i915))
+	if (!intel_display_driver_check_access(display))
 		return drm_edid_connector_add_modes(connector);
 
 	drm_edid = drm_dp_mst_edid_read(connector, &intel_dp->mst_mgr, intel_connector->port);
@@ -1544,7 +1544,6 @@ mst_connector_detect_ctx(struct drm_connector *connector,
 			 struct drm_modeset_acquire_ctx *ctx, bool force)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct intel_dp *intel_dp = intel_connector->mst_port;
 
@@ -1554,7 +1553,7 @@ mst_connector_detect_ctx(struct drm_connector *connector,
 	if (drm_connector_is_unregistered(connector))
 		return connector_status_disconnected;
 
-	if (!intel_display_driver_check_access(i915))
+	if (!intel_display_driver_check_access(display))
 		return connector->status;
 
 	intel_dp_flush_connector_commits(intel_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 93a9af67ca47..abf19dfd6d9d 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -329,7 +329,7 @@ intel_dvo_detect(struct drm_connector *_connector, bool force)
 	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
-	if (!intel_display_driver_check_access(i915))
+	if (!intel_display_driver_check_access(display))
 		return connector->base.status;
 
 	return intel_dvo->dev.dev_ops->detect(&intel_dvo->dev);
@@ -337,11 +337,11 @@ intel_dvo_detect(struct drm_connector *_connector, bool force)
 
 static int intel_dvo_get_modes(struct drm_connector *_connector)
 {
+	struct intel_display *display = to_intel_display(_connector->dev);
 	struct intel_connector *connector = to_intel_connector(_connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int num_modes;
 
-	if (!intel_display_driver_check_access(i915))
+	if (!intel_display_driver_check_access(display))
 		return drm_edid_connector_add_modes(&connector->base);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 63e56c9ff516..f7b1768b279c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2557,7 +2557,7 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
-	if (!intel_display_driver_check_access(dev_priv))
+	if (!intel_display_driver_check_access(display))
 		return connector->status;
 
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
@@ -2584,12 +2584,11 @@ static void
 intel_hdmi_force(struct drm_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_i915_private *i915 = to_i915(connector->dev);
 
 	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
-	if (!intel_display_driver_check_access(i915))
+	if (!intel_display_driver_check_access(display))
 		return;
 
 	intel_hdmi_unset_edid(connector);
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index fdf9ef88a775..8aa93c2bf801 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -384,12 +384,11 @@ enum drm_connector_status
 intel_panel_detect(struct drm_connector *connector, bool force)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_i915_private *i915 = to_i915(connector->dev);
 
 	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
-	if (!intel_display_driver_check_access(i915))
+	if (!intel_display_driver_check_access(display))
 		return connector->status;
 
 	return connector_status_connected;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index df855bf3ecec..498b35ec4e0f 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2149,7 +2149,7 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
-	if (!intel_display_driver_check_access(i915))
+	if (!intel_display_driver_check_access(display))
 		return connector->status;
 
 	if (!intel_sdvo_set_target_output(intel_sdvo,
@@ -2197,14 +2197,14 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 
 static int intel_sdvo_get_ddc_modes(struct drm_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	int num_modes = 0;
 	const struct drm_edid *drm_edid;
 
 	drm_dbg_kms(connector->dev, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
-	if (!intel_display_driver_check_access(i915))
+	if (!intel_display_driver_check_access(display))
 		return drm_edid_connector_add_modes(connector);
 
 	/* set the bus switch and get the modes */
@@ -2298,6 +2298,7 @@ static const struct drm_display_mode sdvo_tv_modes[] = {
 
 static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
 	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	struct intel_sdvo_connector *intel_sdvo_connector =
@@ -2311,7 +2312,7 @@ static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
-	if (!intel_display_driver_check_access(i915))
+	if (!intel_display_driver_check_access(display))
 		return 0;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 1b96223fe916..6e311dcc1a61 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1714,7 +1714,6 @@ intel_tv_detect(struct drm_connector *connector,
 		bool force)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_tv *intel_tv = intel_attached_tv(to_intel_connector(connector));
 	enum drm_connector_status status;
 	int type;
@@ -1725,7 +1724,7 @@ intel_tv_detect(struct drm_connector *connector,
 	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
 
-	if (!intel_display_driver_check_access(i915))
+	if (!intel_display_driver_check_access(display))
 		return connector->status;
 
 	if (force) {
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c1edf5e1f61e..bcf854dc93b4 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -220,6 +220,7 @@ static void sanitize_gpu(struct drm_i915_private *i915)
  */
 static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	int ret = 0;
 
 	if (i915_inject_probe_failure(dev_priv))
@@ -263,7 +264,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	intel_detect_pch(dev_priv);
 
 	intel_irq_init(dev_priv);
-	intel_display_driver_early_probe(dev_priv);
+	intel_display_driver_early_probe(display);
 	intel_clock_gating_hooks_init(dev_priv);
 
 	intel_detect_preproduction_hw(dev_priv);
@@ -636,7 +637,7 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
 	i915_hwmon_register(dev_priv);
 
-	intel_display_driver_register(dev_priv);
+	intel_display_driver_register(display);
 
 	intel_power_domains_enable(display);
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
@@ -664,7 +665,7 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
 	intel_power_domains_disable(display);
 
-	intel_display_driver_unregister(dev_priv);
+	intel_display_driver_unregister(display);
 
 	intel_pxp_fini(dev_priv);
 
@@ -760,6 +761,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
 	struct drm_i915_private *i915;
+	struct intel_display *display;
 	int ret;
 
 	ret = pci_enable_device(pdev);
@@ -774,6 +776,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return PTR_ERR(i915);
 	}
 
+	display = &i915->display;
+
 	ret = i915_driver_early_probe(i915);
 	if (ret < 0)
 		goto out_pci_disable;
@@ -794,7 +798,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret < 0)
 		goto out_cleanup_mmio;
 
-	ret = intel_display_driver_probe_noirq(i915);
+	ret = intel_display_driver_probe_noirq(display);
 	if (ret < 0)
 		goto out_cleanup_hw;
 
@@ -802,7 +806,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret)
 		goto out_cleanup_modeset;
 
-	ret = intel_display_driver_probe_nogem(i915);
+	ret = intel_display_driver_probe_nogem(display);
 	if (ret)
 		goto out_cleanup_irq;
 
@@ -814,7 +818,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret && ret != -ENODEV)
 		drm_dbg(&i915->drm, "pxp init failed with %d\n", ret);
 
-	ret = intel_display_driver_probe(i915);
+	ret = intel_display_driver_probe(display);
 	if (ret)
 		goto out_cleanup_gem;
 
@@ -834,14 +838,14 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_gem_driver_release(i915);
 out_cleanup_modeset2:
 	/* FIXME clean up the error path */
-	intel_display_driver_remove(i915);
+	intel_display_driver_remove(display);
 	intel_irq_uninstall(i915);
-	intel_display_driver_remove_noirq(i915);
+	intel_display_driver_remove_noirq(display);
 	goto out_cleanup_modeset;
 out_cleanup_irq:
 	intel_irq_uninstall(i915);
 out_cleanup_modeset:
-	intel_display_driver_remove_nogem(i915);
+	intel_display_driver_remove_nogem(display);
 out_cleanup_hw:
 	i915_driver_hw_remove(i915);
 	intel_memory_regions_driver_release(i915);
@@ -861,6 +865,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 void i915_driver_remove(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	intel_wakeref_t wakeref;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
@@ -874,16 +879,16 @@ void i915_driver_remove(struct drm_i915_private *i915)
 
 	intel_gvt_driver_remove(i915);
 
-	intel_display_driver_remove(i915);
+	intel_display_driver_remove(display);
 
 	intel_irq_uninstall(i915);
 
-	intel_display_driver_remove_noirq(i915);
+	intel_display_driver_remove_noirq(display);
 
 	i915_reset_error_state(i915);
 	i915_gem_driver_remove(i915);
 
-	intel_display_driver_remove_nogem(i915);
+	intel_display_driver_remove_nogem(display);
 
 	i915_driver_hw_remove(i915);
 
@@ -956,7 +961,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
 	if (HAS_DISPLAY(i915)) {
 		drm_kms_helper_poll_disable(&i915->drm);
-		intel_display_driver_disable_user_access(i915);
+		intel_display_driver_disable_user_access(display);
 
 		drm_atomic_helper_shutdown(&i915->drm);
 	}
@@ -967,7 +972,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	intel_hpd_cancel_work(i915);
 
 	if (HAS_DISPLAY(i915))
-		intel_display_driver_suspend_access(i915);
+		intel_display_driver_suspend_access(display);
 
 	intel_encoder_suspend_all(&i915->display);
 	intel_encoder_shutdown_all(&i915->display);
@@ -1039,18 +1044,18 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_fbdev_set_suspend(dev, FBINFO_STATE_SUSPENDED, true);
 	if (HAS_DISPLAY(dev_priv)) {
 		drm_kms_helper_poll_disable(dev);
-		intel_display_driver_disable_user_access(dev_priv);
+		intel_display_driver_disable_user_access(display);
 	}
 
 	pci_save_state(pdev);
 
-	intel_display_driver_suspend(dev_priv);
+	intel_display_driver_suspend(display);
 
 	intel_irq_suspend(dev_priv);
 	intel_hpd_cancel_work(dev_priv);
 
 	if (HAS_DISPLAY(dev_priv))
-		intel_display_driver_suspend_access(dev_priv);
+		intel_display_driver_suspend_access(display);
 
 	intel_encoder_suspend_all(&dev_priv->display);
 
@@ -1203,19 +1208,19 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	i915_gem_resume(dev_priv);
 
-	intel_display_driver_init_hw(dev_priv);
+	intel_display_driver_init_hw(display);
 
 	intel_clock_gating_init(dev_priv);
 
 	if (HAS_DISPLAY(dev_priv))
-		intel_display_driver_resume_access(dev_priv);
+		intel_display_driver_resume_access(display);
 
 	intel_hpd_init(dev_priv);
 
-	intel_display_driver_resume(dev_priv);
+	intel_display_driver_resume(display);
 
 	if (HAS_DISPLAY(dev_priv)) {
-		intel_display_driver_enable_user_access(dev_priv);
+		intel_display_driver_enable_user_access(display);
 		drm_kms_helper_poll_enable(dev);
 	}
 	intel_hpd_poll_disable(dev_priv);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index d2e77417e2a0..317fa66adf18 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -134,7 +134,7 @@ static void xe_display_fini_noirq(void *arg)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_driver_remove_noirq(xe);
+	intel_display_driver_remove_noirq(display);
 	intel_opregion_cleanup(display);
 }
 
@@ -146,7 +146,7 @@ int xe_display_init_noirq(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return 0;
 
-	intel_display_driver_early_probe(xe);
+	intel_display_driver_early_probe(display);
 
 	/* Early display init.. */
 	intel_opregion_setup(display);
@@ -161,7 +161,7 @@ int xe_display_init_noirq(struct xe_device *xe)
 
 	intel_display_device_info_runtime_init(display);
 
-	err = intel_display_driver_probe_noirq(xe);
+	err = intel_display_driver_probe_noirq(display);
 	if (err) {
 		intel_opregion_cleanup(display);
 		return err;
@@ -173,21 +173,23 @@ int xe_display_init_noirq(struct xe_device *xe)
 static void xe_display_fini_noaccel(void *arg)
 {
 	struct xe_device *xe = arg;
+	struct intel_display *display = &xe->display;
 
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_driver_remove_nogem(xe);
+	intel_display_driver_remove_nogem(display);
 }
 
 int xe_display_init_noaccel(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
 	int err;
 
 	if (!xe->info.probe_display)
 		return 0;
 
-	err = intel_display_driver_probe_nogem(xe);
+	err = intel_display_driver_probe_nogem(display);
 	if (err)
 		return err;
 
@@ -196,10 +198,12 @@ int xe_display_init_noaccel(struct xe_device *xe)
 
 int xe_display_init(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return 0;
 
-	return intel_display_driver_probe(xe);
+	return intel_display_driver_probe(display);
 }
 
 void xe_display_fini(struct xe_device *xe)
@@ -222,7 +226,7 @@ void xe_display_register(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_driver_register(xe);
+	intel_display_driver_register(display);
 	intel_power_domains_enable(display);
 	intel_register_dsm_handler();
 }
@@ -236,15 +240,17 @@ void xe_display_unregister(struct xe_device *xe)
 
 	intel_unregister_dsm_handler();
 	intel_power_domains_disable(display);
-	intel_display_driver_unregister(xe);
+	intel_display_driver_unregister(display);
 }
 
 void xe_display_driver_remove(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_driver_remove(xe);
+	intel_display_driver_remove(display);
 }
 
 /* IRQ-related functions */
@@ -334,8 +340,8 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 
 	if (!runtime && has_display(xe)) {
 		drm_kms_helper_poll_disable(&xe->drm);
-		intel_display_driver_disable_user_access(xe);
-		intel_display_driver_suspend(xe);
+		intel_display_driver_disable_user_access(display);
+		intel_display_driver_suspend(display);
 	}
 
 	xe_display_flush_cleanup_work(xe);
@@ -343,7 +349,7 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 	intel_hpd_cancel_work(xe);
 
 	if (!runtime && has_display(xe)) {
-		intel_display_driver_suspend_access(xe);
+		intel_display_driver_suspend_access(display);
 		intel_encoder_suspend_all(&xe->display);
 	}
 
@@ -371,8 +377,8 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
 	if (has_display(xe)) {
 		drm_kms_helper_poll_disable(&xe->drm);
-		intel_display_driver_disable_user_access(xe);
-		intel_display_driver_suspend(xe);
+		intel_display_driver_disable_user_access(display);
+		intel_display_driver_suspend(display);
 	}
 
 	xe_display_flush_cleanup_work(xe);
@@ -380,7 +386,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	intel_hpd_cancel_work(xe);
 
 	if (has_display(xe))
-		intel_display_driver_suspend_access(xe);
+		intel_display_driver_suspend_access(display);
 
 	intel_encoder_suspend_all(display);
 	intel_encoder_shutdown_all(display);
@@ -469,17 +475,17 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
 	if (has_display(xe))
 		drm_mode_config_reset(&xe->drm);
 
-	intel_display_driver_init_hw(xe);
+	intel_display_driver_init_hw(display);
 
 	if (!runtime && has_display(xe))
-		intel_display_driver_resume_access(xe);
+		intel_display_driver_resume_access(display);
 
 	intel_hpd_init(xe);
 
 	if (!runtime && has_display(xe)) {
-		intel_display_driver_resume(xe);
+		intel_display_driver_resume(display);
 		drm_kms_helper_poll_enable(&xe->drm);
-		intel_display_driver_enable_user_access(xe);
+		intel_display_driver_enable_user_access(display);
 	}
 
 	if (has_display(xe))
-- 
2.39.5

