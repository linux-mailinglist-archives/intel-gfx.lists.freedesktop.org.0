Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF19CA42CC1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 20:30:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6014110E4E5;
	Mon, 24 Feb 2025 19:30:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i/FO8WKd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8FE710E4EA;
 Mon, 24 Feb 2025 19:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740425418; x=1771961418;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=etvC0flQy7VdOAl8ptgvcHYbsX6IxO8738WGJym2lrU=;
 b=i/FO8WKd5VQlT2D/JnMELu5xtZf7ImtjxFUGAJfGVYnHyxrT3LICvZ+F
 3I8jyKoU843/SR6VY4pO9CbYr5yEf7iMXFh572dw7a+vVMyhgLXARPo2Z
 vmFDhZ7lNanu9d2lfJ4ztIzxayYh1YK1hbLeK0kBQ8OMXmxCfjgYtTT44
 LSeTlgHoimEO9VmgN6/GG5HPyemB39Y1GP5KHRh3VR6WOQGYgxk7R2XnN
 hOY1F0/X7NRwLggKPCtI8lkoB8hYhefB5hHB5PRdqb9CKwGcIR/K3orGG
 fr4MqkhB4QdpnGALAKn8HWYFyt8kUiAIbVxbX3SrUJJLnxPXOQNZiEmF8 w==;
X-CSE-ConnectionGUID: hJghOXmqSDmumX2V1SxZOg==
X-CSE-MsgGUID: 9LexQjxvSbuqQxdtzymxYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40388254"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="40388254"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 11:30:17 -0800
X-CSE-ConnectionGUID: 0vfA8V9VSDixD1CoGTcfzw==
X-CSE-MsgGUID: P8JMm/YoTWSLJ7k6O3+Oeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="116169050"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 11:30:16 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 2/5] drm/i915/hpd: Add support for suspending the IRQ handling
 on an HPD pin
Date: Mon, 24 Feb 2025 21:31:12 +0200
Message-ID: <20250224193115.2058512-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250224193115.2058512-1-imre.deak@intel.com>
References: <20250224193115.2058512-1-imre.deak@intel.com>
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

Add support for suspending the IRQ handling on the HPD pin of a given
encoder, handling IRQs that arrived while in the suspended state after
resuming the IRQ handling. This will be used by a follow-up change,
which suspends/resumes the IRQ handling around DP link training.

This is similar to the intel_hpd_disable/enable() functionality, by also
handling encoders/ports with a pulse handler (i.e. also
suspending/resuming the short/long pulse handling) and handling the IRQs
arrived in the suspended state after the handling is resumed (vs. just
dropping such IRQs).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 206 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_hotplug.h  |   2 +
 3 files changed, 185 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 554870d2494b3..9b338d8c9f26e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -173,6 +173,8 @@ struct intel_hotplug {
 	u32 short_port_mask;
 	struct work_struct dig_port_work;
 
+	u32 suspended_port_mask;
+
 	struct work_struct poll_init_work;
 	bool poll_enabled;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index ab8e71c4b0f86..81f2be06bc2a1 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -349,19 +349,71 @@ static bool intel_encoder_has_hpd_pulse(struct intel_encoder *encoder)
 		enc_to_dig_port(encoder)->hpd_pulse != NULL;
 }
 
