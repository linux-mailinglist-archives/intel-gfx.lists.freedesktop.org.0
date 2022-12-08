Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B3B6473C4
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 17:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 251A910E4BF;
	Thu,  8 Dec 2022 16:01:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE37710E4BB
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 16:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670515308; x=1702051308;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Adq4Y2uQGDrDaYjtwJYsnaVrdO7ARdZoy/Vo3hLmr4Q=;
 b=YjytSyfS8MUQ1qn39WA8WVQVMd8VJ+ow7SynvzaHG4pi+JGdUlr+1zm0
 skCh5e9q7eA9QjfTV9aI3yYuv9jJ9QELws68SK47du/6HPuYcYVhOyogF
 61SXvq+8EmhvgSJE8k8IglM4KMVUfNwUPYkXv/mNJukZskL4JTmPr9//2
 zWwIgFbJoz0RanHZGLa+WjG4dE9xtEMOI9Kd4B7cFXJy0mKh/i37TVrTB
 oep0Z5WbmxogOUxd+gBWv/XPiIokkKVUi6n6lz+00RlkLaru3Px6BPVmI
 9hYTOoZzCBDTY6qFnvnxO8970pHtOjLEZlwT4oBBe3ogXQ6F/qeJ4BKSJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="304861123"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="304861123"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 08:01:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="679580766"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="679580766"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 08:01:13 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 17:01:00 +0100
Message-Id: <20221208160103.308581-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/display: kill fetch_and_zero usage
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Macro fetch_and_zero will be dropped.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 ++---
 drivers/gpu/drm/i915/display/intel_display.c  |  4 ++--
 .../drm/i915/display/intel_display_power.c    | 22 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |  6 ++---
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  4 ++--
 drivers/gpu/drm/i915/display/intel_pps.c      |  4 ++--
 drivers/gpu/drm/i915/display/intel_tc.c       |  4 ++--
 10 files changed, 29 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index d16b30a2dded33..505e21e5ae1df7 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1425,7 +1425,7 @@ static void gen11_dsi_disable_io_power(struct intel_encoder *encoder)
 	for_each_dsi_port(port, intel_dsi->ports) {
 		intel_wakeref_t wakeref;
 
-		wakeref = fetch_and_zero(&intel_dsi->io_wakeref[port]);
+		wakeref = xchg(&intel_dsi->io_wakeref[port], 0);
 		intel_display_power_put(dev_priv,
 					port == PORT_A ?
 					POWER_DOMAIN_PORT_DDI_IO_A :
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5f9a2410fc4c35..fca39847390a53 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -902,7 +902,7 @@ main_link_aux_power_domain_put(struct intel_digital_port *dig_port,
 		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
 	intel_wakeref_t wf;
 
-	wf = fetch_and_zero(&dig_port->aux_wakeref);
+	wf = xchg(&dig_port->aux_wakeref, 0);
 	if (!wf)
 		return;
 
@@ -2678,7 +2678,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	if (!intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_display_power_put(dev_priv,
 					dig_port->ddi_io_power_domain,
-					fetch_and_zero(&dig_port->ddi_io_wakeref));
+					xchg(&dig_port->ddi_io_wakeref, 0));
 
 	intel_ddi_disable_clock(encoder);
 }
@@ -2705,7 +2705,7 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 
 	intel_display_power_put(dev_priv,
 				dig_port->ddi_io_power_domain,
-				fetch_and_zero(&dig_port->ddi_io_wakeref));
+				xchg(&dig_port->ddi_io_wakeref, 0));
 
 	intel_ddi_disable_clock(encoder);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 32b25715718644..16d55f9c8f9e91 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -964,7 +964,7 @@ void intel_display_finish_reset(struct drm_i915_private *i915)
 	if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
 		return;
 
-	state = fetch_and_zero(&i915->display.restore.modeset_state);
+	state = xchg(&i915->display.restore.modeset_state, NULL);
 	if (!state)
 		goto unlock;
 
@@ -7591,7 +7591,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 * cleanup. So copy and reset the dsb structure to sync with
 		 * commit_done and later do dsb cleanup in cleanup_work.
 		 */
-		old_crtc_state->dsb = fetch_and_zero(&new_crtc_state->dsb);
+		old_crtc_state->dsb = xchg(&new_crtc_state->dsb, NULL);
 	}
 
 	/* Underruns don't always raise interrupts, so check manually */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3adba64937de68..f7640573683041 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -474,7 +474,7 @@ intel_display_power_grab_async_put_ref(struct drm_i915_private *dev_priv,
 
 	cancel_delayed_work(&power_domains->async_put_work);
 	intel_runtime_pm_put_raw(&dev_priv->runtime_pm,
-				 fetch_and_zero(&power_domains->async_put_wakeref));
+				 xchg(&power_domains->async_put_wakeref, 0));
 out_verify:
 	verify_async_put_domains_state(power_domains);
 
