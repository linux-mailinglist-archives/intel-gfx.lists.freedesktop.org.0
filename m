Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0F2A43EFF
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 13:14:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E58A10E658;
	Tue, 25 Feb 2025 12:14:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fKOBnXRk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4203110E65B;
 Tue, 25 Feb 2025 12:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740485677; x=1772021677;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bNHNo96sAStb/CqO9QDlvyZdRdHqLc3DaNVPcr8XBUE=;
 b=fKOBnXRkrT0nG+RNtkmChrUycjUwZzcBF6ipkfx731quT331DONssOBn
 lX4CYKLoRMhKkMxomtDZzSwC2V0ShwTdRnqFdQEKctO9lCYmLqCsVWWh1
 JVaANkA0VzqAAlL+sG2wmF8tDi7/oqpCf06CWrgAmVtmEyGk7TeGrnz7a
 2sHLkLy3/BPl2MQbUACTQtC8+f04ESjyMqQQ/dKZHy6dLcCwPJ/VhRabv
 hD6Ony3ublsDSWxSg6JQZ5Pz92JDTAveU3CqkPw3EHiBpsm1uw80WV6PH
 z39TOPohpoO+/8UQ4KulIXUJvG+jsfFGKsUayBfaBSlzfRf0coU9lNvoO A==;
X-CSE-ConnectionGUID: 3aDBIw8FSgmDWp3MTlw7Yw==
X-CSE-MsgGUID: MzgKFmTjQDehq3dAC/OjZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="58710571"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="58710571"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 04:14:36 -0800
X-CSE-ConnectionGUID: cVMqT6eVTJ6Tye/eIb+kKA==
X-CSE-MsgGUID: 4kklCONXQ4WYNyQkLLUEpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="121321814"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 04:14:36 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v2 5/5] drm/i915/crt: Use intel_hpd_suspend/resume() instead
 of intel_hpd_disable/enable()
Date: Tue, 25 Feb 2025 14:15:36 +0200
Message-ID: <20250225121536.2152940-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250224193115.2058512-6-imre.deak@intel.com>
References: <20250224193115.2058512-6-imre.deak@intel.com>
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

intel_hpd_disable/enable() have the same purpose as
intel_hpd_suspend/resume(), except that disable/enable will drop any HPD
IRQs which were triggered while the HPD was disabled, while
suspend/resume will handle such IRQs after the IRQ handling is resumed.
Use intel_hpd_suspend/resume() for crt as well, by adding a helper to
explicitly clear any pending IRQs before resuming.

v2:
- Handle encoders without a port assigned to them.
- Rebase on change in intel_hpd_suspend() documentation.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c     |  7 +--
 drivers/gpu/drm/i915/display/intel_hotplug.c | 63 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_hotplug.h |  3 +-
 3 files changed, 38 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 321580b095e7d..67b6731d7cdd2 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -531,8 +531,6 @@ static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
-	bool reenable_hpd;
 	u32 adpa;
 	bool ret;
 	u32 save_adpa;
@@ -549,7 +547,7 @@ static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 	 *
 	 * Just disable HPD interrupts here to prevent this
 	 */
-	reenable_hpd = intel_hpd_disable(dev_priv, crt->base.hpd_pin);
+	intel_hpd_suspend(&crt->base);
 
 	save_adpa = adpa = intel_de_read(display, crt->adpa_reg);
 	drm_dbg_kms(display->drm,
@@ -576,8 +574,7 @@ static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 	drm_dbg_kms(display->drm,
 		    "valleyview hotplug adpa=0x%x, result %d\n", adpa, ret);
 
-	if (reenable_hpd)
-		intel_hpd_enable(dev_priv, crt->base.hpd_pin);
+	intel_hpd_clear_and_resume(&crt->base);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 85c56b8add8b0..4428a4dec5e20 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -1006,33 +1006,6 @@ void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
 		drm_dbg_kms(&dev_priv->drm, "Hotplug detection work still active\n");
 }
 
-bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
-{
-	bool ret = false;
-
-	if (pin == HPD_NONE)
-		return false;
-
-	spin_lock_irq(&dev_priv->irq_lock);
-	if (dev_priv->display.hotplug.stats[pin].state == HPD_ENABLED) {
-		dev_priv->display.hotplug.stats[pin].state = HPD_DISABLED;
-		ret = true;
-	}
-	spin_unlock_irq(&dev_priv->irq_lock);
-
-	return ret;
-}
-
-void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
-{
-	if (pin == HPD_NONE)
-		return;
-
-	spin_lock_irq(&dev_priv->irq_lock);
-	dev_priv->display.hotplug.stats[pin].state = HPD_ENABLED;
-	spin_unlock_irq(&dev_priv->irq_lock);
-}
-
 static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
 {
 	struct intel_display *display = to_intel_display(&i915->drm);
@@ -1085,7 +1058,8 @@ static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
  *   drm_connector_funcs::detect()) remains allowed, for instance as part of
  *   userspace connector probing, or DRM core's connector polling.
  *
- * The call must be followed by calling intel_hpd_resume().
+ * The call must be followed by calling intel_hpd_resume(), or
+ * intel_hpd_clear_and_resume().
  *
  * Note that the handling of HPD IRQs for another encoder using the same HPD
  * pin as that of @encoder will be also suspended.
@@ -1151,6 +1125,39 @@ void intel_hpd_resume(struct intel_encoder *encoder)
 	spin_unlock_irq(&i915->irq_lock);
 }
 
+/**
+ * intel_hpd_clear_and_resume - Resume handling of new HPD IRQs on an HPD pin
+ * @encoder: Encoder to resume the HPD handling for
+ *
+ * Resume the handling of HPD IRQs on the HPD pin of @encoder, which was
+ * previously suspended by intel_hpd_suspend(). Any HPD IRQ raised on the
+ * HPD pin while it was suspended will be cleared, handling only new IRQs.
+ */
+void intel_hpd_clear_and_resume(struct intel_encoder *encoder)
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
+	hotplug->event_bits &= ~BIT(encoder->hpd_pin);
+	hotplug->retry_bits &= ~BIT(encoder->hpd_pin);
+
+	if (intel_encoder_has_hpd_pulse(encoder)) {
+		drm_WARN_ON(display->drm, encoder->port == PORT_NONE);
+		hotplug->short_port_mask &= ~BIT(encoder->port);
+		hotplug->long_port_mask &= ~BIT(encoder->port);
+	}
+
+	resume_hpd(encoder);
+
+	spin_unlock_irq(&i915->irq_lock);
+}
+
 void intel_hpd_enable_detection_work(struct drm_i915_private *i915)
 {
 	spin_lock_irq(&i915->irq_lock);
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index 5180731def7cc..0a4d1af0e42f1 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -26,10 +26,9 @@ void intel_hpd_init(struct drm_i915_private *dev_priv);
 void intel_hpd_init_early(struct drm_i915_private *i915);
 void intel_hpd_cancel_work(struct drm_i915_private *dev_priv);
 enum hpd_pin intel_hpd_pin_default(enum port port);
-bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
-void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
 void intel_hpd_suspend(struct intel_encoder *encoder);
 void intel_hpd_resume(struct intel_encoder *encoder);
+void intel_hpd_clear_and_resume(struct intel_encoder *encoder);
 void intel_hpd_debugfs_register(struct drm_i915_private *i915);
 
 void intel_hpd_enable_detection_work(struct drm_i915_private *i915);
-- 
2.44.2

