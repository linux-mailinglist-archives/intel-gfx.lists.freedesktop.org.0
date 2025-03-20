Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3B2A6A8EC
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 15:46:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 168EB10E636;
	Thu, 20 Mar 2025 14:46:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eda1YT4Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AB5810E636;
 Thu, 20 Mar 2025 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742481985; x=1774017985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nDJ0GioIeHTB9EHR1K7CX9oxVzDyhnU/uRNKUkSW9rY=;
 b=Eda1YT4YdGRa77+hW+uaCNcQvFVwnT2wK/VIY5gZrx70xRhrBXQ6wIAh
 ag94injNkJsC9NkDmLdhWUUrVAyshzHbwjLBxqolyxFOLygkEuf+huDlp
 FnqehnDFnN0bARwojyo77j5ixmaNKOr0wrSz2AyERvLvszt8eMUesY1lm
 9QXcmDnTj0JK54+kasCKEGF8Fb15hIxs9AiIcW+pCRVALdsIOZXqP/fhV
 HocpHtntP5DswMPbQFprXzoPbRDT6HdktppzXVEoi0xT9qIUiGRWmQXet
 M/+JTGyQ1x8yPKCsr2mS0C6MF0+x1cfFf4f70EEajSSBEk+Fq4fSDaLAz A==;
X-CSE-ConnectionGUID: uvFV8zjPSNqWawFNGiZfJQ==
X-CSE-MsgGUID: Hjn/ABjgSz6FoOBbBZStNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="53936919"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="53936919"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 07:46:24 -0700
X-CSE-ConnectionGUID: n2kI70u8SimtktLlX1lm5Q==
X-CSE-MsgGUID: OVM+B7ZmTf6EqBYg41PZSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="124052924"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 07:46:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Uma Shankar <uma.shankar@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI 3/9] drm/i915/hotplug: convert intel_hotplug.[ch] to struct
 intel_display
Date: Thu, 20 Mar 2025 16:45:59 +0200
Message-Id: <cf382dbfacf1445b26fbe1e7c011e7a3ea6e1594.1742481923.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742481923.git.jani.nikula@intel.com>
References: <cover.1742481923.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_hotplug.[ch] to struct
intel_display.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 .../drm/i915/display/intel_display_driver.c   |  14 +-
 .../i915/display/intel_display_power_well.c   |   6 +-
 .../drm/i915/display/intel_display_reset.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 332 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_hotplug.h  |  26 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  24 +-
 drivers/gpu/drm/i915/i915_driver.c            |  14 +-
 drivers/gpu/drm/i915/i915_irq.c               |   3 +-
 drivers/gpu/drm/xe/display/xe_display.c       |  26 +-
 11 files changed, 240 insertions(+), 213 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index fdedf65bee53..f42b5a69eed5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -844,7 +844,7 @@ void intel_display_debugfs_register(struct intel_display *display)
 	intel_dmc_debugfs_register(display);
 	intel_dp_test_debugfs_register(display);
 	intel_fbc_debugfs_register(display);