@@ -660,7 +660,7 @@ intel_display_power_put_async_work(struct work_struct *work)
 	 * Bail out if all the domain refs pending to be released were grabbed
 	 * by subsequent gets or a flush_work.
 	 */
-	old_work_wakeref = fetch_and_zero(&power_domains->async_put_wakeref);
+	old_work_wakeref = xchg(&power_domains->async_put_wakeref, 0);
 	if (!old_work_wakeref)
 		goto out_verify;
 
@@ -675,7 +675,7 @@ intel_display_power_put_async_work(struct work_struct *work)
 		bitmap_zero(power_domains->async_put_domains[1].bits,
 			    POWER_DOMAIN_NUM);
 		queue_async_put_domains_work(power_domains,
-					     fetch_and_zero(&new_work_wakeref));
+					     xchg(&new_work_wakeref, 0));
 	} else {
 		/*
 		 * Cancel the work that got queued after this one got dequeued,
@@ -729,7 +729,7 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
 	} else {
 		set_bit(domain, power_domains->async_put_domains[0].bits);
 		queue_async_put_domains_work(power_domains,
-					     fetch_and_zero(&work_wakeref));
+					     xchg(&work_wakeref, 0));
 	}
 
 out_verify:
@@ -763,7 +763,7 @@ void intel_display_power_flush_work(struct drm_i915_private *i915)
 
 	mutex_lock(&power_domains->lock);
 
-	work_wakeref = fetch_and_zero(&power_domains->async_put_wakeref);
+	work_wakeref = xchg(&power_domains->async_put_wakeref, 0);
 	if (!work_wakeref)
 		goto out_verify;
 
@@ -891,7 +891,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 		intel_wakeref_t __maybe_unused wf = -1;
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
-		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
+		wf = xchg(&power_domain_set->wakerefs[domain], 0);
 #endif
 		intel_display_power_put(i915, domain, wf);
 		clear_bit(domain, power_domain_set->mask.bits);
@@ -1943,12 +1943,12 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 void intel_power_domains_driver_remove(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref __maybe_unused =
-		fetch_and_zero(&i915->display.power.domains.init_wakeref);
+		xchg(&i915->display.power.domains.init_wakeref, 0);
 
 	/* Remove the refcount we took to keep power well support disabled. */
 	if (!i915->params.disable_power_well)
 		intel_display_power_put(i915, POWER_DOMAIN_INIT,
-					fetch_and_zero(&i915->display.power.domains.disable_wakeref));
+					xchg(&i915->display.power.domains.disable_wakeref, 0));
 
 	intel_display_power_flush_work_sync(i915);
 
