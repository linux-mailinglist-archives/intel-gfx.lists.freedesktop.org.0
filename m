Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 020AC59FB1D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:19:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D72E6B5285;
	Wed, 24 Aug 2022 13:18:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBDFBB5149
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347058; x=1692883058;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uLpnYISLuOYHjSfX+uVRLVCgOvaWBkwQnzILdttD89o=;
 b=fQsdk7tcq99bpIr5jAM5iD2tGAwXK8r6OX77CwjeSRzrcKIDWSIN0Ckc
 DCOiWEHRDn0oO3ahVmzhcaw96BTJbEjMeHYbW7fWcB9+4AB0KdinF6qcy
 E6o4zE8Xkdk2WpyqKRTgiN1L3bRLheDyrP+OJztON5AJIeczI3ymApdh/
 84h51vZS6+G+SsqteDzrJ5ZFxGH7WuVrlHu1QR8MmdPmwkx8icCMgwynu
 KbFXrxeqU4wWWB1TXAqCjppzFAT32MySUE8kCvbD6IMOOt9Rz4IHBdsis
 JaD3mybr+Jfwk0HQIpf90M0i0cI8t4zMSA8TqgQDxhj3LnwcZZh44tFid Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="320022474"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="320022474"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:17:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="699070187"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:17:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:42 +0300
Message-Id: <c1c7562a31c115e9d6a131861e4ca9c97d4f7e09.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 16/38] drm/i915: move hotplug to
 display.hotplug
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

Move display hotplug related members under drm_i915_private display
sub-struct.