-	intel_hpd_debugfs_register(i915);
+	intel_hpd_debugfs_register(display);
 	intel_opregion_debugfs_register(display);
 	intel_psr_debugfs_register(display);
 	intel_wm_debugfs_register(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 5ad2f4090a2d..4035482a2e1b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -315,11 +315,9 @@ static void set_display_access(struct intel_display *display,
  */
 void intel_display_driver_enable_user_access(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	set_display_access(display, true, NULL);
 
-	intel_hpd_enable_detection_work(i915);
+	intel_hpd_enable_detection_work(display);
 }
 
 /**
@@ -341,9 +339,7 @@ void intel_display_driver_enable_user_access(struct intel_display *display)
  */
 void intel_display_driver_disable_user_access(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	intel_hpd_disable_detection_work(i915);
+	intel_hpd_disable_detection_work(display);
 
 	set_display_access(display, false, current);
 }
@@ -524,7 +520,7 @@ int intel_display_driver_probe(struct intel_display *display)
 	intel_overlay_setup(display);
 
 	/* Only enable hotplug handling once the fbdev is fully set up. */
-	intel_hpd_init(i915);
+	intel_hpd_init(display);
 
 	skl_watermark_ipc_init(i915);
 
@@ -558,7 +554,7 @@ void intel_display_driver_register(struct intel_display *display)
 	 * fbdev->async_cookie.
 	 */
 	drm_kms_helper_poll_init(display->drm);
-	intel_hpd_poll_disable(i915);
+	intel_hpd_poll_disable(display);
 
 	intel_fbdev_setup(i915);
 
@@ -600,7 +596,7 @@ void intel_display_driver_remove_noirq(struct intel_display *display)
 	 * Due to the hpd irq storm handling the hotplug work can re-arm the
 	 * poll handlers. Hence disable polling after hpd handling is shut down.
 	 */
-	intel_hpd_poll_fini(i915);
+	intel_hpd_poll_fini(display);
 
 	intel_unregister_dsm_handler();
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 8ec87ffd87d2..daf2a0cbb157 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1236,8 +1236,8 @@ static void vlv_display_power_well_init(struct intel_display *display)
 	if (display->power.domains.initializing)
 		return;
 
-	intel_hpd_init(dev_priv);
-	intel_hpd_poll_disable(dev_priv);
+	intel_hpd_init(display);
+	intel_hpd_poll_disable(display);
 
 	/* Re-enable the ADPA, if we have one */
 	for_each_intel_encoder(display->drm, encoder) {
@@ -1265,7 +1265,7 @@ static void vlv_display_power_well_deinit(struct intel_display *display)
 
 	/* Prevent us from re-enabling polling on accident in late suspend */
 	if (!display->drm->dev->power.is_suspended)
-		intel_hpd_poll_enable(dev_priv);
+		intel_hpd_poll_enable(display);
 }
 
 static void vlv_display_power_well_enable(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 1f2798404f2c..1dbd3e841df3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -107,14 +107,14 @@ void intel_display_reset_finish(struct intel_display *display, bool test_only)
 		intel_display_driver_init_hw(display);
 		intel_clock_gating_init(i915);
 		intel_cx0_pll_power_save_wa(display);
-		intel_hpd_init(i915);
+		intel_hpd_init(display);
 
 		ret = __intel_display_driver_resume(display, state, ctx);
 		if (ret)
 			drm_err(display->drm,
 				"Restoring old state failed with %i\n", ret);
 
-		intel_hpd_poll_disable(i915);
+		intel_hpd_poll_disable(display);
 	}
 
 	drm_atomic_state_put(state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a236b5fc7a3d..7d074770d793 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6117,7 +6117,7 @@ static void intel_dp_oob_hotplug_event(struct drm_connector *connector,
 	spin_unlock_irq(&i915->irq_lock);
 
 	if (need_work)
-		intel_hpd_schedule_detection(i915);
+		intel_hpd_schedule_detection(display);
 }
 
 static const struct drm_connector_funcs intel_dp_connector_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index c69b1f5fd160..9bde28ce1979 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -118,7 +118,7 @@ intel_connector_hpd_pin(struct intel_connector *connector)
 
 /**
  * intel_hpd_irq_storm_detect - gather stats and detect HPD IRQ storm on a pin
- * @dev_priv: private driver data pointer
+ * @display: display device
  * @pin: the pin to gather stats on
  * @long_hpd: whether the HPD IRQ was long or short
  *
@@ -127,13 +127,13 @@ intel_connector_hpd_pin(struct intel_connector *connector)
  * responsible for further action.
  *
  * The number of IRQs that are allowed within @HPD_STORM_DETECT_PERIOD is
- * stored in @dev_priv->display.hotplug.hpd_storm_threshold which defaults to
+ * stored in @display->hotplug.hpd_storm_threshold which defaults to
  * @HPD_STORM_DEFAULT_THRESHOLD. Long IRQs count as +10 to this threshold, and
  * short IRQs count as +1. If this threshold is exceeded, it's considered an
  * IRQ storm and the IRQ state is set to @HPD_MARK_DISABLED.
  *
  * By default, most systems will only count long IRQs towards
- * &dev_priv->display.hotplug.hpd_storm_threshold. However, some older systems also
+ * &display->hotplug.hpd_storm_threshold. However, some older systems also
  * suffer from short IRQ storms and must also track these. Because short IRQ
  * storms are naturally caused by sideband interactions with DP MST devices,
  * short IRQ detection is only enabled for systems without DP MST support.
@@ -145,10 +145,10 @@ intel_connector_hpd_pin(struct intel_connector *connector)
  *
  * Return true if an IRQ storm was detected on @pin.
  */
-static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
+static bool intel_hpd_irq_storm_detect(struct intel_display *display,
 				       enum hpd_pin pin, bool long_hpd)
 {
-	struct intel_hotplug *hpd = &dev_priv->display.hotplug;
+	struct intel_hotplug *hpd = &display->hotplug;
 	unsigned long start = hpd->stats[pin].last_jiffies;
 	unsigned long end = start + msecs_to_jiffies(HPD_STORM_DETECT_PERIOD);
 	const int increment = long_hpd ? 10 : 1;
@@ -156,7 +156,7 @@ static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
 	bool storm = false;
 
 	if (!threshold ||
-	    (!long_hpd && !dev_priv->display.hotplug.hpd_short_storm_enabled))
+	    (!long_hpd && !display->hotplug.hpd_short_storm_enabled))
 		return false;
 
 	if (!time_in_range(jiffies, start, end)) {
@@ -167,11 +167,11 @@ static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
 	hpd->stats[pin].count += increment;
 	if (hpd->stats[pin].count > threshold) {
 		hpd->stats[pin].state = HPD_MARK_DISABLED;
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "HPD interrupt storm detected on PIN %d\n", pin);
 		storm = true;
 	} else {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Received HPD interrupt on PIN %d - cnt: %d\n",
 			      pin,
 			      hpd->stats[pin].count);
@@ -180,56 +180,65 @@ static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
 	return storm;
 }
 
-static bool detection_work_enabled(struct drm_i915_private *i915)
+static bool detection_work_enabled(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	lockdep_assert_held(&i915->irq_lock);
 
-	return i915->display.hotplug.detection_work_enabled;
+	return display->hotplug.detection_work_enabled;
 }
 
 static bool
-mod_delayed_detection_work(struct drm_i915_private *i915, struct delayed_work *work, int delay)
+mod_delayed_detection_work(struct intel_display *display, struct delayed_work *work, int delay)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	lockdep_assert_held(&i915->irq_lock);
 
-	if (!detection_work_enabled(i915))
+	if (!detection_work_enabled(display))
 		return false;
 
 	return mod_delayed_work(i915->unordered_wq, work, delay);
 }
 
 static bool
-queue_delayed_detection_work(struct drm_i915_private *i915, struct delayed_work *work, int delay)
+queue_delayed_detection_work(struct intel_display *display, struct delayed_work *work, int delay)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	lockdep_assert_held(&i915->irq_lock);
 
-	if (!detection_work_enabled(i915))
+	if (!detection_work_enabled(display))
 		return false;
 
 	return queue_delayed_work(i915->unordered_wq, work, delay);
 }
 
 static bool
-queue_detection_work(struct drm_i915_private *i915, struct work_struct *work)
+queue_detection_work(struct intel_display *display, struct work_struct *work)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	lockdep_assert_held(&i915->irq_lock);
 
-	if (!detection_work_enabled(i915))
+	if (!detection_work_enabled(display))
 		return false;
 
 	return queue_work(i915->unordered_wq, work);
 }
 
 static void
-intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
+intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	bool hpd_disabled = false;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		enum hpd_pin pin;
 
@@ -238,15 +247,15 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 
 		pin = intel_connector_hpd_pin(connector);
 		if (pin == HPD_NONE ||
-		    dev_priv->display.hotplug.stats[pin].state != HPD_MARK_DISABLED)
+		    display->hotplug.stats[pin].state != HPD_MARK_DISABLED)
 			continue;
 