@@ -2004,7 +2004,7 @@ void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
 void intel_power_domains_enable(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref __maybe_unused =
-		fetch_and_zero(&i915->display.power.domains.init_wakeref);
+		xchg(&i915->display.power.domains.init_wakeref, 0);
 
 	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
 	intel_power_domains_verify_state(i915);
@@ -2044,7 +2044,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
 {
 	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	intel_wakeref_t wakeref __maybe_unused =
-		fetch_and_zero(&power_domains->init_wakeref);
+		xchg(&power_domains->init_wakeref, 0);
 
 	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
 
@@ -2069,7 +2069,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
 	 */
 	if (!i915->params.disable_power_well)
 		intel_display_power_put(i915, POWER_DOMAIN_INIT,
-					fetch_and_zero(&i915->display.power.domains.disable_wakeref));
+					xchg(&i915->display.power.domains.disable_wakeref, 0));
 
 	intel_display_power_flush_work(i915);
 	intel_power_domains_verify_state(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index eff3add706117c..8b37af6f04ba05 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -838,7 +838,7 @@ static void intel_dmc_runtime_pm_get(struct drm_i915_private *dev_priv)
 static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
 {
 	intel_wakeref_t wakeref __maybe_unused =
-		fetch_and_zero(&dev_priv->display.dmc.wakeref);
+		xchg(&dev_priv->display.dmc.wakeref, 0);
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 1aca7552a85d03..92a506e0188c9f 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -285,17 +285,17 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 	struct i915_vma *vma;
 
 	if (!intel_fb_uses_dpt(fb)) {
-		vma = fetch_and_zero(&old_plane_state->ggtt_vma);
+		vma = xchg(&old_plane_state->ggtt_vma, NULL);
 		if (vma)
 			intel_unpin_fb_vma(vma, old_plane_state->flags);
 	} else {
 		struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 
-		vma = fetch_and_zero(&old_plane_state->dpt_vma);
+		vma = xchg(&old_plane_state->dpt_vma, NULL);
 		if (vma)
 			intel_unpin_fb_vma(vma, old_plane_state->flags);
 
-		vma = fetch_and_zero(&old_plane_state->ggtt_vma);
+		vma = xchg(&old_plane_state->ggtt_vma, NULL);
 		if (vma)
 			intel_dpt_unpin(intel_fb->dpt_vm);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 03ed4607a46d21..e9cb951abf2776 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -591,7 +591,8 @@ void intel_fbdev_unregister(struct drm_i915_private *dev_priv)
 
 void intel_fbdev_fini(struct drm_i915_private *dev_priv)
 {
-	struct intel_fbdev *ifbdev = fetch_and_zero(&dev_priv->display.fbdev.fbdev);
+	struct intel_fbdev *ifbdev = xchg(&dev_priv->display.fbdev.fbdev,
+					  NULL);
 
 	if (!ifbdev)
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index c12bdca8da9ba6..8a24c515145157 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -355,7 +355,7 @@ static void intel_overlay_release_old_vma(struct intel_overlay *overlay)
 {
 	struct i915_vma *vma;
 
-	vma = fetch_and_zero(&overlay->old_vma);
+	vma = xchg(&overlay->old_vma, NULL);
 	if (drm_WARN_ON(&overlay->i915->drm, !vma))
 		return;
 
@@ -1428,7 +1428,7 @@ void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
 {
 	struct intel_overlay *overlay;
 
-	overlay = fetch_and_zero(&dev_priv->display.overlay);
+	overlay = xchg(&dev_priv->display.overlay, NULL);
 	if (!overlay)
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 9bbf41a076f728..1359253013bb63 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -690,7 +690,7 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 
 	intel_display_power_put(dev_priv,
 				intel_aux_power_domain(dig_port),
-				fetch_and_zero(&intel_dp->pps.vdd_wakeref));
+				xchg(&intel_dp->pps.vdd_wakeref, 0));
 }
 
 void intel_pps_vdd_off_sync(struct intel_dp *intel_dp)
@@ -866,7 +866,7 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 	/* We got a reference when we enabled the VDD. */
 	intel_display_power_put(dev_priv,
 				intel_aux_power_domain(dig_port),
-				fetch_and_zero(&intel_dp->pps.vdd_wakeref));
+				xchg(&intel_dp->pps.vdd_wakeref, 0));
 }
 
 void intel_pps_off(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 70624b4b2d38c1..c9272ef93d8629 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -671,7 +671,7 @@ static void intel_tc_port_update_mode(struct intel_digital_port *dig_port,
 
 	/* Get power domain matching the new mode after reset. */
 	tc_cold_unblock(dig_port, dig_port->tc_lock_power_domain,
-			fetch_and_zero(&dig_port->tc_lock_wakeref));
+			xchg(&dig_port->tc_lock_wakeref, 0));
 	if (dig_port->tc_mode != TC_PORT_DISCONNECTED)
 		dig_port->tc_lock_wakeref = tc_cold_block(dig_port,
 							  &dig_port->tc_lock_power_domain);
@@ -767,7 +767,7 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
 		icl_tc_phy_disconnect(dig_port);
 
 		tc_cold_unblock(dig_port, dig_port->tc_lock_power_domain,
-				fetch_and_zero(&dig_port->tc_lock_wakeref));
+				xchg(&dig_port->tc_lock_wakeref, 0));
 	}
 
 	drm_dbg_kms(&i915->drm, "Port %s: sanitize mode (%s)\n",
-- 
2.34.1

