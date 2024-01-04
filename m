Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B96E823D76
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:30:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2772210E3CD;
	Thu,  4 Jan 2024 08:30:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EED8810E3C9
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704357006; x=1735893006;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=F8M5bykFtHvfGpk16tho3KzlMWsuylEl49enWmqBT+w=;
 b=Ywd4qqKM6IJHkwi3+2q0I3HoB1o1exQTTrwq1U1onHE1A+oYKiSuPgk0
 tqmV3G17phj4wOzZPb6fdUtWNKkIoWhwV3OsbvUTFIzVN3RuMjsj2JlMB
 lscey9TAKFlGMKFxxIdZAJk28IqcVEvwkBEF5sxVvJNHPV4IvSKSXaN1F
 XeOw5YJ9TK7IDV2WC2Qd8moFbIQDfYuv9HVNbcRHm0frE5RI13xkmB0lk
 yCe9V+J3L4U65GfRue0SSuw+YCi+cbwJG2kGaXi24r788aTd5UaI7DhP7
 kDcLUyWN++8/d82nreQJ/EArFYCzg2tWPsDwCsEJRq7FY3XY6iPW78D2a A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="387624534"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="387624534"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="773422687"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="773422687"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:05 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/12] drm/i915: Disable hotplug detection works during driver
 init/shutdown
Date: Thu,  4 Jan 2024 10:30:04 +0200
Message-Id: <20240104083008.2715733-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104083008.2715733-1-imre.deak@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
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

As described in the previous patch, an unexpected connector
detection/modeset started from the intel_hotplug::hotplug_work can
happen during the driver init/shutdown sequence. Prevent these by
disabling the queuing of and flushing all the intel_hotplug work that
can start them at the beginning of the init/shutdown sequence and allow
the queuing only while the display is in the initialized state.