-		drm_info(&dev_priv->drm,
+		drm_info(display->drm,
 			 "HPD interrupt storm detected on connector %s: "
 			 "switching from hotplug detection to polling\n",
 			 connector->base.name);
 
-		dev_priv->display.hotplug.stats[pin].state = HPD_DISABLED;
+		display->hotplug.stats[pin].state = HPD_DISABLED;
 		connector->base.polled = DRM_CONNECTOR_POLL_CONNECT |
 			DRM_CONNECTOR_POLL_DISCONNECT;
 		hpd_disabled = true;
@@ -255,18 +264,18 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 
 	/* Enable polling and queue hotplug re-enabling. */
 	if (hpd_disabled) {
-		drm_kms_helper_poll_reschedule(&dev_priv->drm);
-		mod_delayed_detection_work(dev_priv,
-					   &dev_priv->display.hotplug.reenable_work,
+		drm_kms_helper_poll_reschedule(display->drm);
+		mod_delayed_detection_work(display,
+					   &display->hotplug.reenable_work,
 					   msecs_to_jiffies(HPD_STORM_REENABLE_DELAY));
 	}
 }
 
 static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 {
-	struct drm_i915_private *dev_priv =
-		container_of(work, typeof(*dev_priv),
-			     display.hotplug.reenable_work.work);
+	struct intel_display *display =
+		container_of(work, typeof(*display), hotplug.reenable_work.work);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	intel_wakeref_t wakeref;
@@ -276,15 +285,15 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		pin = intel_connector_hpd_pin(connector);
 		if (pin == HPD_NONE ||
-		    dev_priv->display.hotplug.stats[pin].state != HPD_DISABLED)
+		    display->hotplug.stats[pin].state != HPD_DISABLED)
 			continue;
 
 		if (connector->base.polled != connector->polled)
-			drm_dbg(&dev_priv->drm,
+			drm_dbg(display->drm,
 				"Reenabling HPD on connector %s\n",
 				connector->base.name);
 		connector->base.polled = connector->polled;
@@ -292,8 +301,8 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 	drm_connector_list_iter_end(&conn_iter);
 
 	for_each_hpd_pin(pin) {
-		if (dev_priv->display.hotplug.stats[pin].state == HPD_DISABLED)
-			dev_priv->display.hotplug.stats[pin].state = HPD_ENABLED;
+		if (display->hotplug.stats[pin].state == HPD_DISABLED)
+			display->hotplug.stats[pin].state = HPD_ENABLED;
 	}
 
 	intel_hpd_irq_setup(dev_priv);
@@ -407,7 +416,7 @@ static void i915_digport_work_func(struct work_struct *work)
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		struct intel_digital_port *dig_port;
 		enum hpd_pin pin = encoder->hpd_pin;
 		bool long_hpd, short_hpd;
@@ -433,9 +442,9 @@ static void i915_digport_work_func(struct work_struct *work)
 
 	if (old_bits) {
 		spin_lock_irq(&dev_priv->irq_lock);
-		dev_priv->display.hotplug.event_bits |= old_bits;
-		queue_delayed_detection_work(dev_priv,
-					     &dev_priv->display.hotplug.hotplug_work, 0);
+		display->hotplug.event_bits |= old_bits;
+		queue_delayed_detection_work(display,
+					     &display->hotplug.hotplug_work, 0);
 		spin_unlock_irq(&dev_priv->irq_lock);
 	}
 }
@@ -481,8 +490,8 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	int changed_connectors = 0;
 	u32 blocked_hpd_pin_mask;
 
-	mutex_lock(&dev_priv->drm.mode_config.mutex);
-	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
+	mutex_lock(&display->drm->mode_config.mutex);
+	drm_dbg_kms(display->drm, "running encoder hotplug functions\n");
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
@@ -493,18 +502,18 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	hotplug->retry_bits &= ~hpd_retry_bits;
 
 	/* Enable polling for connectors which had HPD IRQ storms */
-	intel_hpd_irq_storm_switch_to_polling(dev_priv);
+	intel_hpd_irq_storm_switch_to_polling(display);
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	/* Skip calling encode hotplug handlers if ignore long HPD set*/
-	if (dev_priv->display.hotplug.ignore_long_hpd) {
-		drm_dbg_kms(&dev_priv->drm, "Ignore HPD flag on - skip encoder hotplug handlers\n");
-		mutex_unlock(&dev_priv->drm.mode_config.mutex);
+	if (display->hotplug.ignore_long_hpd) {
+		drm_dbg_kms(display->drm, "Ignore HPD flag on - skip encoder hotplug handlers\n");
+		mutex_unlock(&display->drm->mode_config.mutex);
 		return;
 	}
 
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		enum hpd_pin pin;
 		u32 hpd_bit;
@@ -523,7 +532,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
 			else
 				connector->hotplug_retries++;
 
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "Connector %s (pin %i) received hotplug event. (retry %d)\n",
 				    connector->base.name, pin,
 				    connector->hotplug_retries);
@@ -546,12 +555,12 @@ static void i915_hotplug_work_func(struct work_struct *work)
 		}
 	}
 	drm_connector_list_iter_end(&conn_iter);
-	mutex_unlock(&dev_priv->drm.mode_config.mutex);
+	mutex_unlock(&display->drm->mode_config.mutex);
 
 	if (changed_connectors == 1)
 		drm_kms_helper_connector_hotplug_event(first_changed_connector);
 	else if (changed_connectors > 0)
-		drm_kms_helper_hotplug_event(&dev_priv->drm);
+		drm_kms_helper_hotplug_event(display->drm);
 
 	if (first_changed_connector)
 		drm_connector_put(first_changed_connector);
@@ -560,10 +569,10 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	retry &= ~changed;
 	if (retry) {
 		spin_lock_irq(&dev_priv->irq_lock);
-		dev_priv->display.hotplug.retry_bits |= retry;
+		display->hotplug.retry_bits |= retry;
 
-		mod_delayed_detection_work(dev_priv,
-					   &dev_priv->display.hotplug.hotplug_work,
+		mod_delayed_detection_work(display,
+					   &display->hotplug.hotplug_work,
 					   msecs_to_jiffies(HPD_RETRY_DELAY));
 		spin_unlock_irq(&dev_priv->irq_lock);
 	}
@@ -572,7 +581,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
 
 /**
  * intel_hpd_irq_handler - main hotplug irq handler
- * @dev_priv: drm_i915_private
+ * @display: display device
  * @pin_mask: a mask of hpd pins that have triggered the irq
  * @long_mask: a mask of hpd pins that may be long hpd pulses
  *
@@ -586,10 +595,10 @@ static void i915_hotplug_work_func(struct work_struct *work)
  * Here, we do hotplug irq storm detection and mitigation, and pass further
  * processing to appropriate bottom halves.
  */
-void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
+void intel_hpd_irq_handler(struct intel_display *display,
 			   u32 pin_mask, u32 long_mask)
 {
-	struct intel_display *display = to_intel_display(&dev_priv->drm);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder;
 	bool storm_detected = false;
 	bool queue_dig = false, queue_hp = false;
@@ -608,7 +617,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 	 * as each pin may have up to two encoders (HDMI and DP) and
 	 * only the one of them (DP) will have ->hpd_pulse().
 	 */
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		bool long_hpd;
 
 		pin = encoder->hpd_pin;
@@ -620,7 +629,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 
 		long_hpd = long_mask & BIT(pin);
 
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"digital hpd on [ENCODER:%d:%s] - %s\n",
 			encoder->base.base.id, encoder->base.name,
 			long_hpd ? "long" : "short");
@@ -630,10 +639,10 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 
 		if (long_hpd) {
 			long_hpd_pulse_mask |= BIT(pin);
-			dev_priv->display.hotplug.long_hpd_pin_mask |= BIT(pin);
+			display->hotplug.long_hpd_pin_mask |= BIT(pin);
 		} else {
 			short_hpd_pulse_mask |= BIT(pin);
-			dev_priv->display.hotplug.short_hpd_pin_mask |= BIT(pin);
+			display->hotplug.short_hpd_pin_mask |= BIT(pin);
 		}
 	}
 