Rename struct i915_hotplug to intel_hotplug while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
 .../gpu/drm/i915/display/intel_display_core.h |  40 ++++++
 .../drm/i915/display/intel_display_debugfs.c  |  16 +--
 drivers/gpu/drm/i915/display/intel_dp.c       |   4 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 116 +++++++++---------
 drivers/gpu/drm/i915/display/intel_tc.c       |   4 +-
 drivers/gpu/drm/i915/i915_driver.c            |   6 +-
 drivers/gpu/drm/i915/i915_drv.h               |  40 ------
 drivers/gpu/drm/i915/i915_irq.c               |  52 ++++----
 10 files changed, 144 insertions(+), 144 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 82ad8fe7440c..e3e3d27ffb53 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1169,7 +1169,7 @@ intel_dp_hotplug(struct intel_encoder *encoder,
 static bool ibx_digital_port_connected(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit = dev_priv->hotplug.pch_hpd[encoder->hpd_pin];
+	u32 bit = dev_priv->display.hotplug.pch_hpd[encoder->hpd_pin];
 
 	return intel_de_read(dev_priv, SDEISR) & bit;
 }
@@ -1223,7 +1223,7 @@ static bool gm45_digital_port_connected(struct intel_encoder *encoder)
 static bool ilk_digital_port_connected(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit = dev_priv->hotplug.hpd[encoder->hpd_pin];
+	u32 bit = dev_priv->display.hotplug.hpd[encoder->hpd_pin];
 
 	return intel_de_read(dev_priv, DEISR) & bit;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3faebf37f6f1..b7702c4581aa 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4038,7 +4038,7 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 static bool lpt_digital_port_connected(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit = dev_priv->hotplug.pch_hpd[encoder->hpd_pin];
+	u32 bit = dev_priv->display.hotplug.pch_hpd[encoder->hpd_pin];
 
 	return intel_de_read(dev_priv, SDEISR) & bit;
 }
@@ -4046,7 +4046,7 @@ static bool lpt_digital_port_connected(struct intel_encoder *encoder)
 static bool hsw_digital_port_connected(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit = dev_priv->hotplug.hpd[encoder->hpd_pin];
+	u32 bit = dev_priv->display.hotplug.hpd[encoder->hpd_pin];
 
 	return intel_de_read(dev_priv, DEISR) & bit;
 }
@@ -4054,7 +4054,7 @@ static bool hsw_digital_port_connected(struct intel_encoder *encoder)
 static bool bdw_digital_port_connected(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit = dev_priv->hotplug.hpd[encoder->hpd_pin];
+	u32 bit = dev_priv->display.hotplug.hpd[encoder->hpd_pin];
 
 	return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & bit;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 13403ab70a3f..96d085bf5229 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -103,6 +103,45 @@ struct intel_dpll {
 	} ref_clks;
 };
 
+struct intel_hotplug {
+	struct delayed_work hotplug_work;
+
+	const u32 *hpd, *pch_hpd;
+
+	struct {
+		unsigned long last_jiffies;
+		int count;
+		enum {
+			HPD_ENABLED = 0,
+			HPD_DISABLED = 1,
+			HPD_MARK_DISABLED = 2
+		} state;
+	} stats[HPD_NUM_PINS];
+	u32 event_bits;
+	u32 retry_bits;
+	struct delayed_work reenable_work;
+
+	u32 long_port_mask;
+	u32 short_port_mask;
+	struct work_struct dig_port_work;
+
+	struct work_struct poll_init_work;
+	bool poll_enabled;
+
+	unsigned int hpd_storm_threshold;
+	/* Whether or not to count short HPD IRQs in HPD storms */
+	u8 hpd_short_storm_enabled;
+
+	/*
+	 * if we get a HPD irq from DP and a HPD irq from non-DP
+	 * the non-DP HPD could block the workqueue on a mode config
+	 * mutex getting, that userspace may have taken. However
+	 * userspace is waiting on the DP workqueue to run which is
+	 * blocked behind the non-DP one.
+	 */
+	struct workqueue_struct *dp_wq;
+};
+
 struct intel_wm {
 	/*
 	 * Raw watermark latency values:
@@ -211,6 +250,7 @@ struct intel_display {
 	struct intel_audio audio;
 	struct intel_dmc dmc;
 	struct intel_dpll dpll;
+	struct intel_hotplug hotplug;
 	struct intel_wm wm;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 395facf6c1aa..13c855b59f7d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1618,14 +1618,14 @@ static const struct file_operations i915_cur_wm_latency_fops = {
 static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = m->private;
-	struct i915_hotplug *hotplug = &dev_priv->hotplug;
+	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
 
 	/* Synchronize with everything first in case there's been an HPD
 	 * storm, but we haven't finished handling it in the kernel yet
 	 */
 	intel_synchronize_irq(dev_priv);
-	flush_work(&dev_priv->hotplug.dig_port_work);
-	flush_delayed_work(&dev_priv->hotplug.hotplug_work);
+	flush_work(&dev_priv->display.hotplug.dig_port_work);
+	flush_delayed_work(&dev_priv->display.hotplug.hotplug_work);
 
 	seq_printf(m, "Threshold: %d\n", hotplug->hpd_storm_threshold);
 	seq_printf(m, "Detected: %s\n",
@@ -1640,7 +1640,7 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct drm_i915_private *dev_priv = m->private;
-	struct i915_hotplug *hotplug = &dev_priv->hotplug;
+	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
 	unsigned int new_threshold;
 	int i;
 	char *newline;
@@ -1679,7 +1679,7 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *file,
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	/* Re-enable hpd immediately if we were in an irq storm */
-	flush_delayed_work(&dev_priv->hotplug.reenable_work);
+	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
 
 	return len;
 }
@@ -1703,7 +1703,7 @@ static int i915_hpd_short_storm_ctl_show(struct seq_file *m, void *data)
 	struct drm_i915_private *dev_priv = m->private;
 
 	seq_printf(m, "Enabled: %s\n",
-		   str_yes_no(dev_priv->hotplug.hpd_short_storm_enabled));
+		   str_yes_no(dev_priv->display.hotplug.hpd_short_storm_enabled));
 
 	return 0;
 }
@@ -1721,7 +1721,7 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct drm_i915_private *dev_priv = m->private;
-	struct i915_hotplug *hotplug = &dev_priv->hotplug;
+	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
 	char *newline;
 	char tmp[16];
 	int i;
@@ -1757,7 +1757,7 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	/* Re-enable hpd immediately if we were in an irq storm */
-	flush_delayed_work(&dev_priv->hotplug.reenable_work);
+	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
 
 	return len;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8d1559323412..6cb695e506f5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5042,9 +5042,9 @@ static void intel_dp_oob_hotplug_event(struct drm_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 
 	spin_lock_irq(&i915->irq_lock);
-	i915->hotplug.event_bits |= BIT(encoder->hpd_pin);
+	i915->display.hotplug.event_bits |= BIT(encoder->hpd_pin);
 	spin_unlock_irq(&i915->irq_lock);
-	queue_delayed_work(system_wq, &i915->hotplug.hotplug_work, 0);
+	queue_delayed_work(system_wq, &i915->display.hotplug.hotplug_work, 0);
 }
 
 static const struct drm_connector_funcs intel_dp_connector_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 5f8b4f481cff..f7a2f485b177 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -119,13 +119,13 @@ intel_connector_hpd_pin(struct intel_connector *connector)
  * responsible for further action.
  *
  * The number of IRQs that are allowed within @HPD_STORM_DETECT_PERIOD is
- * stored in @dev_priv->hotplug.hpd_storm_threshold which defaults to
+ * stored in @dev_priv->display.hotplug.hpd_storm_threshold which defaults to
  * @HPD_STORM_DEFAULT_THRESHOLD. Long IRQs count as +10 to this threshold, and
  * short IRQs count as +1. If this threshold is exceeded, it's considered an
  * IRQ storm and the IRQ state is set to @HPD_MARK_DISABLED.
  *
  * By default, most systems will only count long IRQs towards
- * &dev_priv->hotplug.hpd_storm_threshold. However, some older systems also
+ * &dev_priv->display.hotplug.hpd_storm_threshold. However, some older systems also
  * suffer from short IRQ storms and must also track these. Because short IRQ
  * storms are naturally caused by sideband interactions with DP MST devices,
  * short IRQ detection is only enabled for systems without DP MST support.
@@ -140,7 +140,7 @@ intel_connector_hpd_pin(struct intel_connector *connector)
 static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
 				       enum hpd_pin pin, bool long_hpd)
 {
-	struct i915_hotplug *hpd = &dev_priv->hotplug;
+	struct intel_hotplug *hpd = &dev_priv->display.hotplug;
 	unsigned long start = hpd->stats[pin].last_jiffies;
 	unsigned long end = start + msecs_to_jiffies(HPD_STORM_DETECT_PERIOD);
 	const int increment = long_hpd ? 10 : 1;
@@ -148,7 +148,7 @@ static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
 	bool storm = false;
 
 	if (!threshold ||
-	    (!long_hpd && !dev_priv->hotplug.hpd_short_storm_enabled))
+	    (!long_hpd && !dev_priv->display.hotplug.hpd_short_storm_enabled))
 		return false;
 
 	if (!time_in_range(jiffies, start, end)) {
@@ -191,7 +191,7 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 
 		pin = intel_connector_hpd_pin(connector);
 		if (pin == HPD_NONE ||
-		    dev_priv->hotplug.stats[pin].state != HPD_MARK_DISABLED)
+		    dev_priv->display.hotplug.stats[pin].state != HPD_MARK_DISABLED)
 			continue;
 
 		drm_info(&dev_priv->drm,
@@ -199,7 +199,7 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 			 "switching from hotplug detection to polling\n",
 			 connector->base.name);
 