+static u32 port_mask_to_hpds(struct intel_display *display, u32 port_mask)
+{
+	struct intel_encoder *encoder;
+	u32 hpds = 0;
+
+	for_each_intel_encoder(display->drm, encoder) {
+		if (BIT(encoder->port) & port_mask)
+			hpds |= BIT(encoder->hpd_pin);
+	}
+
+	return hpds;
+}
+
+static u32 hpd_mask_to_ports(struct intel_display *display, u32 hpd_mask)
+{
+	struct intel_encoder *encoder;
+	u32 ports = 0;
+
+	for_each_intel_encoder(display->drm, encoder) {
+		if (BIT(encoder->hpd_pin) & hpd_mask)
+			ports |= BIT(encoder->port);
+	}
+
+	return ports;
+}
+
+static u32 get_suspended_hpds(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	lockdep_assert_held(&i915->irq_lock);
+	return port_mask_to_hpds(display, display->hotplug.suspended_port_mask);
+}
+
+/*
+ * Get the mask of all the ports using a suspended HPD pin, accounting for
+ * ports sharing their - suspended - HPD pin with another port.
+ */
+static u32 get_suspended_hpd_ports(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	lockdep_assert_held(&i915->irq_lock);
+	return hpd_mask_to_ports(display, get_suspended_hpds(display));
+}
+
 static void i915_digport_work_func(struct work_struct *work)
 {
-	struct drm_i915_private *dev_priv =
-		container_of(work, struct drm_i915_private, display.hotplug.dig_port_work);
+	struct intel_display *display =
+		container_of(work, struct intel_display, hotplug.dig_port_work);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct intel_hotplug *hotplug = &display->hotplug;
 	u32 long_port_mask, short_port_mask;
 	struct intel_encoder *encoder;
+	u32 suspended_ports;
 	u32 old_bits = 0;
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	long_port_mask = dev_priv->display.hotplug.long_port_mask;
-	dev_priv->display.hotplug.long_port_mask = 0;
-	short_port_mask = dev_priv->display.hotplug.short_port_mask;
-	dev_priv->display.hotplug.short_port_mask = 0;
+
+	suspended_ports = get_suspended_hpd_ports(display);
+	long_port_mask = hotplug->long_port_mask & ~suspended_ports;
+	hotplug->long_port_mask &= ~long_port_mask;
+	short_port_mask = hotplug->short_port_mask & ~suspended_ports;
+	hotplug->short_port_mask = ~short_port_mask;
+
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	for_each_intel_encoder(&dev_priv->drm, encoder) {
@@ -406,13 +458,17 @@ static void i915_digport_work_func(struct work_struct *work)
  */
 void intel_hpd_trigger_irq(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_hotplug *hotplug = &display->hotplug;
 
 	spin_lock_irq(&i915->irq_lock);
-	i915->display.hotplug.short_port_mask |= BIT(dig_port->base.port);
-	spin_unlock_irq(&i915->irq_lock);
 
-	queue_work(i915->display.hotplug.dp_wq, &i915->display.hotplug.dig_port_work);
+	hotplug->short_port_mask |= BIT(dig_port->base.port);
+	if (!(BIT(dig_port->base.port) & get_suspended_hpd_ports(display)))
+		queue_work(hotplug->dp_wq, &hotplug->dig_port_work);
+
+	spin_unlock_irq(&i915->irq_lock);
 }
 
 /*
@@ -420,9 +476,10 @@ void intel_hpd_trigger_irq(struct intel_digital_port *dig_port)
  */
 static void i915_hotplug_work_func(struct work_struct *work)
 {
-	struct drm_i915_private *dev_priv =
-		container_of(work, struct drm_i915_private,
-			     display.hotplug.hotplug_work.work);
+	struct intel_display *display =
+		container_of(work, struct intel_display, hotplug.hotplug_work.work);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct intel_hotplug *hotplug = &display->hotplug;
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	u32 changed = 0, retry = 0;
@@ -430,16 +487,18 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	u32 hpd_retry_bits;
 	struct drm_connector *first_changed_connector = NULL;
 	int changed_connectors = 0;
+	u32 suspended_hpds;
 
 	mutex_lock(&dev_priv->drm.mode_config.mutex);
 	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
-	hpd_event_bits = dev_priv->display.hotplug.event_bits;
-	dev_priv->display.hotplug.event_bits = 0;
-	hpd_retry_bits = dev_priv->display.hotplug.retry_bits;
-	dev_priv->display.hotplug.retry_bits = 0;
+	suspended_hpds = get_suspended_hpds(display);
+	hpd_event_bits = hotplug->event_bits & ~suspended_hpds;
+	hotplug->event_bits &= ~hpd_event_bits;
+	hpd_retry_bits = hotplug->retry_bits & ~suspended_hpds;
+	hotplug->retry_bits &= ~hpd_retry_bits;
 
 	/* Enable polling for connectors which had HPD IRQ storms */
 	intel_hpd_irq_storm_switch_to_polling(dev_priv);
@@ -538,11 +597,13 @@ static void i915_hotplug_work_func(struct work_struct *work)
 void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 			   u32 pin_mask, u32 long_mask)
 {
+	struct intel_display *display = to_intel_display(&dev_priv->drm);
 	struct intel_encoder *encoder;
 	bool storm_detected = false;
 	bool queue_dig = false, queue_hp = false;
 	u32 long_hpd_pulse_mask = 0;
 	u32 short_hpd_pulse_mask = 0;
+	u32 suspended_hpds;
 	enum hpd_pin pin;
 
 	if (!pin_mask)
@@ -550,6 +611,8 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 
 	spin_lock(&dev_priv->irq_lock);
 
+	suspended_hpds = get_suspended_hpds(display);
+
 	/*
 	 * Determine whether ->hpd_pulse() exists for each pin, and
 	 * whether we have a short or a long pulse. This is needed
@@ -573,7 +636,9 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 			"digital hpd on [ENCODER:%d:%s] - %s\n",
 			encoder->base.base.id, encoder->base.name,
 			long_hpd ? "long" : "short");
-		queue_dig = true;
+
+		if (!(BIT(pin) & suspended_hpds))
+			queue_dig = true;
 
 		if (long_hpd) {
 			long_hpd_pulse_mask |= BIT(pin);
@@ -617,7 +682,9 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 		} else {
 			dev_priv->display.hotplug.event_bits |= BIT(pin);
 			long_hpd = true;
-			queue_hp = true;
+
+			if (!(BIT(pin) & suspended_hpds))
+				queue_hp = true;
 		}
 
 		if (intel_hpd_irq_storm_detect(dev_priv, pin, long_hpd)) {
@@ -915,11 +982,15 @@ static bool cancel_all_detection_work(struct drm_i915_private *i915)
 
 void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = to_intel_display(&dev_priv->drm);
+
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
+	drm_WARN_ON(display->drm, display->hotplug.suspended_port_mask);
+
 	dev_priv->display.hotplug.long_port_mask = 0;
 	dev_priv->display.hotplug.short_port_mask = 0;
 	dev_priv->display.hotplug.event_bits = 0;
@@ -966,19 +1037,22 @@ void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
 
 static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
 {
-	bool queue_work = false;
+	struct intel_display *display = to_intel_display(&i915->drm);
+	struct intel_hotplug *hotplug = &display->hotplug;
+	bool queue_hp_work = false;
+	u32 suspended_hpds;
 	enum hpd_pin pin;
 
 	lockdep_assert_held(&i915->irq_lock);
 
-	if (i915->display.hotplug.event_bits ||
-	    i915->display.hotplug.retry_bits)
-		queue_work = true;
+	suspended_hpds = get_suspended_hpds(display);
+	if ((hotplug->event_bits | hotplug->retry_bits) & ~suspended_hpds)
+		queue_hp_work = true;
 
 	for_each_hpd_pin(pin) {
 		switch (i915->display.hotplug.stats[pin].state) {
 		case HPD_MARK_DISABLED:
-			queue_work = true;
+			queue_hp_work = true;
 			break;
 		case HPD_DISABLED:
 		case HPD_ENABLED:
@@ -988,10 +1062,92 @@ static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
 		}
 	}
 
-	if (queue_work)
+	if ((hotplug->long_port_mask | hotplug->short_port_mask) &
+	    ~hpd_mask_to_ports(display, suspended_hpds))
+		queue_work(hotplug->dp_wq, &hotplug->dig_port_work);
+
+	if (queue_hp_work)
 		queue_delayed_detection_work(i915, &i915->display.hotplug.hotplug_work, 0);
 }
 
+/**
+ * intel_hpd_suspend - Suspend handling of HPD IRQs on an HPD pin
+ * @encoder: Encoder to suspend the HPD handling for
+ *
+ * Suspends the handling of HPD IRQs on the HPD pin of @encoder.
+ *
+ * On return:
+ * - It's guaranteed that the suspended encoders' HPD pulse handler
+ *   (via intel_digital_port::hpd_pulse()) is not running.
+ * - The hotplug event handling (via intel_encoder::hotplug()) of an
+ *   HPD IRQ pending at the time this function is called may be still
+ *   running.
+ * - Detection on the encoder's connector (via
+ *   drm_connector_helper_funcs::detect_ctx(),
+ *   drm_connector_funcs::detect()) remains allowed, for instance as part of
+ *   userspace connector probing, or DRM core's connector polling.
+ *
+ * A nested call of this function on the same encoder is not allowed. The call
+ * must be followed by calling intel_hpd_resume().
+ *
+ * Note that the handling of HPD IRQs for another encoder using the same HPD
+ * pin as that of @encoder will be also suspended.
+ */
+void intel_hpd_suspend(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_hotplug *hotplug = &display->hotplug;
+
+	if (encoder->hpd_pin == HPD_NONE)
+		return;
+
+	spin_lock_irq(&i915->irq_lock);
+
+	drm_WARN_ON(display->drm, BIT(encoder->port) & hotplug->suspended_port_mask);
+	hotplug->suspended_port_mask |= BIT(encoder->port);
+
+	spin_unlock_irq(&i915->irq_lock);
+
+	flush_work(&hotplug->dig_port_work);
+}
+
+static void resume_hpd(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_hotplug *hotplug = &display->hotplug;
+
+	lockdep_assert_held(&i915->irq_lock);
+
+	drm_WARN_ON(display->drm, !(BIT(encoder->port) & hotplug->suspended_port_mask));
+	hotplug->suspended_port_mask &= ~BIT(encoder->port);
+
+	queue_work_for_missed_irqs(i915);
+}
+
+/**
+ * intel_hpd_resume - Resume handling of HPD IRQs on an HPD pin
+ * @encoder: Encoder to resume the HPD handling for
+ *
+ * Resume the handling of HPD IRQs on the HPD pin of @encoder, which was
+ * previously suspended by intel_hpd_suspend(). Any HPD IRQ raised on the
+ * HPD pin while it was suspended will be handled for @encoder and for any
+ * other encoder sharing the same HPD pin.
+ */
+void intel_hpd_resume(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (encoder->hpd_pin == HPD_NONE)
+		return;
+
+	spin_lock_irq(&i915->irq_lock);
+	resume_hpd(encoder);
+	spin_unlock_irq(&i915->irq_lock);
+}
+
 void intel_hpd_enable_detection_work(struct drm_i915_private *i915)
 {
 	spin_lock_irq(&i915->irq_lock);
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index d6986902b0545..5180731def7cc 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -28,6 +28,8 @@ void intel_hpd_cancel_work(struct drm_i915_private *dev_priv);
 enum hpd_pin intel_hpd_pin_default(enum port port);
 bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
 void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
+void intel_hpd_suspend(struct intel_encoder *encoder);
+void intel_hpd_resume(struct intel_encoder *encoder);
 void intel_hpd_debugfs_register(struct drm_i915_private *i915);
 
 void intel_hpd_enable_detection_work(struct drm_i915_private *i915);
-- 
2.44.2