@@ -644,20 +653,20 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 		if (!(BIT(pin) & pin_mask))
 			continue;
 
-		if (dev_priv->display.hotplug.stats[pin].state == HPD_DISABLED) {
+		if (display->hotplug.stats[pin].state == HPD_DISABLED) {
 			/*
 			 * On GMCH platforms the interrupt mask bits only
 			 * prevent irq generation, not the setting of the
 			 * hotplug bits itself. So only WARN about unexpected
 			 * interrupts on saner platforms.
 			 */
-			drm_WARN_ONCE(&dev_priv->drm, !HAS_GMCH(dev_priv),
+			drm_WARN_ONCE(display->drm, !HAS_GMCH(display),
 				      "Received HPD interrupt on pin %d although disabled\n",
 				      pin);
 			continue;
 		}
 
-		if (dev_priv->display.hotplug.stats[pin].state != HPD_ENABLED)
+		if (display->hotplug.stats[pin].state != HPD_ENABLED)
 			continue;
 
 		/*
@@ -668,15 +677,15 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 		if (((short_hpd_pulse_mask | long_hpd_pulse_mask) & BIT(pin))) {
 			long_hpd = long_hpd_pulse_mask & BIT(pin);
 		} else {
-			dev_priv->display.hotplug.event_bits |= BIT(pin);
+			display->hotplug.event_bits |= BIT(pin);
 			long_hpd = true;
 
 			if (!hpd_pin_is_blocked(display, pin))
 				queue_hp = true;
 		}
 
-		if (intel_hpd_irq_storm_detect(dev_priv, pin, long_hpd)) {
-			dev_priv->display.hotplug.event_bits &= ~BIT(pin);
+		if (intel_hpd_irq_storm_detect(display, pin, long_hpd)) {
+			display->hotplug.event_bits &= ~BIT(pin);
 			storm_detected = true;
 			queue_hp = true;
 		}
@@ -696,17 +705,17 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 	 * deadlock.
 	 */
 	if (queue_dig)
-		queue_work(dev_priv->display.hotplug.dp_wq, &dev_priv->display.hotplug.dig_port_work);
+		queue_work(display->hotplug.dp_wq, &display->hotplug.dig_port_work);
 	if (queue_hp)
-		queue_delayed_detection_work(dev_priv,
-					     &dev_priv->display.hotplug.hotplug_work, 0);
+		queue_delayed_detection_work(display,
+					     &display->hotplug.hotplug_work, 0);
 
 	spin_unlock(&dev_priv->irq_lock);
 }
 
 /**
  * intel_hpd_init - initializes and enables hpd support
- * @dev_priv: i915 device instance
+ * @display: display device instance
  *
  * This function enables the hotplug support. It requires that interrupts have
  * already been enabled with intel_irq_init_hw(). From this point on hotplug and
@@ -718,16 +727,17 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
  *
  * Also see: intel_hpd_poll_enable() and intel_hpd_poll_disable().
  */
-void intel_hpd_init(struct drm_i915_private *dev_priv)
+void intel_hpd_init(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int i;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	for_each_hpd_pin(i) {
-		dev_priv->display.hotplug.stats[i].count = 0;
-		dev_priv->display.hotplug.stats[i].state = HPD_ENABLED;
+		display->hotplug.stats[i].count = 0;
+		display->hotplug.stats[i].state = HPD_ENABLED;
 	}
 
 	/*
@@ -739,19 +749,19 @@ void intel_hpd_init(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
-static void i915_hpd_poll_detect_connectors(struct drm_i915_private *i915)
+static void i915_hpd_poll_detect_connectors(struct intel_display *display)
 {
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	struct intel_connector *first_changed_connector = NULL;
 	int changed = 0;
 
-	mutex_lock(&i915->drm.mode_config.mutex);
+	mutex_lock(&display->drm->mode_config.mutex);
 
-	if (!i915->drm.mode_config.poll_enabled)
+	if (!display->drm->mode_config.poll_enabled)
 		goto out;
 
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		if (!(connector->base.polled & DRM_CONNECTOR_POLL_HPD))
 			continue;
@@ -769,7 +779,7 @@ static void i915_hpd_poll_detect_connectors(struct drm_i915_private *i915)
 	drm_connector_list_iter_end(&conn_iter);
 
 out:
-	mutex_unlock(&i915->drm.mode_config.mutex);
+	mutex_unlock(&display->drm->mode_config.mutex);
 
 	if (!changed)
 		return;
@@ -777,25 +787,24 @@ static void i915_hpd_poll_detect_connectors(struct drm_i915_private *i915)
 	if (changed == 1)
 		drm_kms_helper_connector_hotplug_event(&first_changed_connector->base);
 	else
-		drm_kms_helper_hotplug_event(&i915->drm);
+		drm_kms_helper_hotplug_event(display->drm);
 
 	drm_connector_put(&first_changed_connector->base);
 }
 
 static void i915_hpd_poll_init_work(struct work_struct *work)
 {
-	struct drm_i915_private *dev_priv =
-		container_of(work, struct drm_i915_private,
-			     display.hotplug.poll_init_work);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display =
+		container_of(work, typeof(*display), hotplug.poll_init_work);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	intel_wakeref_t wakeref;
 	bool enabled;
 
-	mutex_lock(&dev_priv->drm.mode_config.mutex);
+	mutex_lock(&display->drm->mode_config.mutex);
 
-	enabled = READ_ONCE(dev_priv->display.hotplug.poll_enabled);
+	enabled = READ_ONCE(display->hotplug.poll_enabled);
 	/*
 	 * Prevent taking a power reference from this sequence of
 	 * i915_hpd_poll_init_work() -> drm_helper_hpd_irq_event() ->
@@ -805,14 +814,14 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 	if (!enabled) {
 		wakeref = intel_display_power_get(display,
 						  POWER_DOMAIN_DISPLAY_CORE);
-		drm_WARN_ON(&dev_priv->drm,
-			    READ_ONCE(dev_priv->display.hotplug.poll_enabled));
-		cancel_work(&dev_priv->display.hotplug.poll_init_work);
+		drm_WARN_ON(display->drm,
+			    READ_ONCE(display->hotplug.poll_enabled));
+		cancel_work(&display->hotplug.poll_init_work);
 	}
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		enum hpd_pin pin;
 
@@ -820,7 +829,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 		if (pin == HPD_NONE)
 			continue;
 
-		if (dev_priv->display.hotplug.stats[pin].state == HPD_DISABLED)
+		if (display->hotplug.stats[pin].state == HPD_DISABLED)
 			continue;
 
 		connector->base.polled = connector->polled;
@@ -834,16 +843,16 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	if (enabled)
-		drm_kms_helper_poll_reschedule(&dev_priv->drm);
+		drm_kms_helper_poll_reschedule(display->drm);
 
-	mutex_unlock(&dev_priv->drm.mode_config.mutex);
+	mutex_unlock(&display->drm->mode_config.mutex);
 
 	/*
 	 * We might have missed any hotplugs that happened while we were
 	 * in the middle of disabling polling
 	 */
 	if (!enabled) {
-		i915_hpd_poll_detect_connectors(dev_priv);
+		i915_hpd_poll_detect_connectors(display);
 
 		intel_display_power_put(display,
 					POWER_DOMAIN_DISPLAY_CORE,
@@ -853,7 +862,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 
 /**
  * intel_hpd_poll_enable - enable polling for connectors with hpd
- * @dev_priv: i915 device instance
+ * @display: display device instance
  *
  * This function enables polling for all connectors which support HPD.
  * Under certain conditions HPD may not be functional. On most Intel GPUs,
@@ -867,15 +876,14 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
  *
  * Also see: intel_hpd_init() and intel_hpd_poll_disable().
  */
-void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
+void intel_hpd_poll_enable(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	if (!HAS_DISPLAY(dev_priv) ||
-	    !intel_display_device_enabled(display))
+	if (!HAS_DISPLAY(display) || !intel_display_device_enabled(display))
 		return;
 
-	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, true);
+	WRITE_ONCE(display->hotplug.poll_enabled, true);
 
 	/*
 	 * We might already be holding dev->mode_config.mutex, so do this in a
@@ -884,14 +892,14 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
 	 * this worker anyway
 	 */
 	spin_lock_irq(&dev_priv->irq_lock);
-	queue_detection_work(dev_priv,
-			     &dev_priv->display.hotplug.poll_init_work);
+	queue_detection_work(display,
+			     &display->hotplug.poll_init_work);
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
 /**
  * intel_hpd_poll_disable - disable polling for connectors with hpd
- * @dev_priv: i915 device instance
+ * @display: display device instance
  *
  * This function disables polling for all connectors which support HPD.
  * Under certain conditions HPD may not be functional. On most Intel GPUs,
@@ -908,26 +916,28 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
  *
  * Also see: intel_hpd_init() and intel_hpd_poll_enable().
  */
-void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
+void intel_hpd_poll_disable(struct intel_display *display)
 {
-	if (!HAS_DISPLAY(dev_priv))
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	if (!HAS_DISPLAY(display))
 		return;
 
-	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, false);
+	WRITE_ONCE(display->hotplug.poll_enabled, false);
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	queue_detection_work(dev_priv,
-			     &dev_priv->display.hotplug.poll_init_work);
+	queue_detection_work(display,
+			     &display->hotplug.poll_init_work);
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
-void intel_hpd_poll_fini(struct drm_i915_private *i915)
+void intel_hpd_poll_fini(struct intel_display *display)
 {
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 
 	/* Kill all the work that may have been queued by hpd. */
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		intel_connector_cancel_modeset_retry_work(connector);
 		intel_hdcp_cancel_works(connector);
@@ -935,70 +945,70 @@ void intel_hpd_poll_fini(struct drm_i915_private *i915)
 	drm_connector_list_iter_end(&conn_iter);
 }
 
-void intel_hpd_init_early(struct drm_i915_private *i915)
+void intel_hpd_init_early(struct intel_display *display)
 {
-	INIT_DELAYED_WORK(&i915->display.hotplug.hotplug_work,
+	INIT_DELAYED_WORK(&display->hotplug.hotplug_work,
 			  i915_hotplug_work_func);
-	INIT_WORK(&i915->display.hotplug.dig_port_work, i915_digport_work_func);
-	INIT_WORK(&i915->display.hotplug.poll_init_work, i915_hpd_poll_init_work);
-	INIT_DELAYED_WORK(&i915->display.hotplug.reenable_work,
+	INIT_WORK(&display->hotplug.dig_port_work, i915_digport_work_func);
+	INIT_WORK(&display->hotplug.poll_init_work, i915_hpd_poll_init_work);
+	INIT_DELAYED_WORK(&display->hotplug.reenable_work,
 			  intel_hpd_irq_storm_reenable_work);
 
-	i915->display.hotplug.hpd_storm_threshold = HPD_STORM_DEFAULT_THRESHOLD;
+	display->hotplug.hpd_storm_threshold = HPD_STORM_DEFAULT_THRESHOLD;
 	/* If we have MST support, we want to avoid doing short HPD IRQ storm
 	 * detection, as short HPD storms will occur as a natural part of
 	 * sideband messaging with MST.
 	 * On older platforms however, IRQ storms can occur with both long and
 	 * short pulses, as seen on some G4x systems.
 	 */
-	i915->display.hotplug.hpd_short_storm_enabled = !HAS_DP_MST(i915);
+	display->hotplug.hpd_short_storm_enabled = !HAS_DP_MST(display);
 }
 
-static bool cancel_all_detection_work(struct drm_i915_private *i915)
+static bool cancel_all_detection_work(struct intel_display *display)
 {
 	bool was_pending = false;
 
-	if (cancel_delayed_work_sync(&i915->display.hotplug.hotplug_work))
+	if (cancel_delayed_work_sync(&display->hotplug.hotplug_work))
 		was_pending = true;
-	if (cancel_work_sync(&i915->display.hotplug.poll_init_work))
+	if (cancel_work_sync(&display->hotplug.poll_init_work))
 		was_pending = true;
-	if (cancel_delayed_work_sync(&i915->display.hotplug.reenable_work))
+	if (cancel_delayed_work_sync(&display->hotplug.reenable_work))
 		was_pending = true;
 
 	return was_pending;
 }
 
-void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
+void intel_hpd_cancel_work(struct intel_display *display)
 {
-	struct intel_display *display = to_intel_display(&dev_priv->drm);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
 	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
 
-	dev_priv->display.hotplug.long_hpd_pin_mask = 0;
-	dev_priv->display.hotplug.short_hpd_pin_mask = 0;
-	dev_priv->display.hotplug.event_bits = 0;
-	dev_priv->display.hotplug.retry_bits = 0;
+	display->hotplug.long_hpd_pin_mask = 0;
+	display->hotplug.short_hpd_pin_mask = 0;
+	display->hotplug.event_bits = 0;
+	display->hotplug.retry_bits = 0;
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 
-	cancel_work_sync(&dev_priv->display.hotplug.dig_port_work);
+	cancel_work_sync(&display->hotplug.dig_port_work);
 
 	/*
 	 * All other work triggered by hotplug events should be canceled by
 	 * now.
 	 */
-	if (cancel_all_detection_work(dev_priv))
-		drm_dbg_kms(&dev_priv->drm, "Hotplug detection work still active\n");
+	if (cancel_all_detection_work(display))
+		drm_dbg_kms(display->drm, "Hotplug detection work still active\n");
 }
 
-static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
+static void queue_work_for_missed_irqs(struct intel_display *display)
 {
-	struct intel_display *display = to_intel_display(&i915->drm);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 	bool queue_hp_work = false;
 	u32 blocked_hpd_pin_mask;
@@ -1011,7 +1021,7 @@ static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
 		queue_hp_work = true;
 
 	for_each_hpd_pin(pin) {
-		switch (i915->display.hotplug.stats[pin].state) {
+		switch (display->hotplug.stats[pin].state) {
 		case HPD_MARK_DISABLED:
 			queue_hp_work = true;
 			break;
@@ -1019,7 +1029,7 @@ static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
 		case HPD_ENABLED:
 			break;
 		default:
-			MISSING_CASE(i915->display.hotplug.stats[pin].state);
+			MISSING_CASE(display->hotplug.stats[pin].state);
 		}
 	}
 
@@ -1027,7 +1037,7 @@ static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
 		queue_work(hotplug->dp_wq, &hotplug->dig_port_work);
 
 	if (queue_hp_work)
-		queue_delayed_detection_work(i915, &i915->display.hotplug.hotplug_work, 0);
+		queue_delayed_detection_work(display, &display->hotplug.hotplug_work, 0);
 }
 
 static bool block_hpd_pin(struct intel_display *display, enum hpd_pin pin)
@@ -1121,7 +1131,7 @@ void intel_hpd_unblock(struct intel_encoder *encoder)
 	spin_lock_irq(&i915->irq_lock);
 
 	if (unblock_hpd_pin(display, encoder->hpd_pin))
-		queue_work_for_missed_irqs(i915);
+		queue_work_for_missed_irqs(display);
 
 	spin_unlock_irq(&i915->irq_lock);
 }
@@ -1156,30 +1166,35 @@ void intel_hpd_clear_and_unblock(struct intel_encoder *encoder)
 	spin_unlock_irq(&i915->irq_lock);
 }
 
-void intel_hpd_enable_detection_work(struct drm_i915_private *i915)
+void intel_hpd_enable_detection_work(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	spin_lock_irq(&i915->irq_lock);
-	i915->display.hotplug.detection_work_enabled = true;
-	queue_work_for_missed_irqs(i915);
+	display->hotplug.detection_work_enabled = true;
+	queue_work_for_missed_irqs(display);
 	spin_unlock_irq(&i915->irq_lock);
 }
 
-void intel_hpd_disable_detection_work(struct drm_i915_private *i915)
+void intel_hpd_disable_detection_work(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	spin_lock_irq(&i915->irq_lock);
-	i915->display.hotplug.detection_work_enabled = false;
+	display->hotplug.detection_work_enabled = false;
 	spin_unlock_irq(&i915->irq_lock);
 
-	cancel_all_detection_work(i915);
+	cancel_all_detection_work(display);
 }
 
-bool intel_hpd_schedule_detection(struct drm_i915_private *i915)
+bool intel_hpd_schedule_detection(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned long flags;
 	bool ret;
 
 	spin_lock_irqsave(&i915->irq_lock, flags);
-	ret = queue_delayed_detection_work(i915, &i915->display.hotplug.hotplug_work, 0);
+	ret = queue_delayed_detection_work(display, &display->hotplug.hotplug_work, 0);
 	spin_unlock_irqrestore(&i915->irq_lock, flags);
 
 	return ret;
@@ -1188,14 +1203,15 @@ bool intel_hpd_schedule_detection(struct drm_i915_private *i915)
 static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = m->private;
-	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
+	struct intel_display *display = &dev_priv->display;
+	struct intel_hotplug *hotplug = &display->hotplug;
 
 	/* Synchronize with everything first in case there's been an HPD
 	 * storm, but we haven't finished handling it in the kernel yet
 	 */
 	intel_synchronize_irq(dev_priv);
-	flush_work(&dev_priv->display.hotplug.dig_port_work);
-	flush_delayed_work(&dev_priv->display.hotplug.hotplug_work);
+	flush_work(&display->hotplug.dig_port_work);
+	flush_delayed_work(&display->hotplug.hotplug_work);
 
 	seq_printf(m, "Threshold: %d\n", hotplug->hpd_storm_threshold);
 	seq_printf(m, "Detected: %s\n",
@@ -1210,7 +1226,8 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct drm_i915_private *dev_priv = m->private;
-	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
+	struct intel_display *display = &dev_priv->display;
+	struct intel_hotplug *hotplug = &display->hotplug;
 	unsigned int new_threshold;
 	int i;
 	char *newline;
@@ -1235,11 +1252,11 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *file,
 		return -EINVAL;
 
 	if (new_threshold > 0)
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Setting HPD storm detection threshold to %d\n",
 			    new_threshold);
 	else
-		drm_dbg_kms(&dev_priv->drm, "Disabling HPD storm detection\n");
+		drm_dbg_kms(display->drm, "Disabling HPD storm detection\n");
 
 	spin_lock_irq(&dev_priv->irq_lock);
 	hotplug->hpd_storm_threshold = new_threshold;
@@ -1249,7 +1266,7 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *file,
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	/* Re-enable hpd immediately if we were in an irq storm */
-	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
+	flush_delayed_work(&display->hotplug.reenable_work);
 
 	return len;
 }
@@ -1271,9 +1288,10 @@ static const struct file_operations i915_hpd_storm_ctl_fops = {
 static int i915_hpd_short_storm_ctl_show(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = m->private;
+	struct intel_display *display = &dev_priv->display;
 
 	seq_printf(m, "Enabled: %s\n",
-		   str_yes_no(dev_priv->display.hotplug.hpd_short_storm_enabled));
+		   str_yes_no(display->hotplug.hpd_short_storm_enabled));
 
 	return 0;
 }
@@ -1291,7 +1309,8 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct drm_i915_private *dev_priv = m->private;
-	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
+	struct intel_display *display = &dev_priv->display;
+	struct intel_hotplug *hotplug = &display->hotplug;
 	char *newline;
 	char tmp[16];
 	int i;
@@ -1312,11 +1331,11 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
 
 	/* Reset to the "default" state for this system */
 	if (strcmp(tmp, "reset") == 0)
-		new_state = !HAS_DP_MST(dev_priv);
+		new_state = !HAS_DP_MST(display);
 	else if (kstrtobool(tmp, &new_state) != 0)
 		return -EINVAL;
 
-	drm_dbg_kms(&dev_priv->drm, "%sabling HPD short storm detection\n",
+	drm_dbg_kms(display->drm, "%sabling HPD short storm detection\n",
 		    new_state ? "En" : "Dis");
 
 	spin_lock_irq(&dev_priv->irq_lock);
@@ -1327,7 +1346,7 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	/* Re-enable hpd immediately if we were in an irq storm */
-	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
+	flush_delayed_work(&display->hotplug.reenable_work);
 
 	return len;
 }
@@ -1341,14 +1360,15 @@ static const struct file_operations i915_hpd_short_storm_ctl_fops = {
 	.write = i915_hpd_short_storm_ctl_write,
 };
 
-void intel_hpd_debugfs_register(struct drm_i915_private *i915)
+void intel_hpd_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = i915->drm.primary;
+	struct drm_minor *minor = display->drm->primary;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	debugfs_create_file("i915_hpd_storm_ctl", 0644, minor->debugfs_root,
 			    i915, &i915_hpd_storm_ctl_fops);
 	debugfs_create_file("i915_hpd_short_storm_ctl", 0644, minor->debugfs_root,
 			    i915, &i915_hpd_short_storm_ctl_fops);
 	debugfs_create_bool("i915_ignore_long_hpd", 0644, minor->debugfs_root,
-			    &i915->display.hotplug.ignore_long_hpd);
+			    &display->hotplug.ignore_long_hpd);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index f189b871904e..edc41c9d3d65 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -8,31 +8,31 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
+enum port;
 struct intel_connector;
 struct intel_digital_port;
+struct intel_display;
 struct intel_encoder;
-enum port;
 
-void intel_hpd_poll_enable(struct drm_i915_private *dev_priv);
-void intel_hpd_poll_disable(struct drm_i915_private *dev_priv);
-void intel_hpd_poll_fini(struct drm_i915_private *i915);
+void intel_hpd_poll_enable(struct intel_display *display);
+void intel_hpd_poll_disable(struct intel_display *display);
+void intel_hpd_poll_fini(struct intel_display *display);
 enum intel_hotplug_state intel_encoder_hotplug(struct intel_encoder *encoder,
 					       struct intel_connector *connector);
-void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
+void intel_hpd_irq_handler(struct intel_display *display,
 			   u32 pin_mask, u32 long_mask);
 void intel_hpd_trigger_irq(struct intel_digital_port *dig_port);
-void intel_hpd_init(struct drm_i915_private *dev_priv);
-void intel_hpd_init_early(struct drm_i915_private *i915);
-void intel_hpd_cancel_work(struct drm_i915_private *dev_priv);
+void intel_hpd_init(struct intel_display *display);
+void intel_hpd_init_early(struct intel_display *display);
+void intel_hpd_cancel_work(struct intel_display *display);
 enum hpd_pin intel_hpd_pin_default(enum port port);
 void intel_hpd_block(struct intel_encoder *encoder);
 void intel_hpd_unblock(struct intel_encoder *encoder);
 void intel_hpd_clear_and_unblock(struct intel_encoder *encoder);
-void intel_hpd_debugfs_register(struct drm_i915_private *i915);
+void intel_hpd_debugfs_register(struct intel_display *display);
 
-void intel_hpd_enable_detection_work(struct drm_i915_private *i915);
-void intel_hpd_disable_detection_work(struct drm_i915_private *i915);
-bool intel_hpd_schedule_detection(struct drm_i915_private *i915);
+void intel_hpd_enable_detection_work(struct intel_display *display);
+void intel_hpd_disable_detection_work(struct intel_display *display);
+bool intel_hpd_schedule_detection(struct intel_display *display);
 
 #endif /* __INTEL_HOTPLUG_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 2137ac7b882a..e6320838df59 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -472,7 +472,7 @@ void i9xx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_status)
 				   dev_priv->display.hotplug.hpd,
 				   i9xx_port_hotplug_long_detect);
 
-		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+		intel_hpd_irq_handler(display, pin_mask, long_mask);
 	}
 
 	if ((IS_G4X(dev_priv) ||
@@ -483,6 +483,7 @@ void i9xx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_status)
 
 void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
 
 	/*
@@ -509,7 +510,7 @@ void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 			   dev_priv->display.hotplug.pch_hpd,
 			   pch_port_hotplug_long_detect);
 
-	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+	intel_hpd_irq_handler(display, pin_mask, long_mask);
 }
 
 void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
@@ -543,7 +544,7 @@ void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
 			"pica hotplug event received, stat 0x%08x, pins 0x%08x, long 0x%08x\n",
 			hotplug_trigger, pin_mask, long_mask);
 
-		intel_hpd_irq_handler(i915, pin_mask, long_mask);
+		intel_hpd_irq_handler(display, pin_mask, long_mask);
 	}
 
 	if (trigger_aux)
@@ -587,7 +588,7 @@ void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	}
 
 	if (pin_mask)
-		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+		intel_hpd_irq_handler(display, pin_mask, long_mask);
 
 	if (pch_iir & SDE_GMBUS_ICP)
 		intel_gmbus_irq_handler(display);
@@ -624,7 +625,7 @@ void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	}
 
 	if (pin_mask)
-		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+		intel_hpd_irq_handler(display, pin_mask, long_mask);
 
 	if (pch_iir & SDE_GMBUS_CPT)
 		intel_gmbus_irq_handler(display);
@@ -632,6 +633,7 @@ void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
 
 	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, 0, 0);
@@ -641,11 +643,12 @@ void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 			   dev_priv->display.hotplug.hpd,
 			   ilk_port_hotplug_long_detect);
 
-	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+	intel_hpd_irq_handler(display, pin_mask, long_mask);
 }
 
 void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
 
 	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG, 0, 0);
@@ -655,11 +658,12 @@ void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 			   dev_priv->display.hotplug.hpd,
 			   bxt_port_hotplug_long_detect);
 
-	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+	intel_hpd_irq_handler(display, pin_mask, long_mask);
 }
 
 void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 pin_mask = 0, long_mask = 0;
 	u32 trigger_tc = iir & GEN11_DE_TC_HOTPLUG_MASK;
 	u32 trigger_tbt = iir & GEN11_DE_TBT_HOTPLUG_MASK;
@@ -687,7 +691,7 @@ void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 	}
 
 	if (pin_mask)
-		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+		intel_hpd_irq_handler(display, pin_mask, long_mask);
 	else
 		drm_err(&dev_priv->drm,
 			"Unexpected DE HPD interrupt 0x%08x\n", iir);
@@ -1467,9 +1471,11 @@ void intel_hpd_irq_setup(struct drm_i915_private *i915)
 
 void intel_hotplug_irq_init(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
+
 	intel_hpd_init_pins(i915);
 
-	intel_hpd_init_early(i915);
+	intel_hpd_init_early(display);
 
 	if (HAS_GMCH(i915)) {
 		if (I915_HAS_HOTPLUG(i915))
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index cba56cf73b96..fcb5a6adf570 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -991,7 +991,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	intel_dp_mst_suspend(display);
 
 	intel_irq_suspend(i915);
-	intel_hpd_cancel_work(i915);
+	intel_hpd_cancel_work(display);
 
 	if (HAS_DISPLAY(i915))
 		intel_display_driver_suspend_access(display);
@@ -1074,7 +1074,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_display_driver_suspend(display);
 
 	intel_irq_suspend(dev_priv);
-	intel_hpd_cancel_work(dev_priv);
+	intel_hpd_cancel_work(display);
 
 	if (HAS_DISPLAY(dev_priv))
 		intel_display_driver_suspend_access(display);
@@ -1237,7 +1237,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	if (HAS_DISPLAY(dev_priv))
 		intel_display_driver_resume_access(display);
 
-	intel_hpd_init(dev_priv);
+	intel_hpd_init(display);
 
 	intel_display_driver_resume(display);
 
@@ -1245,7 +1245,7 @@ static int i915_drm_resume(struct drm_device *dev)
 		intel_display_driver_enable_user_access(display);
 		drm_kms_helper_poll_enable(dev);
 	}
-	intel_hpd_poll_disable(dev_priv);
+	intel_hpd_poll_disable(display);
 
 	intel_opregion_resume(display);
 
@@ -1585,7 +1585,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	assert_forcewakes_inactive(&dev_priv->uncore);
 
 	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
-		intel_hpd_poll_enable(dev_priv);
+		intel_hpd_poll_enable(display);
 
 	drm_dbg(&dev_priv->drm, "Device suspended\n");
 	return 0;
@@ -1643,8 +1643,8 @@ static int intel_runtime_resume(struct device *kdev)
 	 * everyone else do it here.
 	 */
 	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
-		intel_hpd_init(dev_priv);
-		intel_hpd_poll_disable(dev_priv);
+		intel_hpd_init(display);
+		intel_hpd_poll_disable(display);
 	}
 
 	skl_watermark_ipc_update(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 37ca4a35daf2..de53615571be 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1280,6 +1280,7 @@ int intel_irq_install(struct drm_i915_private *dev_priv)
  */
 void intel_irq_uninstall(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	int irq = to_pci_dev(dev_priv->drm.dev)->irq;
 
 	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->irqs_enabled))
@@ -1289,7 +1290,7 @@ void intel_irq_uninstall(struct drm_i915_private *dev_priv)
 
 	free_irq(irq, dev_priv);
 
-	intel_hpd_cancel_work(dev_priv);
+	intel_hpd_cancel_work(display);
 	dev_priv->irqs_enabled = false;
 }
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 7fb6028ae73c..4c6c8b2ad1c9 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -173,7 +173,7 @@ static void xe_display_fini(void *arg)
 	struct xe_device *xe = arg;
 	struct intel_display *display = &xe->display;
 
-	intel_hpd_poll_fini(xe);
+	intel_hpd_poll_fini(display);
 	intel_hdcp_component_fini(display);
 	intel_audio_deinit(display);
 	intel_display_driver_remove(display);
@@ -305,7 +305,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
 	intel_dmc_suspend(display);
 
 	if (has_display(xe))
-		intel_hpd_poll_enable(xe);
+		intel_hpd_poll_enable(display);
 }
 
 static void xe_display_disable_d3cold(struct xe_device *xe)