-		dev_priv->hotplug.stats[pin].state = HPD_DISABLED;
+		dev_priv->display.hotplug.stats[pin].state = HPD_DISABLED;
 		connector->base.polled = DRM_CONNECTOR_POLL_CONNECT |
 			DRM_CONNECTOR_POLL_DISCONNECT;
 		hpd_disabled = true;
@@ -209,7 +209,7 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 	/* Enable polling and queue hotplug re-enabling. */
 	if (hpd_disabled) {
 		drm_kms_helper_poll_enable(dev);
-		mod_delayed_work(system_wq, &dev_priv->hotplug.reenable_work,
+		mod_delayed_work(system_wq, &dev_priv->display.hotplug.reenable_work,
 				 msecs_to_jiffies(HPD_STORM_REENABLE_DELAY));
 	}
 }
@@ -218,7 +218,7 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
 		container_of(work, typeof(*dev_priv),
-			     hotplug.reenable_work.work);
+			     display.hotplug.reenable_work.work);
 	struct drm_device *dev = &dev_priv->drm;
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
@@ -233,7 +233,7 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		pin = intel_connector_hpd_pin(connector);
 		if (pin == HPD_NONE ||
-		    dev_priv->hotplug.stats[pin].state != HPD_DISABLED)
+		    dev_priv->display.hotplug.stats[pin].state != HPD_DISABLED)
 			continue;
 
 		if (connector->base.polled != connector->polled)
