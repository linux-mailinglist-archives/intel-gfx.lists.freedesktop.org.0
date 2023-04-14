Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 630036E1F88
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:42:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AECB310ECAC;
	Fri, 14 Apr 2023 09:42:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43B3110ECAC
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681465350; x=1713001350;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VgAMX05rirmkksrZFlopxAqslkeiXp9JZzSBjT7SH8w=;
 b=Bk5UDqTutZPnZjKNbkiQtmjFa7MDpNZz4f/xd4lL+7vq4fYAlQ3bYO7f
 IBhbyeq7FVkXkM7uDIchsvGrC4oJm5bEYOPG4JjIaue9T1Sd6rTRdrZ7V
 lKLJvqrxlv1SNbTstcaky8725PkRvAvDPiatapBtR25W9a4vzovP72D/s
 TyKLVF/ll2D2dWG1pYUEZUCDgzoM4HKXhyfnIKoLMPPL67dmx9vcEOM5z
 cg8QRnvQBtfWgUP3D77NPRhjDtZJP5nVee+wHcQ69P8eo4D2CeZe1frOw
 dfhCFdi74TvzEiWXqo1yHL6Kua99aEIuYK1Pow7TLr6dcTiragep5Q5rF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="346259019"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="346259019"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="801137929"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="801137929"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Apr 2023 12:41:57 +0300
Message-Id: <c00df5cfc233520bc28dd972296197a8a619a6a0.1681465222.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681465222.git.jani.nikula@intel.com>
References: <cover.1681465222.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/10] drm/i915/display: move modeset
 probe/remove functions to intel_display_driver.c
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

High level display functionality only called from driver top level code.

v2:
- Remove unnecessary declarations for intel_sanitize_watermarks() and
  intel_atomic_check() (Gustavo)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 373 +----------------
 drivers/gpu/drm/i915/display/intel_display.h  |  21 +-
 .../drm/i915/display/intel_display_driver.c   | 374 ++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |   7 +
 4 files changed, 406 insertions(+), 369 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 36c8d70157c9..86cc2b6085a8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -54,7 +54,6 @@
 #include "i9xx_plane.h"
 #include "i9xx_wm.h"
 #include "icl_dsi.h"
-#include "intel_acpi.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_audio.h"
@@ -67,6 +66,7 @@
 #include "intel_crtc_state_dump.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
+#include "intel_display_driver.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
@@ -86,11 +86,8 @@
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_frontbuffer.h"
-#include "intel_gmbus.h"
-#include "intel_hdcp.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
-#include "intel_hti.h"
 #include "intel_lvds.h"
 #include "intel_lvds_regs.h"
 #include "intel_modeset_setup.h"
@@ -104,7 +101,6 @@
 #include "intel_plane_initial.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
-#include "intel_quirks.h"
 #include "intel_sdvo.h"
 #include "intel_snps_phy.h"
 #include "intel_tc.h"
@@ -174,7 +170,7 @@ int vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
 	return hpll;
 }
 
-static void intel_update_czclk(struct drm_i915_private *dev_priv)
+void intel_update_czclk(struct drm_i915_private *dev_priv)
 {
 	if (!(IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)))
 		return;
@@ -2582,7 +2578,7 @@ intel_link_compute_m_n(u16 bits_per_pixel, int nlanes,
 		    0x80000);
 }
 