Other work items - like the intel_connector::modeset_retry_work or the
MST probe works - are still enabled and can start a detection/modeset,
but after the previous patch these will be rejected. Disabling these
works as well is for a follow-up patchset.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |   6 +
 .../drm/i915/display/intel_display_driver.c   |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 158 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_hotplug.h  |   4 +
 5 files changed, 154 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 0b130ca9e6698..8853a05dc3318 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -174,6 +174,12 @@ struct intel_hotplug {
 	struct work_struct poll_init_work;
 	bool poll_enabled;
 
+	/*
+	 * Queuing of hotplug_work, reenable_work and poll_init_work is
+	 * enabled. Protected by drm_i915_private::irq_lock.
+	 */
+	bool detection_work_enabled;
+
 	unsigned int hpd_storm_threshold;
 	/* Whether or not to count short HPD IRQs in HPD storms */
 	u8 hpd_short_storm_enabled;
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index b2441ab9822c2..40e4ba942fa3a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -299,10 +299,14 @@ static void set_display_access(struct drm_i915_private *i915,
 void intel_display_driver_enable_user_access(struct drm_i915_private *i915)
 {
 	set_display_access(i915, true, NULL);
+
+	intel_hpd_enable_detection_work(i915);
 }
 
 void intel_display_driver_disable_user_access(struct drm_i915_private *i915)
 {
+	intel_hpd_disable_detection_work(i915);
+
 	set_display_access(i915, false, current);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fed649af8fc85..96ec6f1554c60 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6026,7 +6026,7 @@ static void intel_dp_oob_hotplug_event(struct drm_connector *connector,
 	spin_unlock_irq(&i915->irq_lock);
 
 	if (need_work)
-		queue_delayed_work(i915->unordered_wq, &i915->display.hotplug.hotplug_work, 0);
+		intel_hpd_schedule_detection(i915);
 }
 
 static const struct drm_connector_funcs intel_dp_connector_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 74513c3d3690b..d9ec349f3c8c3 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -177,6 +177,46 @@ static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
 	return storm;
 }
 
+static bool detection_work_enabled(struct drm_i915_private *i915)
+{
+	lockdep_assert_held(&i915->irq_lock);
+
+	return i915->display.hotplug.detection_work_enabled;
+}
+
+static bool
+mod_delayed_detection_work(struct drm_i915_private *i915, struct delayed_work *work, int delay)
+{
+	lockdep_assert_held(&i915->irq_lock);
+
+	if (!detection_work_enabled(i915))
+		return false;
+
+	return mod_delayed_work(i915->unordered_wq, work, delay);
+}
+
+static bool
+queue_delayed_detection_work(struct drm_i915_private *i915, struct delayed_work *work, int delay)
+{
+	lockdep_assert_held(&i915->irq_lock);
+
+	if (!detection_work_enabled(i915))
+		return false;
+
+	return queue_delayed_work(i915->unordered_wq, work, delay);
+}
+
+static bool
+queue_detection_work(struct drm_i915_private *i915, struct work_struct *work)
+{
+	lockdep_assert_held(&i915->irq_lock);
+
+	if (!detection_work_enabled(i915))
+		return false;
+
+	return queue_work(i915->unordered_wq, work);
+}
+
 static void
 intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 {
@@ -213,9 +253,9 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 	/* Enable polling and queue hotplug re-enabling. */
 	if (hpd_disabled) {
 		drm_kms_helper_poll_reschedule(&dev_priv->drm);
-		mod_delayed_work(dev_priv->unordered_wq,
-				 &dev_priv->display.hotplug.reenable_work,
-				 msecs_to_jiffies(HPD_STORM_REENABLE_DELAY));
+		mod_delayed_detection_work(dev_priv,
+					   &dev_priv->display.hotplug.reenable_work,
+					   msecs_to_jiffies(HPD_STORM_REENABLE_DELAY));
 	}
 }
 
@@ -348,9 +388,9 @@ static void i915_digport_work_func(struct work_struct *work)
 	if (old_bits) {
 		spin_lock_irq(&dev_priv->irq_lock);
 		dev_priv->display.hotplug.event_bits |= old_bits;
+		queue_delayed_detection_work(dev_priv,
+					     &dev_priv->display.hotplug.hotplug_work, 0);
 		spin_unlock_irq(&dev_priv->irq_lock);
-		queue_delayed_work(dev_priv->unordered_wq,
-				   &dev_priv->display.hotplug.hotplug_work, 0);
 	}
 }
 
@@ -467,11 +507,11 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	if (retry) {
 		spin_lock_irq(&dev_priv->irq_lock);
 		dev_priv->display.hotplug.retry_bits |= retry;
-		spin_unlock_irq(&dev_priv->irq_lock);
 
-		mod_delayed_work(dev_priv->unordered_wq,
-				 &dev_priv->display.hotplug.hotplug_work,
-				 msecs_to_jiffies(HPD_RETRY_DELAY));
+		mod_delayed_detection_work(dev_priv,
+					   &dev_priv->display.hotplug.hotplug_work,
+					   msecs_to_jiffies(HPD_RETRY_DELAY));
+		spin_unlock_irq(&dev_priv->irq_lock);
 	}
 }
 
@@ -590,7 +630,6 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 	 */
 	if (storm_detected)
 		intel_hpd_irq_setup(dev_priv);
-	spin_unlock(&dev_priv->irq_lock);
 
 	/*
 	 * Our hotplug handler can grab modeset locks (by calling down into the
@@ -601,8 +640,10 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 	if (queue_dig)
 		queue_work(dev_priv->display.hotplug.dp_wq, &dev_priv->display.hotplug.dig_port_work);
 	if (queue_hp)
-		queue_delayed_work(dev_priv->unordered_wq,
-				   &dev_priv->display.hotplug.hotplug_work, 0);
+		queue_delayed_detection_work(dev_priv,
+					     &dev_priv->display.hotplug.hotplug_work, 0);
+
+	spin_unlock(&dev_priv->irq_lock);
 }
 
 /**
@@ -781,8 +822,10 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
 	 * As well, there's no issue if we race here since we always reschedule
 	 * this worker anyway
 	 */