@@ -245,8 +245,8 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 	drm_connector_list_iter_end(&conn_iter);
 
 	for_each_hpd_pin(pin) {
-		if (dev_priv->hotplug.stats[pin].state == HPD_DISABLED)
-			dev_priv->hotplug.stats[pin].state = HPD_ENABLED;
+		if (dev_priv->display.hotplug.stats[pin].state == HPD_DISABLED)
+			dev_priv->display.hotplug.stats[pin].state = HPD_ENABLED;
 	}
 
 	intel_hpd_irq_setup(dev_priv);
@@ -297,16 +297,16 @@ static bool intel_encoder_has_hpd_pulse(struct intel_encoder *encoder)
 static void i915_digport_work_func(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
-		container_of(work, struct drm_i915_private, hotplug.dig_port_work);
+		container_of(work, struct drm_i915_private, display.hotplug.dig_port_work);
 	u32 long_port_mask, short_port_mask;
 	struct intel_encoder *encoder;
 	u32 old_bits = 0;
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	long_port_mask = dev_priv->hotplug.long_port_mask;
-	dev_priv->hotplug.long_port_mask = 0;
-	short_port_mask = dev_priv->hotplug.short_port_mask;
-	dev_priv->hotplug.short_port_mask = 0;
+	long_port_mask = dev_priv->display.hotplug.long_port_mask;
+	dev_priv->display.hotplug.long_port_mask = 0;
+	short_port_mask = dev_priv->display.hotplug.short_port_mask;
+	dev_priv->display.hotplug.short_port_mask = 0;
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	for_each_intel_encoder(&dev_priv->drm, encoder) {
@@ -335,9 +335,9 @@ static void i915_digport_work_func(struct work_struct *work)
 
 	if (old_bits) {
 		spin_lock_irq(&dev_priv->irq_lock);
-		dev_priv->hotplug.event_bits |= old_bits;
+		dev_priv->display.hotplug.event_bits |= old_bits;
 		spin_unlock_irq(&dev_priv->irq_lock);
-		queue_delayed_work(system_wq, &dev_priv->hotplug.hotplug_work, 0);
+		queue_delayed_work(system_wq, &dev_priv->display.hotplug.hotplug_work, 0);
 	}
 }
 
@@ -353,10 +353,10 @@ void intel_hpd_trigger_irq(struct intel_digital_port *dig_port)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
 	spin_lock_irq(&i915->irq_lock);
-	i915->hotplug.short_port_mask |= BIT(dig_port->base.port);
+	i915->display.hotplug.short_port_mask |= BIT(dig_port->base.port);
 	spin_unlock_irq(&i915->irq_lock);
 
-	queue_work(i915->hotplug.dp_wq, &i915->hotplug.dig_port_work);
+	queue_work(i915->display.hotplug.dp_wq, &i915->display.hotplug.dig_port_work);
 }
 
 /*
@@ -366,7 +366,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
 		container_of(work, struct drm_i915_private,
-			     hotplug.hotplug_work.work);
+			     display.hotplug.hotplug_work.work);
 	struct drm_device *dev = &dev_priv->drm;
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
@@ -379,10 +379,10 @@ static void i915_hotplug_work_func(struct work_struct *work)
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
-	hpd_event_bits = dev_priv->hotplug.event_bits;
-	dev_priv->hotplug.event_bits = 0;
-	hpd_retry_bits = dev_priv->hotplug.retry_bits;
-	dev_priv->hotplug.retry_bits = 0;
+	hpd_event_bits = dev_priv->display.hotplug.event_bits;
+	dev_priv->display.hotplug.event_bits = 0;
+	hpd_retry_bits = dev_priv->display.hotplug.retry_bits;
+	dev_priv->display.hotplug.retry_bits = 0;
 
 	/* Enable polling for connectors which had HPD IRQ storms */
 	intel_hpd_irq_storm_switch_to_polling(dev_priv);
