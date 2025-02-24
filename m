Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33501A42CC4
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 20:30:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACEB710E4F5;
	Mon, 24 Feb 2025 19:30:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cjvV5B15";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C77A210E4F0;
 Mon, 24 Feb 2025 19:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740425421; x=1771961421;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3gcIcvRn2Sv0EOGAD5LxzInHy74eMpMhxMlAs9dfYN8=;
 b=cjvV5B151cX2bajpv65HQ3P91WUSJt12Edp90bGogOILJu9aKiyV+z61
 905RSLcgK1MUrB8ONzkOZZT6bPXxCaXaTurTJPQ4sWnxPJcI/T9493rAH
 0iqN7Z2tv9USeGu+NSO5sRnCjDOIjn26jbSF/GxCGrju/rwTwsUpvK8Wh
 eMEd32Lak2rntQ5p8jv7fToyK77PmM5QdpUyr13RSbVnUq3fqjHWoIsA/
 iCbO6lwrKJD5BV0nJ1srTypy6/LS+4CkNeVIPK6x5lKKLK1yfGCLrv2xt
 IqCmzz5WEI0oOp+MECMTlPZSSCW03Cz1nDr7mNFgm740LH1SiHcucLcxp g==;
X-CSE-ConnectionGUID: otrD6Ni7TSW5HxQwK0JDug==
X-CSE-MsgGUID: TG8ExbzaQr2MpLwcBEEyKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40388259"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="40388259"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 11:30:21 -0800
X-CSE-ConnectionGUID: rDPKIb2TSVq9kojPC4Q6eg==
X-CSE-MsgGUID: UGkQSsDiQnC9m4b1sYrUGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="116169066"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 11:30:19 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 5/5] drm/i915/crt: Use intel_hpd_suspend/resume() instead of
 intel_hpd_disable/enable()
Date: Mon, 24 Feb 2025 21:31:15 +0200
Message-ID: <20250224193115.2058512-6-imre.deak@intel.com>
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

intel_hpd_disable/enable() have the same purpose as
intel_hpd_suspend/resume(), except that disable/enable will drop any HPD
IRQs which were triggered while the HPD was disabled, while
suspend/resume will handle such IRQs after the IRQ handling is resumed.
Use intel_hpd_suspend/resume() for crt as well, by adding a helper to
explicitly clear any pending IRQs before resuming.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c     |  7 +--
 drivers/gpu/drm/i915/display/intel_hotplug.c | 59 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_hotplug.h |  3 +-
 3 files changed, 34 insertions(+), 35 deletions(-)

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
index 81f2be06bc2a1..501d9ff588355 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -1008,33 +1008,6 @@ void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
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
@@ -1088,7 +1061,8 @@ static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
  *   userspace connector probing, or DRM core's connector polling.
  *
  * A nested call of this function on the same encoder is not allowed. The call
- * must be followed by calling intel_hpd_resume().
+ * must be followed by calling intel_hpd_resume(), or
+ * intel_hpd_clear_and_resume().
  *
  * Note that the handling of HPD IRQs for another encoder using the same HPD
  * pin as that of @encoder will be also suspended.
@@ -1148,6 +1122,35 @@ void intel_hpd_resume(struct intel_encoder *encoder)
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
+	hotplug->short_port_mask &= ~BIT(encoder->port);
+	hotplug->long_port_mask &= ~BIT(encoder->port);
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

