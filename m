Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18528AE02C8
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 12:37:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7038810E9F3;
	Thu, 19 Jun 2025 10:37:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HgFcZyTm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFDB110E9F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jun 2025 10:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750329440; x=1781865440;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hmlKvtZMiYhxQnY+27LL0RFnycWM0OXuDvATxlg6at4=;
 b=HgFcZyTm3aLBiHOlV1yMDrOQlfHNsdCHcUlPZt9+bII97LvefiPsXpCH
 lS08uMBiXwUJE/KpQ7JVIf1MSiK8aGEV4GWDhCyfbeMnS9Kn9WZj+A4z2
 FoDNgaooRfNrS7KgXbY9vC1bPtkLT1DeyD0iMC1mCh3XI6Wmrc2IHoUpk
 5lhXG2jzBsfH8mTMxv6gL6zHW8nOcezYGAexnqXwt8RHix0VzId0enHuZ
 +GKQWZcb6cuLFlfjXjr/eSHUkNxEMRLoNbvmBJKnIEqDaFLbJ7Se93RtS
 sCWMg8X/upFLsTfLI8PfXjBF4zGoptpAvWIVlt03UaBdXRoD43QOZocVY w==;
X-CSE-ConnectionGUID: em5R9x+2S2GdHDWjk8sL2w==
X-CSE-MsgGUID: ggwxpTD8TwuSZ6gIozECbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="70014829"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="70014829"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 03:37:20 -0700
X-CSE-ConnectionGUID: EsYQxxqtTJGL8ElwNB+3+Q==
X-CSE-MsgGUID: 9xUx8oNbS32LFxWqsqx8dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="187811040"
Received: from dgolov-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.80.132])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 03:37:18 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/display: move unordered works to new private
 workqueue
Date: Thu, 19 Jun 2025 13:36:59 +0300
Message-ID: <20250619103704.1199008-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
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

Create a new unordered workqueue to be used by the display code
instead of relying on the i915 one.  Then move all the unordered works
used in the display code to use this new queue.

Since this is an unordered workqueue, by definition there can't be any
order dependency with non-display works, so no extra care is needed
in regard to that.