@@ -435,10 +435,10 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	retry &= ~changed;
 	if (retry) {
 		spin_lock_irq(&dev_priv->irq_lock);
-		dev_priv->hotplug.retry_bits |= retry;
+		dev_priv->display.hotplug.retry_bits |= retry;
 		spin_unlock_irq(&dev_priv->irq_lock);
 
-		mod_delayed_work(system_wq, &dev_priv->hotplug.hotplug_work,
+		mod_delayed_work(system_wq, &dev_priv->display.hotplug.hotplug_work,
 				 msecs_to_jiffies(HPD_RETRY_DELAY));
 	}
 }
@@ -502,10 +502,10 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 
 		if (long_hpd) {
 			long_hpd_pulse_mask |= BIT(pin);
-			dev_priv->hotplug.long_port_mask |= BIT(port);
+			dev_priv->display.hotplug.long_port_mask |= BIT(port);
 		} else {
 			short_hpd_pulse_mask |= BIT(pin);
-			dev_priv->hotplug.short_port_mask |= BIT(port);
+			dev_priv->display.hotplug.short_port_mask |= BIT(port);
 		}
 	}
 
@@ -516,7 +516,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 		if (!(BIT(pin) & pin_mask))
 			continue;
 
-		if (dev_priv->hotplug.stats[pin].state == HPD_DISABLED) {
+		if (dev_priv->display.hotplug.stats[pin].state == HPD_DISABLED) {
 			/*
 			 * On GMCH platforms the interrupt mask bits only
 			 * prevent irq generation, not the setting of the
@@ -529,7 +529,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 			continue;
 		}
 
-		if (dev_priv->hotplug.stats[pin].state != HPD_ENABLED)
+		if (dev_priv->display.hotplug.stats[pin].state != HPD_ENABLED)
 			continue;
 
 		/*
@@ -540,13 +540,13 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 		if (((short_hpd_pulse_mask | long_hpd_pulse_mask) & BIT(pin))) {
 			long_hpd = long_hpd_pulse_mask & BIT(pin);
 		} else {
-			dev_priv->hotplug.event_bits |= BIT(pin);
+			dev_priv->display.hotplug.event_bits |= BIT(pin);
 			long_hpd = true;
 			queue_hp = true;
 		}
 
 		if (intel_hpd_irq_storm_detect(dev_priv, pin, long_hpd)) {
-			dev_priv->hotplug.event_bits &= ~BIT(pin);
+			dev_priv->display.hotplug.event_bits &= ~BIT(pin);
 			storm_detected = true;
 			queue_hp = true;
 		}
@@ -567,9 +567,9 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 	 * deadlock.
 	 */
 	if (queue_dig)
-		queue_work(dev_priv->hotplug.dp_wq, &dev_priv->hotplug.dig_port_work);
+		queue_work(dev_priv->display.hotplug.dp_wq, &dev_priv->display.hotplug.dig_port_work);
 	if (queue_hp)
-		queue_delayed_work(system_wq, &dev_priv->hotplug.hotplug_work, 0);
+		queue_delayed_work(system_wq, &dev_priv->display.hotplug.hotplug_work, 0);
 }
 
 /**
@@ -594,8 +594,8 @@ void intel_hpd_init(struct drm_i915_private *dev_priv)
 		return;
 
 	for_each_hpd_pin(i) {
-		dev_priv->hotplug.stats[i].count = 0;
-		dev_priv->hotplug.stats[i].state = HPD_ENABLED;
+		dev_priv->display.hotplug.stats[i].count = 0;
+		dev_priv->display.hotplug.stats[i].state = HPD_ENABLED;
 	}
 
 	/*
@@ -611,7 +611,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
 		container_of(work, struct drm_i915_private,
-			     hotplug.poll_init_work);
+			     display.hotplug.poll_init_work);
 	struct drm_device *dev = &dev_priv->drm;
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
@@ -619,7 +619,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 
 	mutex_lock(&dev->mode_config.mutex);
 
-	enabled = READ_ONCE(dev_priv->hotplug.poll_enabled);
+	enabled = READ_ONCE(dev_priv->display.hotplug.poll_enabled);
 
 	drm_connector_list_iter_begin(dev, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
@@ -672,7 +672,7 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
 	    !INTEL_DISPLAY_ENABLED(dev_priv))
 		return;
 
-	WRITE_ONCE(dev_priv->hotplug.poll_enabled, true);
+	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, true);
 
 	/*
 	 * We might already be holding dev->mode_config.mutex, so do this in a
@@ -680,7 +680,7 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
 	 * As well, there's no issue if we race here since we always reschedule
 	 * this worker anyway
 	 */
-	schedule_work(&dev_priv->hotplug.poll_init_work);
+	schedule_work(&dev_priv->display.hotplug.poll_init_work);
 }
 
 /**
@@ -707,17 +707,17 @@ void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	WRITE_ONCE(dev_priv->hotplug.poll_enabled, false);
-	schedule_work(&dev_priv->hotplug.poll_init_work);
+	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, false);
+	schedule_work(&dev_priv->display.hotplug.poll_init_work);
 }
 
 void intel_hpd_init_work(struct drm_i915_private *dev_priv)
 {
-	INIT_DELAYED_WORK(&dev_priv->hotplug.hotplug_work,
+	INIT_DELAYED_WORK(&dev_priv->display.hotplug.hotplug_work,
 			  i915_hotplug_work_func);
-	INIT_WORK(&dev_priv->hotplug.dig_port_work, i915_digport_work_func);
-	INIT_WORK(&dev_priv->hotplug.poll_init_work, i915_hpd_poll_init_work);
-	INIT_DELAYED_WORK(&dev_priv->hotplug.reenable_work,
+	INIT_WORK(&dev_priv->display.hotplug.dig_port_work, i915_digport_work_func);
+	INIT_WORK(&dev_priv->display.hotplug.poll_init_work, i915_hpd_poll_init_work);
+	INIT_DELAYED_WORK(&dev_priv->display.hotplug.reenable_work,
 			  intel_hpd_irq_storm_reenable_work);
 }
 
@@ -728,17 +728,17 @@ void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
-	dev_priv->hotplug.long_port_mask = 0;
-	dev_priv->hotplug.short_port_mask = 0;
-	dev_priv->hotplug.event_bits = 0;
-	dev_priv->hotplug.retry_bits = 0;
+	dev_priv->display.hotplug.long_port_mask = 0;
+	dev_priv->display.hotplug.short_port_mask = 0;
+	dev_priv->display.hotplug.event_bits = 0;
+	dev_priv->display.hotplug.retry_bits = 0;
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 
-	cancel_work_sync(&dev_priv->hotplug.dig_port_work);
-	cancel_delayed_work_sync(&dev_priv->hotplug.hotplug_work);
-	cancel_work_sync(&dev_priv->hotplug.poll_init_work);
-	cancel_delayed_work_sync(&dev_priv->hotplug.reenable_work);
+	cancel_work_sync(&dev_priv->display.hotplug.dig_port_work);
+	cancel_delayed_work_sync(&dev_priv->display.hotplug.hotplug_work);
+	cancel_work_sync(&dev_priv->display.hotplug.poll_init_work);
+	cancel_delayed_work_sync(&dev_priv->display.hotplug.reenable_work);
 }
 
 bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
@@ -749,8 +749,8 @@ bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
 		return false;
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	if (dev_priv->hotplug.stats[pin].state == HPD_ENABLED) {
-		dev_priv->hotplug.stats[pin].state = HPD_DISABLED;
+	if (dev_priv->display.hotplug.stats[pin].state == HPD_ENABLED) {
+		dev_priv->display.hotplug.stats[pin].state = HPD_DISABLED;
 		ret = true;
 	}
 	spin_unlock_irq(&dev_priv->irq_lock);
@@ -764,6 +764,6 @@ void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
 		return;
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	dev_priv->hotplug.stats[pin].state = HPD_ENABLED;
+	dev_priv->display.hotplug.stats[pin].state = HPD_ENABLED;
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 6773840f6cc7..e5af955b5600 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -246,7 +246,7 @@ static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_uncore *uncore = &i915->uncore;
-	u32 isr_bit = i915->hotplug.pch_hpd[dig_port->base.hpd_pin];
+	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
 	u32 mask = 0;
 	u32 val;
 
@@ -279,7 +279,7 @@ static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
-	u32 isr_bit = i915->hotplug.pch_hpd[dig_port->base.hpd_pin];
+	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
 	struct intel_uncore *uncore = &i915->uncore;
 	u32 val, mask = 0;
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d6fe6e8a868b..e1f77b0973d7 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -252,8 +252,8 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	if (dev_priv->wq == NULL)
 		goto out_err;
 
-	dev_priv->hotplug.dp_wq = alloc_ordered_workqueue("i915-dp", 0);
-	if (dev_priv->hotplug.dp_wq == NULL)
+	dev_priv->display.hotplug.dp_wq = alloc_ordered_workqueue("i915-dp", 0);
+	if (dev_priv->display.hotplug.dp_wq == NULL)
 		goto out_free_wq;
 
 	return 0;
@@ -268,7 +268,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 
 static void i915_workqueues_cleanup(struct drm_i915_private *dev_priv)
 {
-	destroy_workqueue(dev_priv->hotplug.dp_wq);
+	destroy_workqueue(dev_priv->display.hotplug.dp_wq);
 	destroy_workqueue(dev_priv->wq);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 4803e28b8aa5..f6c8c0f2f633 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -90,45 +90,6 @@ struct vlv_s0ix_state;
 /* Threshold == 5 for long IRQs, 50 for short */
 #define HPD_STORM_DEFAULT_THRESHOLD 50
 