-static void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
+void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
 {
 	/*
 	 * There may be no VBT; and if the BIOS enabled SSC we can
@@ -7235,7 +7231,7 @@ static void intel_atomic_helper_free_state(struct drm_i915_private *dev_priv)
 		drm_atomic_state_put(&state->base);
 }
 
-static void intel_atomic_helper_free_state_worker(struct work_struct *work)
+void intel_atomic_helper_free_state_worker(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
 		container_of(work, typeof(*dev_priv), display.atomic_helper.free_work);
@@ -7583,9 +7579,8 @@ static void intel_atomic_track_fbs(struct intel_atomic_state *state)
 					plane->frontbuffer_bit);
 }
 
-static int intel_atomic_commit(struct drm_device *dev,
-			       struct drm_atomic_state *_state,
-			       bool nonblock)
+int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
+			bool nonblock)
 {
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -7687,19 +7682,6 @@ void intel_plane_destroy(struct drm_plane *plane)
 	kfree(to_intel_plane(plane));
 }
 
-static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev_priv)
-{
-	struct intel_plane *plane;
-
-	for_each_intel_plane(&dev_priv->drm, plane) {
-		struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv,
-							      plane->pipe);
-
-		plane->base.possible_crtcs = drm_crtc_mask(&crtc->base);
-	}
-}
-
-
 int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
 				      struct drm_file *file)
 {
@@ -7779,7 +7761,7 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 	return true;
 }
 
-static void intel_setup_outputs(struct drm_i915_private *dev_priv)
+void intel_setup_outputs(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
 	bool dpd_is_edp = false;
@@ -8031,9 +8013,8 @@ static int max_dotclock(struct drm_i915_private *i915)
 	return max_dotclock;
 }
 
-static enum drm_mode_status
-intel_mode_valid(struct drm_device *dev,
-		 const struct drm_display_mode *mode)
+enum drm_mode_status intel_mode_valid(struct drm_device *dev,
+				      const struct drm_display_mode *mode)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	int hdisplay_max, htotal_max;
@@ -8173,18 +8154,6 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	return MODE_OK;
 }
 
-static const struct drm_mode_config_funcs intel_mode_funcs = {
-	.fb_create = intel_user_framebuffer_create,
-	.get_format_info = intel_fb_get_format_info,
-	.output_poll_changed = intel_fbdev_output_poll_changed,
-	.mode_valid = intel_mode_valid,
-	.atomic_check = intel_atomic_check,
-	.atomic_commit = intel_atomic_commit,
-	.atomic_state_alloc = intel_atomic_state_alloc,
-	.atomic_state_clear = intel_atomic_state_clear,
-	.atomic_state_free = intel_atomic_state_free,
-};
-
 static const struct intel_display_funcs skl_display_funcs = {
 	.get_pipe_config = hsw_get_pipe_config,
 	.crtc_enable = hsw_crtc_enable,
@@ -8256,21 +8225,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 	intel_fdi_init_hook(dev_priv);
 }
 
-void intel_modeset_init_hw(struct drm_i915_private *i915)
-{
-	struct intel_cdclk_state *cdclk_state;
-
-	if (!HAS_DISPLAY(i915))
-		return;
-
-	cdclk_state = to_intel_cdclk_state(i915->display.cdclk.obj.state);
-
-	intel_update_cdclk(i915);
-	intel_cdclk_dump_config(i915, &i915->display.cdclk.hw, "Current CDCLK");
-	cdclk_state->logical = cdclk_state->actual = i915->display.cdclk.hw;
-}
-
-static int intel_initial_commit(struct drm_device *dev)
+int intel_initial_commit(struct drm_device *dev)
 {
 	struct drm_atomic_state *state = NULL;
 	struct drm_modeset_acquire_ctx ctx;
@@ -8341,246 +8296,6 @@ static int intel_initial_commit(struct drm_device *dev)
 	return ret;
 }
 
-static const struct drm_mode_config_helper_funcs intel_mode_config_funcs = {
-	.atomic_commit_setup = drm_dp_mst_atomic_setup_commit,
-};
-
-static void intel_mode_config_init(struct drm_i915_private *i915)
-{
-	struct drm_mode_config *mode_config = &i915->drm.mode_config;
-
-	drm_mode_config_init(&i915->drm);
-	INIT_LIST_HEAD(&i915->display.global.obj_list);
-
-	mode_config->min_width = 0;
-	mode_config->min_height = 0;
-
-	mode_config->preferred_depth = 24;
-	mode_config->prefer_shadow = 1;
-
-	mode_config->funcs = &intel_mode_funcs;
-	mode_config->helper_private = &intel_mode_config_funcs;
-
-	mode_config->async_page_flip = HAS_ASYNC_FLIPS(i915);
-
-	/*
-	 * Maximum framebuffer dimensions, chosen to match
-	 * the maximum render engine surface size on gen4+.
-	 */
-	if (DISPLAY_VER(i915) >= 7) {
-		mode_config->max_width = 16384;
-		mode_config->max_height = 16384;
-	} else if (DISPLAY_VER(i915) >= 4) {
-		mode_config->max_width = 8192;
-		mode_config->max_height = 8192;
-	} else if (DISPLAY_VER(i915) == 3) {
-		mode_config->max_width = 4096;
-		mode_config->max_height = 4096;
-	} else {
-		mode_config->max_width = 2048;
-		mode_config->max_height = 2048;
-	}
-
-	if (IS_I845G(i915) || IS_I865G(i915)) {
-		mode_config->cursor_width = IS_I845G(i915) ? 64 : 512;
-		mode_config->cursor_height = 1023;
-	} else if (IS_I830(i915) || IS_I85X(i915) ||
-		   IS_I915G(i915) || IS_I915GM(i915)) {
-		mode_config->cursor_width = 64;
-		mode_config->cursor_height = 64;
-	} else {
-		mode_config->cursor_width = 256;
-		mode_config->cursor_height = 256;
-	}
-}
-
-static void intel_mode_config_cleanup(struct drm_i915_private *i915)
-{
-	intel_atomic_global_obj_cleanup(i915);
-	drm_mode_config_cleanup(&i915->drm);
-}
-
-/* part #1: call before irq install */
-int intel_modeset_init_noirq(struct drm_i915_private *i915)
-{
-	int ret;
-
-	if (i915_inject_probe_failure(i915))
-		return -ENODEV;
-
-	if (HAS_DISPLAY(i915)) {
-		ret = drm_vblank_init(&i915->drm,
-				      INTEL_NUM_PIPES(i915));
-		if (ret)
-			return ret;
-	}
-
-	intel_bios_init(i915);
-
-	ret = intel_vga_register(i915);
-	if (ret)
-		goto cleanup_bios;
-
-	/* FIXME: completely on the wrong abstraction layer */
-	ret = intel_power_domains_init(i915);
-	if (ret < 0)
-		goto cleanup_vga;
-
-	intel_power_domains_init_hw(i915, false);
-
-	if (!HAS_DISPLAY(i915))
-		return 0;
-
-	intel_dmc_init(i915);
-
-	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
-	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
-						WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
-
-	intel_mode_config_init(i915);
-
-	ret = intel_cdclk_init(i915);
-	if (ret)
-		goto cleanup_vga_client_pw_domain_dmc;
-
-	ret = intel_color_init(i915);
-	if (ret)
-		goto cleanup_vga_client_pw_domain_dmc;
-
-	ret = intel_dbuf_init(i915);
-	if (ret)
-		goto cleanup_vga_client_pw_domain_dmc;
-
-	ret = intel_bw_init(i915);
-	if (ret)
-		goto cleanup_vga_client_pw_domain_dmc;
-
-	init_llist_head(&i915->display.atomic_helper.free_list);
-	INIT_WORK(&i915->display.atomic_helper.free_work,
-		  intel_atomic_helper_free_state_worker);
-
-	intel_init_quirks(i915);
-
-	intel_fbc_init(i915);
-
-	return 0;
-
-cleanup_vga_client_pw_domain_dmc:
-	intel_dmc_fini(i915);
-	intel_power_domains_driver_remove(i915);
-cleanup_vga:
-	intel_vga_unregister(i915);
-cleanup_bios:
-	intel_bios_driver_remove(i915);
-
-	return ret;
-}
-
-/* part #2: call after irq install, but before gem init */
-int intel_modeset_init_nogem(struct drm_i915_private *i915)
-{
-	struct drm_device *dev = &i915->drm;
-	enum pipe pipe;
-	struct intel_crtc *crtc;
-	int ret;
-
-	if (!HAS_DISPLAY(i915))
-		return 0;
-
-	intel_wm_init(i915);
-
-	intel_panel_sanitize_ssc(i915);
-
-	intel_pps_setup(i915);
-
-	intel_gmbus_setup(i915);
-
-	drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
-		    INTEL_NUM_PIPES(i915),
-		    INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
-
-	for_each_pipe(i915, pipe) {
-		ret = intel_crtc_init(i915, pipe);
-		if (ret) {
-			intel_mode_config_cleanup(i915);
-			return ret;
-		}
-	}
-
-	intel_plane_possible_crtcs_init(i915);
-	intel_shared_dpll_init(i915);
-	intel_fdi_pll_freq_update(i915);
-
-	intel_update_czclk(i915);
-	intel_modeset_init_hw(i915);
-	intel_dpll_update_ref_clks(i915);
-
-	intel_hdcp_component_init(i915);
-
-	if (i915->display.cdclk.max_cdclk_freq == 0)
-		intel_update_max_cdclk(i915);
-
-	intel_hti_init(i915);
-
-	/* Just disable it once at startup */
-	intel_vga_disable(i915);
-	intel_setup_outputs(i915);
-
-	drm_modeset_lock_all(dev);
-	intel_modeset_setup_hw_state(i915, dev->mode_config.acquire_ctx);
-	intel_acpi_assign_connector_fwnodes(i915);
-	drm_modeset_unlock_all(dev);
-
-	for_each_intel_crtc(dev, crtc) {
-		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
-			continue;
-		intel_crtc_initial_plane_config(crtc);
-	}
-
-	/*
-	 * Make sure hardware watermarks really match the state we read out.
-	 * Note that we need to do this after reconstructing the BIOS fb's
-	 * since the watermark calculation done here will use pstate->fb.
-	 */
-	if (!HAS_GMCH(i915))
-		ilk_wm_sanitize(i915);
-
-	return 0;
-}
-
-/* part #3: call after gem init */
-int intel_modeset_init(struct drm_i915_private *i915)
-{
-	int ret;
-
-	if (!HAS_DISPLAY(i915))
-		return 0;
-
-	/*
-	 * Force all active planes to recompute their states. So that on
-	 * mode_setcrtc after probe, all the intel_plane_state variables
-	 * are already calculated and there is no assert_plane warnings
-	 * during bootup.
-	 */
-	ret = intel_initial_commit(&i915->drm);
-	if (ret)
-		drm_dbg_kms(&i915->drm, "Initial modeset failed, %d\n", ret);
-
-	intel_overlay_setup(i915);
-
-	ret = intel_fbdev_init(&i915->drm);
-	if (ret)
-		return ret;
-
-	/* Only enable hotplug handling once the fbdev is fully set up. */
-	intel_hpd_init(i915);
-	intel_hpd_poll_disable(i915);
-
-	skl_watermark_ipc_init(i915);
-
-	return 0;
-}
-
 void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
 	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