This is part of the effort to isolate the display code from i915.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    |  4 +--
 .../gpu/drm/i915/display/intel_display_core.h |  3 ++
 .../drm/i915/display/intel_display_driver.c   | 28 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dmc.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |  4 +--
 drivers/gpu/drm/i915/display/intel_fbc.c      |  4 +--
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 20 ++++++-------
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 12 ++------
 drivers/gpu/drm/i915/display/intel_opregion.c |  3 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  9 ++----
 11 files changed, 44 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 2867d76d1a5e..42c923f416b3 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -64,10 +64,10 @@ static void intel_connector_modeset_retry_work_fn(struct work_struct *work)
 
 void intel_connector_queue_modeset_retry_work(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
 	drm_connector_get(&connector->base);
-	if (!queue_work(i915->unordered_wq, &connector->modeset_retry_work))
+	if (!queue_work(display->wq.unordered, &connector->modeset_retry_work))
 		drm_connector_put(&connector->base);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 32cb0e59c81e..25b497280086 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -570,6 +570,9 @@ struct intel_display {
 
 		/* hipri wq for commit cleanups */
 		struct workqueue_struct *cleanup;
+
+		/* unordered workqueue for all display unordered work */
+		struct workqueue_struct *unordered;
 	} wq;
 
 	/* Grouping using named structs. Keep sorted. */
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index ec799a1773e4..1d38c022762b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -242,8 +242,6 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return 0;
 
-	intel_dmc_init(display);
-
 	display->hotplug.dp_wq = alloc_ordered_workqueue("intel-dp", 0);
 	if (!display->hotplug.dp_wq) {
 		ret = -ENOMEM;
@@ -269,27 +267,35 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 		goto cleanup_wq_flip;
 	}
 
+	display->wq.unordered = alloc_workqueue("display_unordered", 0, 0);
+	if (!display->wq.unordered) {
+		ret = -ENOMEM;
+		goto cleanup_wq_cleanup;
+	}
+
+	intel_dmc_init(display);
+
 	intel_mode_config_init(display);
 
 	ret = intel_cdclk_init(display);
 	if (ret)
-		goto cleanup_wq_cleanup;
+		goto cleanup_wq_unordered;
 
 	ret = intel_color_init(display);
 	if (ret)
-		goto cleanup_wq_cleanup;
+		goto cleanup_wq_unordered;
 
 	ret = intel_dbuf_init(display);
 	if (ret)
-		goto cleanup_wq_cleanup;
+		goto cleanup_wq_unordered;
 
 	ret = intel_bw_init(display);
 	if (ret)
-		goto cleanup_wq_cleanup;
+		goto cleanup_wq_unordered;
 
 	ret = intel_pmdemand_init(display);
 	if (ret)
-		goto cleanup_wq_cleanup;
+		goto cleanup_wq_unordered;
 
 	intel_init_quirks(display);
 
@@ -297,6 +303,8 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 
 	return 0;
 
+cleanup_wq_unordered:
+	destroy_workqueue(display->wq.unordered);
 cleanup_wq_cleanup:
 	destroy_workqueue(display->wq.cleanup);
 cleanup_wq_flip:
@@ -600,6 +608,7 @@ void intel_display_driver_remove(struct intel_display *display)
 	flush_workqueue(display->wq.flip);
 	flush_workqueue(display->wq.modeset);
 	flush_workqueue(display->wq.cleanup);
+	flush_workqueue(display->wq.unordered);
 
 	/*
 	 * MST topology needs to be suspended so we don't have any calls to
@@ -612,8 +621,6 @@ void intel_display_driver_remove(struct intel_display *display)
 /* part #2: call after irq uninstall */
 void intel_display_driver_remove_noirq(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (!HAS_DISPLAY(display))
 		return;
 
@@ -628,7 +635,7 @@ void intel_display_driver_remove_noirq(struct intel_display *display)
 	intel_unregister_dsm_handler();
 
 	/* flush any delayed tasks or pending work */
-	flush_workqueue(i915->unordered_wq);
+	flush_workqueue(display->wq.unordered);
 
 	intel_hdcp_component_fini(display);
 
@@ -644,6 +651,7 @@ void intel_display_driver_remove_noirq(struct intel_display *display)
 	destroy_workqueue(display->wq.flip);
 	destroy_workqueue(display->wq.modeset);
 	destroy_workqueue(display->wq.cleanup);
+	destroy_workqueue(display->wq.unordered);
 
 	intel_fbc_cleanup(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 1295d8245a2e..eb47deafc306 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1171,7 +1171,6 @@ static void dmc_load_work_fn(struct work_struct *work)
  */
 void intel_dmc_init(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dmc *dmc;
 
 	if (!HAS_DMC(display))
@@ -1214,7 +1213,7 @@ void intel_dmc_init(struct intel_display *display)
 	display->dmc.dmc = dmc;
 
 	drm_dbg_kms(display->drm, "Loading %s\n", dmc->fw_path);
-	queue_work(i915->unordered_wq, &dmc->work);
+	queue_work(display->wq.unordered, &dmc->work);
 
 	return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 3fa94510458d..3e775bb1b57a 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -123,9 +123,9 @@ static void intel_drrs_set_state(struct intel_crtc *crtc,
 
 static void intel_drrs_schedule_work(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
-	mod_delayed_work(i915->unordered_wq, &crtc->drrs.work, msecs_to_jiffies(1000));
+	mod_delayed_work(display->wq.unordered, &crtc->drrs.work, msecs_to_jiffies(1000));
 }
 
 static unsigned int intel_drrs_frontbuffer_bits(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ec1ef8694c35..6c0a06438dd5 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -2011,7 +2011,7 @@ void intel_fbc_reset_underrun(struct intel_display *display)
 
 static void __intel_fbc_handle_fifo_underrun_irq(struct intel_fbc *fbc)
 {
-	struct drm_i915_private *i915 = to_i915(fbc->display->drm);
+	struct intel_display *display = fbc->display;
 
 	/*
 	 * There's no guarantee that underrun_detected won't be set to true
@@ -2024,7 +2024,7 @@ static void __intel_fbc_handle_fifo_underrun_irq(struct intel_fbc *fbc)
 	if (READ_ONCE(fbc->underrun_detected))
 		return;
 
-	queue_work(i915->unordered_wq, &fbc->underrun_work);
+	queue_work(display->wq.unordered, &fbc->underrun_work);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 5235e4162555..28e5d673ff33 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1089,7 +1089,6 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
 				    u64 value, bool update_property)
 {
 	struct intel_display *display = to_intel_display(connector);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 
@@ -1110,7 +1109,7 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
 	hdcp->value = value;
 	if (update_property) {
 		drm_connector_get(&connector->base);
-		if (!queue_work(i915->unordered_wq, &hdcp->prop_work))
+		if (!queue_work(display->wq.unordered, &hdcp->prop_work))
 			drm_connector_put(&connector->base);
 	}
 }
@@ -2237,16 +2236,15 @@ static void intel_hdcp_check_work(struct work_struct *work)
 					       check_work);
 	struct intel_connector *connector = intel_hdcp_to_connector(hdcp);
 	struct intel_display *display = to_intel_display(connector);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (drm_connector_is_unregistered(&connector->base))
 		return;
 
 	if (!intel_hdcp2_check_link(connector))
-		queue_delayed_work(i915->unordered_wq, &hdcp->check_work,
+		queue_delayed_work(display->wq.unordered, &hdcp->check_work,
 				   DRM_HDCP2_CHECK_PERIOD_MS);
 	else if (!intel_hdcp_check_link(connector))
-		queue_delayed_work(i915->unordered_wq, &hdcp->check_work,
+		queue_delayed_work(display->wq.unordered, &hdcp->check_work,
 				   DRM_HDCP_CHECK_PERIOD_MS);
 }
 
@@ -2437,7 +2435,6 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 			      const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
@@ -2496,7 +2493,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 	}
 
 	if (!ret) {
-		queue_delayed_work(i915->unordered_wq, &hdcp->check_work,
+		queue_delayed_work(display->wq.unordered, &hdcp->check_work,
 				   check_link_interval);
 		intel_hdcp_update_value(connector,
 					DRM_MODE_CONTENT_PROTECTION_ENABLED,
@@ -2567,7 +2564,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 				to_intel_connector(conn_state->connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	bool content_protection_type_changed, desired_and_not_enabled = false;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
 	if (!connector->hdcp.shim)
 		return;
@@ -2594,7 +2591,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 		mutex_lock(&hdcp->mutex);
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
 		drm_connector_get(&connector->base);
-		if (!queue_work(i915->unordered_wq, &hdcp->prop_work))
+		if (!queue_work(display->wq.unordered, &hdcp->prop_work))
 			drm_connector_put(&connector->base);
 		mutex_unlock(&hdcp->mutex);
 	}
@@ -2612,7 +2609,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 		 */
 		if (!desired_and_not_enabled && !content_protection_type_changed) {
 			drm_connector_get(&connector->base);
-			if (!queue_work(i915->unordered_wq, &hdcp->prop_work))
+			if (!queue_work(display->wq.unordered, &hdcp->prop_work))
 				drm_connector_put(&connector->base);
 
 		}
@@ -2736,7 +2733,6 @@ void intel_hdcp_handle_cp_irq(struct intel_connector *connector)
 {
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	struct intel_display *display = to_intel_display(connector);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (!hdcp->shim)
 		return;
@@ -2744,7 +2740,7 @@ void intel_hdcp_handle_cp_irq(struct intel_connector *connector)
 	atomic_inc(&connector->hdcp.cp_irq_count);
 	wake_up_all(&connector->hdcp.cp_irq_queue);
 
-	queue_delayed_work(i915->unordered_wq, &hdcp->check_work, 0);
+	queue_delayed_work(display->wq.unordered, &hdcp->check_work, 0);
 }
 
 static void __intel_hdcp_info(struct seq_file *m, struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 901fda434af1..265aa97fcc75 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -193,40 +193,34 @@ static bool detection_work_enabled(struct intel_display *display)
 static bool
 mod_delayed_detection_work(struct intel_display *display, struct delayed_work *work, int delay)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	lockdep_assert_held(&display->irq.lock);
 
 	if (!detection_work_enabled(display))
 		return false;
 
-	return mod_delayed_work(i915->unordered_wq, work, delay);
+	return mod_delayed_work(display->wq.unordered, work, delay);
 }
 
 static bool
 queue_delayed_detection_work(struct intel_display *display, struct delayed_work *work, int delay)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	lockdep_assert_held(&display->irq.lock);
 
 	if (!detection_work_enabled(display))
 		return false;
 
-	return queue_delayed_work(i915->unordered_wq, work, delay);
+	return queue_delayed_work(display->wq.unordered, work, delay);
 }
 
 static bool
 queue_detection_work(struct intel_display *display, struct work_struct *work)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	lockdep_assert_held(&display->irq.lock);
 
 	if (!detection_work_enabled(display))
 		return false;
 
-	return queue_work(i915->unordered_wq, work);
+	return queue_work(display->wq.unordered, work);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 5535cb799431..2b8538fcfd1d 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -665,11 +665,10 @@ bool intel_opregion_asle_present(struct intel_display *display)
 
 void intel_opregion_asle_intr(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_opregion *opregion = display->opregion;
 
 	if (opregion && opregion->asle)
-		queue_work(i915->unordered_wq, &opregion->asle_work);
+		queue_work(display->wq.unordered, &opregion->asle_work);
 }
 
 #define ACPI_EV_DISPLAY_SWITCH (1<<0)
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index bff81fb5c316..6caafa66e7b4 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -892,7 +892,6 @@ static void edp_panel_vdd_work(struct work_struct *__work)
 static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned long delay;
 
 	/*
@@ -908,7 +907,7 @@ static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
 	 * operations.
 	 */
 	delay = msecs_to_jiffies(intel_dp->pps.panel_power_cycle_delay * 5);
-	queue_delayed_work(i915->unordered_wq,
+	queue_delayed_work(display->wq.unordered,
 			   &intel_dp->pps.panel_vdd_work, delay);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8bee2f592ae7..f7837e17c59d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -448,7 +448,6 @@ static void psr_event_print(struct intel_display *display,
 void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	ktime_t time_ns =  ktime_get();
 
@@ -493,7 +492,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 		intel_de_rmw(display, psr_imr_reg(display, cpu_transcoder),
 			     0, psr_irq_psr_error_bit_get(intel_dp));
 
-		queue_work(dev_priv->unordered_wq, &intel_dp->psr.work);
+		queue_work(display->wq.unordered, &intel_dp->psr.work);
 	}
 }
 
@@ -3320,7 +3319,6 @@ tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 		       enum fb_op_origin origin)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (!intel_dp->psr.dc3co_exitline || !intel_dp->psr.sel_update_enabled ||
 	    !intel_dp->psr.active)
@@ -3335,14 +3333,13 @@ tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 		return;
 
 	tgl_psr2_enable_dc3co(intel_dp);
-	mod_delayed_work(i915->unordered_wq, &intel_dp->psr.dc3co_work,
+	mod_delayed_work(display->wq.unordered, &intel_dp->psr.dc3co_work,
 			 intel_dp->psr.dc3co_exit_delay);
 }
 
 static void _psr_flush_handle(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
@@ -3367,7 +3364,7 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 
 	if (!intel_dp->psr.psr2_sel_fetch_enabled && !intel_dp->psr.active &&
 	    !intel_dp->psr.busy_frontbuffer_bits)
-		queue_work(dev_priv->unordered_wq, &intel_dp->psr.work);
+		queue_work(display->wq.unordered, &intel_dp->psr.work);
 }
 
 /**
-- 
2.47.2