-struct i915_hotplug {
-	struct delayed_work hotplug_work;
-
-	const u32 *hpd, *pch_hpd;
-
-	struct {
-		unsigned long last_jiffies;
-		int count;
-		enum {
-			HPD_ENABLED = 0,
-			HPD_DISABLED = 1,
-			HPD_MARK_DISABLED = 2
-		} state;
-	} stats[HPD_NUM_PINS];
-	u32 event_bits;
-	u32 retry_bits;
-	struct delayed_work reenable_work;
-
-	u32 long_port_mask;
-	u32 short_port_mask;
-	struct work_struct dig_port_work;
-
-	struct work_struct poll_init_work;
-	bool poll_enabled;
-
-	unsigned int hpd_storm_threshold;
-	/* Whether or not to count short HPD IRQs in HPD storms */
-	u8 hpd_short_storm_enabled;
-
-	/*
-	 * if we get a HPD irq from DP and a HPD irq from non-DP
-	 * the non-DP HPD could block the workqueue on a mode config
-	 * mutex getting, that userspace may have taken. However
-	 * userspace is waiting on the DP workqueue to run which is
-	 * blocked behind the non-DP one.
-	 */
-	struct workqueue_struct *dp_wq;
-};
-
 #define I915_GEM_GPU_DOMAINS \
 	(I915_GEM_DOMAIN_RENDER | \
 	 I915_GEM_DOMAIN_SAMPLER | \
@@ -376,7 +337,6 @@ struct drm_i915_private {
 	};
 	u32 pipestat_irq_mask[I915_MAX_PIPES];
 
-	struct i915_hotplug hotplug;
 	struct intel_fbc *fbc[I915_MAX_FBCS];
 	struct intel_opregion opregion;
 	struct intel_vbt_data vbt;
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index b0095b289a79..c2f2d7b8d964 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -185,7 +185,7 @@ static const u32 hpd_sde_dg1[HPD_NUM_PINS] = {
 
 static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 {
-	struct i915_hotplug *hpd = &dev_priv->hotplug;
+	struct intel_hotplug *hpd = &dev_priv->display.hotplug;
 
 	if (HAS_GMCH(dev_priv)) {
 		if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
@@ -1272,7 +1272,7 @@ static u32 intel_hpd_enabled_irqs(struct drm_i915_private *dev_priv,
 	u32 enabled_irqs = 0;
 
 	for_each_intel_encoder(&dev_priv->drm, encoder)
-		if (dev_priv->hotplug.stats[encoder->hpd_pin].state == HPD_ENABLED)
+		if (dev_priv->display.hotplug.stats[encoder->hpd_pin].state == HPD_ENABLED)
 			enabled_irqs |= hpd[encoder->hpd_pin];
 
 	return enabled_irqs;
@@ -1637,7 +1637,7 @@ static void i9xx_hpd_irq_handler(struct drm_i915_private *dev_priv,
 	if (hotplug_trigger) {
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   hotplug_trigger, hotplug_trigger,
-				   dev_priv->hotplug.hpd,
+				   dev_priv->display.hotplug.hpd,
 				   i9xx_port_hotplug_long_detect);
 
 		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
@@ -1841,7 +1841,7 @@ static void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv,
 
 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
-			   dev_priv->hotplug.pch_hpd,
+			   dev_priv->display.hotplug.pch_hpd,
 			   pch_port_hotplug_long_detect);
 
 	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
@@ -1986,7 +1986,7 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   ddi_hotplug_trigger, dig_hotplug_reg,
-				   dev_priv->hotplug.pch_hpd,
+				   dev_priv->display.hotplug.pch_hpd,
 				   icp_ddi_port_hotplug_long_detect);
 	}
 
@@ -1998,7 +1998,7 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   tc_hotplug_trigger, dig_hotplug_reg,
-				   dev_priv->hotplug.pch_hpd,
+				   dev_priv->display.hotplug.pch_hpd,
 				   icp_tc_port_hotplug_long_detect);
 	}
 
@@ -2024,7 +2024,7 @@ static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   hotplug_trigger, dig_hotplug_reg,
-				   dev_priv->hotplug.pch_hpd,
+				   dev_priv->display.hotplug.pch_hpd,
 				   spt_port_hotplug_long_detect);
 	}
 