-	queue_work(dev_priv->unordered_wq,
-		   &dev_priv->display.hotplug.poll_init_work);
+	spin_lock_irq(&dev_priv->irq_lock);
+	queue_detection_work(dev_priv,
+			     &dev_priv->display.hotplug.poll_init_work);
+	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
 /**
@@ -810,8 +853,11 @@ void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
 		return;
 
 	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, false);
-	queue_work(dev_priv->unordered_wq,
-		   &dev_priv->display.hotplug.poll_init_work);
+
+	spin_lock_irq(&dev_priv->irq_lock);
+	queue_detection_work(dev_priv,
+			     &dev_priv->display.hotplug.poll_init_work);
+	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
 void intel_hpd_init_early(struct drm_i915_private *i915)
@@ -833,6 +879,20 @@ void intel_hpd_init_early(struct drm_i915_private *i915)
 	i915->display.hotplug.hpd_short_storm_enabled = !HAS_DP_MST(i915);
 }
 
+static bool cancel_all_detection_work(struct drm_i915_private *i915)
+{
+	bool was_pending = false;
+
+	if (cancel_delayed_work_sync(&i915->display.hotplug.hotplug_work))
+		was_pending = true;
+	if (cancel_work_sync(&i915->display.hotplug.poll_init_work))
+		was_pending = true;
+	if (cancel_delayed_work_sync(&i915->display.hotplug.reenable_work))
+		was_pending = true;
+
+	return was_pending;
+}
+
 void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
 {
 	if (!HAS_DISPLAY(dev_priv))
@@ -848,9 +908,13 @@ void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	cancel_work_sync(&dev_priv->display.hotplug.dig_port_work);
-	cancel_delayed_work_sync(&dev_priv->display.hotplug.hotplug_work);
-	cancel_work_sync(&dev_priv->display.hotplug.poll_init_work);
-	cancel_delayed_work_sync(&dev_priv->display.hotplug.reenable_work);
+
+	/*
+	 * All other work triggered by hotplug events should be canceled by
+	 * now.
+	 */
+	if (cancel_all_detection_work(dev_priv))
+		drm_dbg_kms(&dev_priv->drm, "Hotplug detection work still active\n");
 }
 
 bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
@@ -880,6 +944,62 @@ void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
+static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
+{
+	bool queue_work = false;
+	enum hpd_pin pin;
+
+	lockdep_assert_held(&i915->irq_lock);
+
+	if (i915->display.hotplug.event_bits ||
+	    i915->display.hotplug.retry_bits)
+		queue_work = true;
+
+	for_each_hpd_pin(pin) {
+		switch (i915->display.hotplug.stats[pin].state) {
+		case HPD_MARK_DISABLED:
+			queue_work = true;
+			break;
+		case HPD_ENABLED:
+			break;
+		default:
+			MISSING_CASE(i915->display.hotplug.stats[pin].state);
+		}
+	}
+
+	if (queue_work)
+		queue_delayed_detection_work(i915, &i915->display.hotplug.hotplug_work, 0);
+}
+
+void intel_hpd_enable_detection_work(struct drm_i915_private *i915)
+{
+	spin_lock_irq(&i915->irq_lock);
+	i915->display.hotplug.detection_work_enabled = true;
+	queue_work_for_missed_irqs(i915);
+	spin_unlock_irq(&i915->irq_lock);
+}
+
+void intel_hpd_disable_detection_work(struct drm_i915_private *i915)
+{
+	spin_lock_irq(&i915->irq_lock);
+	i915->display.hotplug.detection_work_enabled = false;
+	spin_unlock_irq(&i915->irq_lock);
+
+	cancel_all_detection_work(i915);
+}
+
+bool intel_hpd_schedule_detection(struct drm_i915_private *i915)
+{
+	unsigned long flags;
+	bool ret;
+
+	spin_lock_irqsave(&i915->irq_lock, flags);
+	ret = queue_delayed_detection_work(i915, &i915->display.hotplug.hotplug_work, 0);
+	spin_unlock_irqrestore(&i915->irq_lock, flags);
+
+	return ret;
+}
+
 static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = m->private;
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index 424ae5dbf5a0e..a17253ddec83a 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -30,4 +30,8 @@ bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
 void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
 void intel_hpd_debugfs_register(struct drm_i915_private *i915);
 
+void intel_hpd_enable_detection_work(struct drm_i915_private *i915);
+void intel_hpd_disable_detection_work(struct drm_i915_private *i915);
+bool intel_hpd_schedule_detection(struct drm_i915_private *i915);
+
 #endif /* __INTEL_HOTPLUG_H__ */
-- 
2.39.2

