Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6A1A467CA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 18:18:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 783C910E96F;
	Wed, 26 Feb 2025 17:18:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="isb6n7J5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4698410E96C;
 Wed, 26 Feb 2025 17:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740590309; x=1772126309;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RD7LJ8SZ++sBsGvQXWS/QewWVdF3ijWc5dCTORpRrA4=;
 b=isb6n7J5/2KpQiT17khJqb3D64J1unFAFhGhSaRJ5CBp48nIqnHqVIBW
 yHyhILrKWPbnvNIu5fl5c5Vypfo2c+MIvB7ltf8sN8Z3j7FOWZW5N0btr
 LG/D72L9LzxcBMrktviNX6B0y4N7Ov7O16ZIgL+T3BELx4Xd1oFngJV1D
 BTkUK3AKnRy+c5/RyvIv38TYXdD396bFuqaDsx+ywk1lB/wpkzLQZNzFp
 8EZ+ThNla2J43HSMJcwXKE0xgWtgDxgZ2DucjaG9aeviZv2BdcsYxo56f
 DcxPj5bpdwvzRXylAhbtHMe7dui63yHkwIV+SiCXHvhxrxEk59mnXurCG A==;
X-CSE-ConnectionGUID: RQJrxG+ySsiA6O0FuINW7Q==
X-CSE-MsgGUID: viTD2tddQ4O5oqCMdabKuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="40628471"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="40628471"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 09:18:25 -0800
X-CSE-ConnectionGUID: huESKub4Q6KT/8zch4JBSw==
X-CSE-MsgGUID: HRX5ux4bSaiGCgjBvs5ang==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="121371339"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 09:18:24 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 2/5] drm/i915/hpd: Add support for blocking the IRQ
 handling on an HPD pin
Date: Wed, 26 Feb 2025 19:19:20 +0200
Message-ID: <20250226171924.2646997-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250226171924.2646997-1-imre.deak@intel.com>
References: <20250226171924.2646997-1-imre.deak@intel.com>
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

Add support for blocking the IRQ handling on the HPD pin of a given
encoder, handling IRQs that arrived while in the blocked state after
unblocking the IRQ handling. This will be used by a follow-up change,
which blocks/unblocks the IRQ handling around DP link training.

This is similar to the intel_hpd_disable/enable() functionality, by also
handling encoders/ports with a pulse handler (i.e. also
blocking/unblocking the short/long pulse handling) and handling the IRQs
arrived in the blocked state after the handling is unblocked (vs. just
dropping such IRQs).