@@ -2036,7 +2036,7 @@ static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   hotplug2_trigger, dig_hotplug_reg,
-				   dev_priv->hotplug.pch_hpd,
+				   dev_priv->display.hotplug.pch_hpd,
 				   spt_port_hotplug2_long_detect);
 	}
 
@@ -2057,7 +2057,7 @@ static void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv,
 
 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
-			   dev_priv->hotplug.hpd,
+			   dev_priv->display.hotplug.hpd,
 			   ilk_port_hotplug_long_detect);
 
 	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
@@ -2237,7 +2237,7 @@ static void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv,
 
 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
-			   dev_priv->hotplug.hpd,
+			   dev_priv->display.hotplug.hpd,
 			   bxt_port_hotplug_long_detect);
 
 	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
@@ -2257,7 +2257,7 @@ static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   trigger_tc, dig_hotplug_reg,
-				   dev_priv->hotplug.hpd,
+				   dev_priv->display.hotplug.hpd,
 				   gen11_port_hotplug_long_detect);
 	}
 
@@ -2269,7 +2269,7 @@ static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   trigger_tbt, dig_hotplug_reg,
-				   dev_priv->hotplug.hpd,
+				   dev_priv->display.hotplug.hpd,
 				   gen11_port_hotplug_long_detect);
 	}
 