@@ -322,10 +322,10 @@ static void xe_display_disable_d3cold(struct xe_device *xe)
 
 	intel_display_driver_init_hw(display);
 
-	intel_hpd_init(xe);
+	intel_hpd_init(display);
 
 	if (has_display(xe))
-		intel_hpd_poll_disable(xe);
+		intel_hpd_poll_disable(display);
 
 	intel_opregion_resume(display);
 
@@ -355,7 +355,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 	xe_display_flush_cleanup_work(xe);
 
-	intel_hpd_cancel_work(xe);
+	intel_hpd_cancel_work(display);
 
 	if (has_display(xe)) {
 		intel_display_driver_suspend_access(display);
@@ -385,7 +385,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 
 	xe_display_flush_cleanup_work(xe);
 	intel_dp_mst_suspend(display);
-	intel_hpd_cancel_work(xe);
+	intel_hpd_cancel_work(display);
 
 	if (has_display(xe))
 		intel_display_driver_suspend_access(display);
@@ -400,6 +400,8 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
@@ -408,7 +410,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 		return;
 	}
 
-	intel_hpd_poll_enable(xe);
+	intel_hpd_poll_enable(display);
 }
 
 void xe_display_pm_suspend_late(struct xe_device *xe)
@@ -482,7 +484,7 @@ void xe_display_pm_resume(struct xe_device *xe)
 	if (has_display(xe))
 		intel_display_driver_resume_access(display);
 
-	intel_hpd_init(xe);
+	intel_hpd_init(display);
 
 	if (has_display(xe)) {
 		intel_display_driver_resume(display);
@@ -491,7 +493,7 @@ void xe_display_pm_resume(struct xe_device *xe)
 	}
 
 	if (has_display(xe))
-		intel_hpd_poll_disable(xe);
+		intel_hpd_poll_disable(display);
 
 	intel_opregion_resume(display);
 
@@ -502,6 +504,8 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 void xe_display_pm_runtime_resume(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
@@ -510,8 +514,8 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 		return;
 	}
 
-	intel_hpd_init(xe);
-	intel_hpd_poll_disable(xe);
+	intel_hpd_init(display);
+	intel_hpd_poll_disable(display);
 	skl_watermark_ipc_update(xe);
 }
 
-- 
2.39.5