@@ -8726,7 +8441,7 @@ void intel_display_resume(struct drm_device *dev)
 		drm_atomic_state_put(state);
 }
 
-static void intel_hpd_poll_fini(struct drm_i915_private *i915)
+void intel_hpd_poll_fini(struct drm_i915_private *i915)
 {
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
@@ -8744,72 +8459,6 @@ static void intel_hpd_poll_fini(struct drm_i915_private *i915)
 	drm_connector_list_iter_end(&conn_iter);
 }
 
-/* part #1: call before irq uninstall */
-void intel_modeset_driver_remove(struct drm_i915_private *i915)
-{
-	if (!HAS_DISPLAY(i915))
-		return;
-
-	flush_workqueue(i915->display.wq.flip);
-	flush_workqueue(i915->display.wq.modeset);
-
-	flush_work(&i915->display.atomic_helper.free_work);
-	drm_WARN_ON(&i915->drm, !llist_empty(&i915->display.atomic_helper.free_list));
-
-	/*
-	 * MST topology needs to be suspended so we don't have any calls to
-	 * fbdev after it's finalized. MST will be destroyed later as part of
-	 * drm_mode_config_cleanup()
-	 */
-	intel_dp_mst_suspend(i915);
-}
-
-/* part #2: call after irq uninstall */
-void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
-{
-	if (!HAS_DISPLAY(i915))
-		return;
-
-	/*
-	 * Due to the hpd irq storm handling the hotplug work can re-arm the
-	 * poll handlers. Hence disable polling after hpd handling is shut down.
-	 */
-	intel_hpd_poll_fini(i915);
-
-	/* poll work can call into fbdev, hence clean that up afterwards */
-	intel_fbdev_fini(i915);
-
-	intel_unregister_dsm_handler();
-
-	/* flush any delayed tasks or pending work */
-	flush_scheduled_work();
-
-	intel_hdcp_component_fini(i915);
-
-	intel_mode_config_cleanup(i915);
-
-	intel_overlay_cleanup(i915);
-
-	intel_gmbus_teardown(i915);
-
-	destroy_workqueue(i915->display.wq.flip);
-	destroy_workqueue(i915->display.wq.modeset);
-
-	intel_fbc_cleanup(i915);
-}
-
-/* part #3: call after gem init */
-void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
-{
-	intel_dmc_fini(i915);
-
-	intel_power_domains_driver_remove(i915);
-
-	intel_vga_unregister(i915);
-
-	intel_bios_driver_remove(i915);
-}
-
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
 {
 	return DISPLAY_VER(i915) >= 6 && i915_vtd_active(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 6ff8faa1b5ac..01c27a4757a5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -63,6 +63,7 @@ struct intel_power_domain_mask;
 struct intel_remapped_info;
 struct intel_rotation_info;
 struct pci_dev;
+struct work_struct;
 
 
 #define pipe_name(p) ((p) + 'A')
@@ -521,13 +522,6 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
 void intel_update_watermarks(struct drm_i915_private *i915);
 
 /* modesetting */
-void intel_modeset_init_hw(struct drm_i915_private *i915);
-int intel_modeset_init_noirq(struct drm_i915_private *i915);
-int intel_modeset_init_nogem(struct drm_i915_private *i915);
-int intel_modeset_init(struct drm_i915_private *i915);
-void intel_modeset_driver_remove(struct drm_i915_private *i915);
-void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
-void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
 void intel_display_resume(struct drm_device *dev);
 int intel_modeset_all_pipes(struct intel_atomic_state *state,
 			    const char *reason);
@@ -536,6 +530,19 @@ void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
 					  struct intel_power_domain_mask *domains);
 
+/* interface for intel_display_driver.c */
+void intel_setup_outputs(struct drm_i915_private *i915);
+int intel_initial_commit(struct drm_device *dev);
+void intel_panel_sanitize_ssc(struct drm_i915_private *i915);
+void intel_update_czclk(struct drm_i915_private *i915);
+void intel_atomic_helper_free_state_worker(struct work_struct *work);
+enum drm_mode_status intel_mode_valid(struct drm_device *dev,
+				      const struct drm_display_mode *mode);
+int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
+			bool nonblock);
+
+void intel_hpd_poll_fini(struct drm_i915_private *i915);
+
 /* modesetting asserts */
 void assert_transcoder(struct drm_i915_private *dev_priv,
 		       enum transcoder cpu_transcoder, bool state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 882a2586aba4..f7805c6f1b63 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -9,17 +9,47 @@
 
 #include <linux/vga_switcheroo.h>
 #include <acpi/video.h>
+#include <drm/display/drm_dp_mst_helper.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_mode_config.h>
 #include <drm/drm_privacy_screen_consumer.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
+#include "i9xx_wm.h"
 #include "intel_acpi.h"
+#include "intel_atomic.h"
 #include "intel_audio.h"
+#include "intel_bios.h"
+#include "intel_bw.h"
+#include "intel_cdclk.h"
+#include "intel_color.h"
+#include "intel_crtc.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_driver.h"
+#include "intel_display_power.h"
+#include "intel_display_types.h"
+#include "intel_dmc.h"
+#include "intel_dp.h"
+#include "intel_dpll_mgr.h"
+#include "intel_fb.h"
+#include "intel_fbc.h"
 #include "intel_fbdev.h"
+#include "intel_fdi.h"
+#include "intel_gmbus.h"
+#include "intel_hdcp.h"
+#include "intel_hotplug.h"
+#include "intel_hti.h"
+#include "intel_modeset_setup.h"
 #include "intel_opregion.h"
+#include "intel_overlay.h"
+#include "intel_plane_initial.h"
+#include "intel_pps.h"
+#include "intel_quirks.h"
+#include "intel_vga.h"
+#include "intel_wm.h"
+#include "skl_watermark.h"
 
 bool intel_display_driver_probe_defer(struct pci_dev *pdev)
 {
@@ -42,6 +72,284 @@ bool intel_display_driver_probe_defer(struct pci_dev *pdev)
 	return false;
 }
 
+void intel_modeset_init_hw(struct drm_i915_private *i915)
+{
+	struct intel_cdclk_state *cdclk_state;
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	cdclk_state = to_intel_cdclk_state(i915->display.cdclk.obj.state);
+
+	intel_update_cdclk(i915);
+	intel_cdclk_dump_config(i915, &i915->display.cdclk.hw, "Current CDCLK");
+	cdclk_state->logical = cdclk_state->actual = i915->display.cdclk.hw;
+}
+
+static const struct drm_mode_config_funcs intel_mode_funcs = {
+	.fb_create = intel_user_framebuffer_create,
+	.get_format_info = intel_fb_get_format_info,
+	.output_poll_changed = intel_fbdev_output_poll_changed,
+	.mode_valid = intel_mode_valid,
+	.atomic_check = intel_atomic_check,
+	.atomic_commit = intel_atomic_commit,
+	.atomic_state_alloc = intel_atomic_state_alloc,
+	.atomic_state_clear = intel_atomic_state_clear,
+	.atomic_state_free = intel_atomic_state_free,
+};
+
+static const struct drm_mode_config_helper_funcs intel_mode_config_funcs = {
+	.atomic_commit_setup = drm_dp_mst_atomic_setup_commit,
+};
+
+static void intel_mode_config_init(struct drm_i915_private *i915)
+{
+	struct drm_mode_config *mode_config = &i915->drm.mode_config;
+
+	drm_mode_config_init(&i915->drm);
+	INIT_LIST_HEAD(&i915->display.global.obj_list);
+
+	mode_config->min_width = 0;
+	mode_config->min_height = 0;
+
+	mode_config->preferred_depth = 24;
+	mode_config->prefer_shadow = 1;
+
+	mode_config->funcs = &intel_mode_funcs;
+	mode_config->helper_private = &intel_mode_config_funcs;
+
+	mode_config->async_page_flip = HAS_ASYNC_FLIPS(i915);
+
+	/*
+	 * Maximum framebuffer dimensions, chosen to match
+	 * the maximum render engine surface size on gen4+.
+	 */
+	if (DISPLAY_VER(i915) >= 7) {
+		mode_config->max_width = 16384;
+		mode_config->max_height = 16384;
+	} else if (DISPLAY_VER(i915) >= 4) {
+		mode_config->max_width = 8192;
+		mode_config->max_height = 8192;
+	} else if (DISPLAY_VER(i915) == 3) {
+		mode_config->max_width = 4096;
+		mode_config->max_height = 4096;
+	} else {
+		mode_config->max_width = 2048;
+		mode_config->max_height = 2048;
+	}
+
+	if (IS_I845G(i915) || IS_I865G(i915)) {
+		mode_config->cursor_width = IS_I845G(i915) ? 64 : 512;
+		mode_config->cursor_height = 1023;
+	} else if (IS_I830(i915) || IS_I85X(i915) ||
+		   IS_I915G(i915) || IS_I915GM(i915)) {
+		mode_config->cursor_width = 64;
+		mode_config->cursor_height = 64;
+	} else {
+		mode_config->cursor_width = 256;
+		mode_config->cursor_height = 256;
+	}
+}
+
+static void intel_mode_config_cleanup(struct drm_i915_private *i915)
+{
+	intel_atomic_global_obj_cleanup(i915);
+	drm_mode_config_cleanup(&i915->drm);
+}
+
+static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev_priv)
+{
+	struct intel_plane *plane;
+
+	for_each_intel_plane(&dev_priv->drm, plane) {
+		struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv,
+							      plane->pipe);
+
+		plane->base.possible_crtcs = drm_crtc_mask(&crtc->base);
+	}
+}
+
+/* part #1: call before irq install */
+int intel_modeset_init_noirq(struct drm_i915_private *i915)
+{
+	int ret;
+
+	if (i915_inject_probe_failure(i915))
+		return -ENODEV;
+
+	if (HAS_DISPLAY(i915)) {
+		ret = drm_vblank_init(&i915->drm,
+				      INTEL_NUM_PIPES(i915));
+		if (ret)
+			return ret;
+	}
+
+	intel_bios_init(i915);
+
+	ret = intel_vga_register(i915);
+	if (ret)
+		goto cleanup_bios;
+
+	/* FIXME: completely on the wrong abstraction layer */
+	ret = intel_power_domains_init(i915);
+	if (ret < 0)
+		goto cleanup_vga;
+
+	intel_power_domains_init_hw(i915, false);
+
+	if (!HAS_DISPLAY(i915))
+		return 0;
+
+	intel_dmc_init(i915);
+
+	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
+	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
+						WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
+
+	intel_mode_config_init(i915);
+
+	ret = intel_cdclk_init(i915);
+	if (ret)
+		goto cleanup_vga_client_pw_domain_dmc;
+
+	ret = intel_color_init(i915);
+	if (ret)
+		goto cleanup_vga_client_pw_domain_dmc;
+
+	ret = intel_dbuf_init(i915);
+	if (ret)
+		goto cleanup_vga_client_pw_domain_dmc;
+
+	ret = intel_bw_init(i915);
+	if (ret)
+		goto cleanup_vga_client_pw_domain_dmc;
+
+	init_llist_head(&i915->display.atomic_helper.free_list);
+	INIT_WORK(&i915->display.atomic_helper.free_work,
+		  intel_atomic_helper_free_state_worker);
+
+	intel_init_quirks(i915);
+
+	intel_fbc_init(i915);
+
+	return 0;
+
+cleanup_vga_client_pw_domain_dmc:
+	intel_dmc_fini(i915);
+	intel_power_domains_driver_remove(i915);
+cleanup_vga:
+	intel_vga_unregister(i915);
+cleanup_bios:
+	intel_bios_driver_remove(i915);
+
+	return ret;
+}
+
+/* part #2: call after irq install, but before gem init */
+int intel_modeset_init_nogem(struct drm_i915_private *i915)
+{
+	struct drm_device *dev = &i915->drm;
+	enum pipe pipe;
+	struct intel_crtc *crtc;
+	int ret;
+
+	if (!HAS_DISPLAY(i915))
+		return 0;
+
+	intel_wm_init(i915);
+
+	intel_panel_sanitize_ssc(i915);
+
+	intel_pps_setup(i915);
+
+	intel_gmbus_setup(i915);
+
+	drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
+		    INTEL_NUM_PIPES(i915),
+		    INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
+
+	for_each_pipe(i915, pipe) {
+		ret = intel_crtc_init(i915, pipe);
+		if (ret) {
+			intel_mode_config_cleanup(i915);
+			return ret;
+		}
+	}
+
+	intel_plane_possible_crtcs_init(i915);
+	intel_shared_dpll_init(i915);
+	intel_fdi_pll_freq_update(i915);
+
+	intel_update_czclk(i915);
+	intel_modeset_init_hw(i915);
+	intel_dpll_update_ref_clks(i915);
+
+	intel_hdcp_component_init(i915);
+
+	if (i915->display.cdclk.max_cdclk_freq == 0)
+		intel_update_max_cdclk(i915);
+
+	intel_hti_init(i915);
+
+	/* Just disable it once at startup */
+	intel_vga_disable(i915);
+	intel_setup_outputs(i915);
+
+	drm_modeset_lock_all(dev);
+	intel_modeset_setup_hw_state(i915, dev->mode_config.acquire_ctx);
+	intel_acpi_assign_connector_fwnodes(i915);
+	drm_modeset_unlock_all(dev);
+
+	for_each_intel_crtc(dev, crtc) {
+		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
+			continue;
+		intel_crtc_initial_plane_config(crtc);
+	}
+
+	/*
+	 * Make sure hardware watermarks really match the state we read out.
+	 * Note that we need to do this after reconstructing the BIOS fb's
+	 * since the watermark calculation done here will use pstate->fb.
+	 */
+	if (!HAS_GMCH(i915))
+		ilk_wm_sanitize(i915);
+
+	return 0;
+}
+
+/* part #3: call after gem init */
+int intel_modeset_init(struct drm_i915_private *i915)
+{
+	int ret;
+
+	if (!HAS_DISPLAY(i915))
+		return 0;
+
+	/*
+	 * Force all active planes to recompute their states. So that on
+	 * mode_setcrtc after probe, all the intel_plane_state variables
+	 * are already calculated and there is no assert_plane warnings
+	 * during bootup.
+	 */
+	ret = intel_initial_commit(&i915->drm);
+	if (ret)
+		drm_dbg_kms(&i915->drm, "Initial modeset failed, %d\n", ret);
+
+	intel_overlay_setup(i915);
+
+	ret = intel_fbdev_init(&i915->drm);
+	if (ret)
+		return ret;
+
+	/* Only enable hotplug handling once the fbdev is fully set up. */
+	intel_hpd_init(i915);
+	intel_hpd_poll_disable(i915);
+
+	skl_watermark_ipc_init(i915);
+
+	return 0;
+}
+
 void intel_display_driver_register(struct drm_i915_private *i915)
 {
 	if (!HAS_DISPLAY(i915))
@@ -73,6 +381,72 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 	drm_kms_helper_poll_init(&i915->drm);
 }
 