v2:
- Handle encoders without a port assigned to them.
- Fix clearing IRQs from intel_hotplug::short_port_mask.
v3:
- Rename intel_hpd_suspend/resume() to intel_hpd_block/unblock(). (Jani)
- Refer to HPD pins as hpd_pin vs. hpd.
- Flush dig_port_work in intel_hpd_block() if any encoder using the HPD
  pin has a pulse handler.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |   1 +
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 230 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_hotplug.h  |   2 +
 3 files changed, 208 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 554870d2494b3..b3b620ac15e6a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -159,6 +159,7 @@ struct intel_hotplug {
 	struct {
 		unsigned long last_jiffies;
 		int count;
+		int blocked_count;
 		enum {
 			HPD_ENABLED = 0,
 			HPD_DISABLED = 1,
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index ab8e71c4b0f86..6c6b7d661d639 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -349,19 +349,80 @@ static bool intel_encoder_has_hpd_pulse(struct intel_encoder *encoder)
 		enc_to_dig_port(encoder)->hpd_pulse != NULL;
 }
 
+static bool hpd_pin_has_pulse(struct intel_display *display, enum hpd_pin pin)
+{
+	struct intel_encoder *encoder;
+
+	for_each_intel_encoder(display->drm, encoder)
+		if (intel_encoder_has_hpd_pulse(encoder))
+			return true;
+
+	return false;
+}
+
+static u32 hpd_pin_mask_to_ports(struct intel_display *display, u32 hpd_pin_mask)
+{
+	struct intel_encoder *encoder;
+	u32 ports = 0;
+
+	for_each_intel_encoder(display->drm, encoder) {
+		if (encoder->port == PORT_NONE)
+			continue;
+
+		if (BIT(encoder->hpd_pin) & hpd_pin_mask)
+			ports |= BIT(encoder->port);
+	}
+
+	return ports;
+}
+
+static u32 get_blocked_hpd_pins(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	enum hpd_pin pin;
+	u32 hpd_pins = 0;
+
+	lockdep_assert_held(&i915->irq_lock);
+
+	for_each_hpd_pin(pin) {
+		if (display->hotplug.stats[pin].blocked_count)
+			hpd_pins |= BIT(pin);
+	}
+
+	return hpd_pins;
+}
+
+/*
+ * Get the mask of all the ports using a blocked HPD pin, accounting for
+ * ports sharing their - blocked - HPD pin with another port.
+ */
+static u32 get_blocked_hpd_ports(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	lockdep_assert_held(&i915->irq_lock);
+	return hpd_pin_mask_to_ports(display, get_blocked_hpd_pins(display));
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
+	u32 blocked_ports;
 	u32 old_bits = 0;
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	long_port_mask = dev_priv->display.hotplug.long_port_mask;
-	dev_priv->display.hotplug.long_port_mask = 0;
-	short_port_mask = dev_priv->display.hotplug.short_port_mask;
-	dev_priv->display.hotplug.short_port_mask = 0;
+
+	blocked_ports = get_blocked_hpd_ports(display);
+	long_port_mask = hotplug->long_port_mask & ~blocked_ports;
+	hotplug->long_port_mask &= ~long_port_mask;
+	short_port_mask = hotplug->short_port_mask & ~blocked_ports;
+	hotplug->short_port_mask &= ~short_port_mask;
+
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	for_each_intel_encoder(&dev_priv->drm, encoder) {
@@ -406,13 +467,17 @@ static void i915_digport_work_func(struct work_struct *work)
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
+	if (!(BIT(dig_port->base.port) & get_blocked_hpd_ports(display)))
+		queue_work(hotplug->dp_wq, &hotplug->dig_port_work);
+
+	spin_unlock_irq(&i915->irq_lock);
 }
 
 /*
@@ -420,9 +485,10 @@ void intel_hpd_trigger_irq(struct intel_digital_port *dig_port)
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
@@ -430,16 +496,18 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	u32 hpd_retry_bits;
 	struct drm_connector *first_changed_connector = NULL;
 	int changed_connectors = 0;
+	u32 blocked_hpd_pins;
 
 	mutex_lock(&dev_priv->drm.mode_config.mutex);
 	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
-	hpd_event_bits = dev_priv->display.hotplug.event_bits;
-	dev_priv->display.hotplug.event_bits = 0;
-	hpd_retry_bits = dev_priv->display.hotplug.retry_bits;
-	dev_priv->display.hotplug.retry_bits = 0;
+	blocked_hpd_pins = get_blocked_hpd_pins(display);
+	hpd_event_bits = hotplug->event_bits & ~blocked_hpd_pins;
+	hotplug->event_bits &= ~hpd_event_bits;
+	hpd_retry_bits = hotplug->retry_bits & ~blocked_hpd_pins;
+	hotplug->retry_bits &= ~hpd_retry_bits;
 
 	/* Enable polling for connectors which had HPD IRQ storms */
 	intel_hpd_irq_storm_switch_to_polling(dev_priv);
@@ -538,11 +606,13 @@ static void i915_hotplug_work_func(struct work_struct *work)
 void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 			   u32 pin_mask, u32 long_mask)
 {
+	struct intel_display *display = to_intel_display(&dev_priv->drm);
 	struct intel_encoder *encoder;
 	bool storm_detected = false;
 	bool queue_dig = false, queue_hp = false;
 	u32 long_hpd_pulse_mask = 0;
 	u32 short_hpd_pulse_mask = 0;
+	u32 blocked_hpd_pins;
 	enum hpd_pin pin;
 
 	if (!pin_mask)
@@ -550,6 +620,8 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 
 	spin_lock(&dev_priv->irq_lock);
 
+	blocked_hpd_pins = get_blocked_hpd_pins(display);
+
 	/*
 	 * Determine whether ->hpd_pulse() exists for each pin, and
 	 * whether we have a short or a long pulse. This is needed
@@ -573,7 +645,9 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 			"digital hpd on [ENCODER:%d:%s] - %s\n",
 			encoder->base.base.id, encoder->base.name,
 			long_hpd ? "long" : "short");
-		queue_dig = true;
+
+		if (!(BIT(pin) & blocked_hpd_pins))
+			queue_dig = true;
 
 		if (long_hpd) {
 			long_hpd_pulse_mask |= BIT(pin);
@@ -617,7 +691,9 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 		} else {
 			dev_priv->display.hotplug.event_bits |= BIT(pin);
 			long_hpd = true;
-			queue_hp = true;
+
+			if (!(BIT(pin) & blocked_hpd_pins))
+				queue_hp = true;
 		}
 
 		if (intel_hpd_irq_storm_detect(dev_priv, pin, long_hpd)) {
@@ -915,11 +991,15 @@ static bool cancel_all_detection_work(struct drm_i915_private *i915)
 
 void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = to_intel_display(&dev_priv->drm);
+
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
+	drm_WARN_ON(display->drm, get_blocked_hpd_pins(display));
+
 	dev_priv->display.hotplug.long_port_mask = 0;
 	dev_priv->display.hotplug.short_port_mask = 0;
 	dev_priv->display.hotplug.event_bits = 0;
@@ -966,19 +1046,22 @@ void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
 
 static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
 {
-	bool queue_work = false;
+	struct intel_display *display = to_intel_display(&i915->drm);
+	struct intel_hotplug *hotplug = &display->hotplug;
+	bool queue_hp_work = false;
+	u32 blocked_hpd_pins;
 	enum hpd_pin pin;
 
 	lockdep_assert_held(&i915->irq_lock);
 
-	if (i915->display.hotplug.event_bits ||
-	    i915->display.hotplug.retry_bits)
-		queue_work = true;
+	blocked_hpd_pins = get_blocked_hpd_pins(display);
+	if ((hotplug->event_bits | hotplug->retry_bits) & ~blocked_hpd_pins)
+		queue_hp_work = true;
 
 	for_each_hpd_pin(pin) {
 		switch (i915->display.hotplug.stats[pin].state) {
 		case HPD_MARK_DISABLED:
-			queue_work = true;
+			queue_hp_work = true;
 			break;
 		case HPD_DISABLED:
 		case HPD_ENABLED:
@@ -988,10 +1071,107 @@ static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
 		}
 	}
 
-	if (queue_work)
+	if ((hotplug->long_port_mask | hotplug->short_port_mask) &
+	    ~hpd_pin_mask_to_ports(display, blocked_hpd_pins))
+		queue_work(hotplug->dp_wq, &hotplug->dig_port_work);
+
+	if (queue_hp_work)
 		queue_delayed_detection_work(i915, &i915->display.hotplug.hotplug_work, 0);
 }
 
+static bool block_hpd_pin(struct intel_display *display, enum hpd_pin pin)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_hotplug *hotplug = &display->hotplug;
+
+	lockdep_assert_held(&i915->irq_lock);
+
+	hotplug->stats[pin].blocked_count++;
+
+	return hotplug->stats[pin].blocked_count == 1;
+}
+
+static bool unblock_hpd_pin(struct intel_display *display, enum hpd_pin pin)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_hotplug *hotplug = &display->hotplug;
+
+	lockdep_assert_held(&i915->irq_lock);
+
+	drm_WARN_ON(display->drm, hotplug->stats[pin].blocked_count == 0);
+	hotplug->stats[pin].blocked_count--;
+
+	return hotplug->stats[pin].blocked_count == 0;
+}
+
+/**
+ * intel_hpd_block - Block handling of HPD IRQs on an HPD pin
+ * @encoder: Encoder to block the HPD handling for
+ *
+ * Blocks the handling of HPD IRQs on the HPD pin of @encoder.
+ *
+ * On return:
+ * - It's guaranteed that the blocked encoders' HPD pulse handler
+ *   (via intel_digital_port::hpd_pulse()) is not running.
+ * - The hotplug event handling (via intel_encoder::hotplug()) of an
+ *   HPD IRQ pending at the time this function is called may be still
+ *   running.
+ * - Detection on the encoder's connector (via
+ *   drm_connector_helper_funcs::detect_ctx(),
+ *   drm_connector_funcs::detect()) remains allowed, for instance as part of
+ *   userspace connector probing, or DRM core's connector polling.
+ *
+ * The call must be followed by calling intel_hpd_unblock().
+ *
+ * Note that the handling of HPD IRQs for another encoder using the same HPD
+ * pin as that of @encoder will be also blocked.
+ */
+void intel_hpd_block(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_hotplug *hotplug = &display->hotplug;
+	bool do_flush = false;
+
+	if (encoder->hpd_pin == HPD_NONE)
+		return;
+
+	spin_lock_irq(&i915->irq_lock);
+
+	if (block_hpd_pin(display, encoder->hpd_pin))
+		do_flush = true;
+
+	spin_unlock_irq(&i915->irq_lock);
+
+	if (do_flush && hpd_pin_has_pulse(display, encoder->hpd_pin))
+		flush_work(&hotplug->dig_port_work);
+}
+
+/**
+ * intel_hpd_unblock - Unblock handling of HPD IRQs on an HPD pin
+ * @encoder: Encoder to unblock the HPD handling for
+ *
+ * Unblock the handling of HPD IRQs on the HPD pin of @encoder, which was
+ * previously blocked by intel_hpd_block(). Any HPD IRQ raised on the
+ * HPD pin while it was blocked will be handled for @encoder and for any
+ * other encoder sharing the same HPD pin.
+ */
+void intel_hpd_unblock(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (encoder->hpd_pin == HPD_NONE)
+		return;
+
+	spin_lock_irq(&i915->irq_lock);
+
+	if (unblock_hpd_pin(display, encoder->hpd_pin))
+		queue_work_for_missed_irqs(i915);
+
+	spin_unlock_irq(&i915->irq_lock);
+}
+
 void intel_hpd_enable_detection_work(struct drm_i915_private *i915)
 {
 	spin_lock_irq(&i915->irq_lock);
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index d6986902b0545..5f9857136f5e3 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -28,6 +28,8 @@ void intel_hpd_cancel_work(struct drm_i915_private *dev_priv);
 enum hpd_pin intel_hpd_pin_default(enum port port);
 bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
 void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
+void intel_hpd_block(struct intel_encoder *encoder);
+void intel_hpd_unblock(struct intel_encoder *encoder);
 void intel_hpd_debugfs_register(struct drm_i915_private *i915);
 
 void intel_hpd_enable_detection_work(struct drm_i915_private *i915);
-- 
2.44.2