@@ -3313,8 +3313,8 @@ static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
 
 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
 
@@ -3383,8 +3383,8 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
 
 	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
 		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
@@ -3460,8 +3460,8 @@ static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	u32 hotplug_irqs, enabled_irqs;
 	u32 val;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
 
 	val = intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
 	val &= ~hotplug_irqs;
@@ -3538,8 +3538,8 @@ static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
 		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
 
 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
 
@@ -3578,8 +3578,8 @@ static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
 
 	if (DISPLAY_VER(dev_priv) >= 8)
 		bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
@@ -3636,8 +3636,8 @@ static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
 
 	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
 
@@ -4413,14 +4413,14 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		dev_priv->display_irqs_enabled = false;
 
-	dev_priv->hotplug.hpd_storm_threshold = HPD_STORM_DEFAULT_THRESHOLD;
+	dev_priv->display.hotplug.hpd_storm_threshold = HPD_STORM_DEFAULT_THRESHOLD;
 	/* If we have MST support, we want to avoid doing short HPD IRQ storm
 	 * detection, as short HPD storms will occur as a natural part of
 	 * sideband messaging with MST.
 	 * On older platforms however, IRQ storms can occur with both long and
 	 * short pulses, as seen on some G4x systems.
 	 */
-	dev_priv->hotplug.hpd_short_storm_enabled = !HAS_DP_MST(dev_priv);
+	dev_priv->display.hotplug.hpd_short_storm_enabled = !HAS_DP_MST(dev_priv);
 
 	if (HAS_GMCH(dev_priv)) {
 		if (I915_HAS_HOTPLUG(dev_priv))
-- 
2.34.1