+/* part #1: call before irq uninstall */
+void intel_modeset_driver_remove(struct drm_i915_private *i915)
+{
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	flush_workqueue(i915->display.wq.flip);
+	flush_workqueue(i915->display.wq.modeset);
+
+	flush_work(&i915->display.atomic_helper.free_work);
+	drm_WARN_ON(&i915->drm, !llist_empty(&i915->display.atomic_helper.free_list));
+
+	/*
+	 * MST topology needs to be suspended so we don't have any calls to
+	 * fbdev after it's finalized. MST will be destroyed later as part of
+	 * drm_mode_config_cleanup()
+	 */
+	intel_dp_mst_suspend(i915);
+}
+
+/* part #2: call after irq uninstall */
+void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
+{
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	/*
+	 * Due to the hpd irq storm handling the hotplug work can re-arm the
+	 * poll handlers. Hence disable polling after hpd handling is shut down.
+	 */
+	intel_hpd_poll_fini(i915);
+
+	/* poll work can call into fbdev, hence clean that up afterwards */
+	intel_fbdev_fini(i915);
+
+	intel_unregister_dsm_handler();
+
+	/* flush any delayed tasks or pending work */
+	flush_scheduled_work();
+
+	intel_hdcp_component_fini(i915);
+
+	intel_mode_config_cleanup(i915);
+
+	intel_overlay_cleanup(i915);
+
+	intel_gmbus_teardown(i915);
+
+	destroy_workqueue(i915->display.wq.flip);
+	destroy_workqueue(i915->display.wq.modeset);
+
+	intel_fbc_cleanup(i915);
+}
+
+/* part #3: call after gem init */
+void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
+{
+	intel_dmc_fini(i915);
+
+	intel_power_domains_driver_remove(i915);
+
+	intel_vga_unregister(i915);
+
+	intel_bios_driver_remove(i915);
+}
+
 void intel_display_driver_unregister(struct drm_i915_private *i915)
 {
 	if (!HAS_DISPLAY(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 744117b04ed4..947b666575ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -12,7 +12,14 @@ struct drm_i915_private;
 struct pci_dev;
 
 bool intel_display_driver_probe_defer(struct pci_dev *pdev);
+void intel_modeset_init_hw(struct drm_i915_private *i915);
+int intel_modeset_init_noirq(struct drm_i915_private *i915);
+int intel_modeset_init_nogem(struct drm_i915_private *i915);
+int intel_modeset_init(struct drm_i915_private *i915);
 void intel_display_driver_register(struct drm_i915_private *i915);
+void intel_modeset_driver_remove(struct drm_i915_private *i915);
+void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
+void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
 void intel_display_driver_unregister(struct drm_i915_private *i915);
 
 #endif /* __INTEL_DISPLAY_DRIVER_H__ */
-- 
2.39.2

