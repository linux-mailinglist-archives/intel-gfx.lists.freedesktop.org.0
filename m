Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB08EA4E342
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:29:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77E8C10E627;
	Tue,  4 Mar 2025 15:29:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cTpaO0s3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19A4210E628;
 Tue,  4 Mar 2025 15:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741102171; x=1772638171;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HVNAhm4NMmrSddXF1R3CJWieK420v6L7rj5Jid5jbBs=;
 b=cTpaO0s3dUfeHqkCSjKGMX/xZzzPzcBySvLuLFyXAub4j0jQL+za8/lw
 ciZwSQMqK0CxRVd2TrssVLhnphii6ZOJQgtGDdqb7zqBM+lCgy180X1y0
 x0as75TXhgh2B70p99urULdnSTzYn2BadB1NF9V0sYIKuW/W2Kr5FNj/3
 HmehutSMtgbqf1O40tN17Z2ugT4xR4eXrxb3I1yJPXkglhg8gOwD+429k
 rR9TKovg3AGlhxq2X/FNzypqImFEMJmw9q/KYhcWy+jER903kjwjcjyGM
 C3HWeO7HN2VzbPqT73QyLOCvbjczdmD7bGuH+MDRIcjIV3ChHUIPG1HXE g==;
X-CSE-ConnectionGUID: GziRfvn4RuSTIWjEb3Ta1w==
X-CSE-MsgGUID: bPX7hodURhimvHAf2C4pIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="59575844"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="59575844"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:29:30 -0800
X-CSE-ConnectionGUID: aVrK8f53QhyYsBCIzdJ2YQ==
X-CSE-MsgGUID: W9TCAQodTme//Z03DfrtIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118921368"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:29:28 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v5 6/6] drm/i915/crt: Use intel_hpd_block/unblock() instead of
 intel_hpd_disable/enable()
Date: Tue,  4 Mar 2025 17:29:17 +0200
Message-ID: <20250304152917.3407080-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250304152917.3407080-1-imre.deak@intel.com>
References: <20250304152917.3407080-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
intel_hpd_block/unblock(), except that disable/enable will drop any HPD
IRQs which were triggered while the HPD was disabled, while
block/unblock will handle such IRQs after the IRQ handling is unblocked.
Use intel_hpd_block/unblock() for crt as well, by adding a helper to
explicitly clear any pending IRQs before unblocking.

v2:
- Handle encoders without a port assigned to them.
- Rebase on change in intel_hpd_suspend() documentation.
v3:
- Rebase on the suspend/resume -> block/unblock rename change.
- Clear the pending events only after all encoders have unblocked the
  HPD handling.
- Clear the short/long port events for all encoders using the given HPD
  pin.
v4:
- Rebase on port->hpd_pin tracking. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c     |  7 +--
 drivers/gpu/drm/i915/display/intel_hotplug.c | 60 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_hotplug.h |  3 +-
 3 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 76ffb3f8467c8..bca91d49cb960 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -532,8 +532,6 @@ static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
-	bool reenable_hpd;
 	u32 adpa;
 	bool ret;
 	u32 save_adpa;
@@ -550,7 +548,7 @@ static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 	 *
 	 * Just disable HPD interrupts here to prevent this
 	 */
-	reenable_hpd = intel_hpd_disable(dev_priv, crt->base.hpd_pin);
+	intel_hpd_block(&crt->base);
 
 	save_adpa = adpa = intel_de_read(display, crt->adpa_reg);
 	drm_dbg_kms(display->drm,
@@ -577,8 +575,7 @@ static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 	drm_dbg_kms(display->drm,
 		    "valleyview hotplug adpa=0x%x, result %d\n", adpa, ret);
 
-	if (reenable_hpd)
-		intel_hpd_enable(dev_priv, crt->base.hpd_pin);
+	intel_hpd_clear_and_unblock(&crt->base);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index cb4e320a1023d..423925fec73dc 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -993,33 +993,6 @@ void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
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
@@ -1096,7 +1069,8 @@ static bool unblock_hpd_pin(struct intel_display *display, enum hpd_pin pin)
  *   drm_connector_funcs::detect()) remains allowed, for instance as part of
  *   userspace connector probing, or DRM core's connector polling.
  *
- * The call must be followed by calling intel_hpd_unblock().
+ * The call must be followed by calling intel_hpd_unblock(), or
+ * intel_hpd_clear_and_unblock().
  *
  * Note that the handling of HPD IRQs for another encoder using the same HPD
  * pin as that of @encoder will be also blocked.
@@ -1147,6 +1121,36 @@ void intel_hpd_unblock(struct intel_encoder *encoder)
 	spin_unlock_irq(&i915->irq_lock);
 }
 
+/**
+ * intel_hpd_clear_and_unblock - Unblock handling of new HPD IRQs on an HPD pin
+ * @encoder: Encoder to unblock the HPD handling for
+ *
+ * Unblock the handling of HPD IRQs on the HPD pin of @encoder, which was
+ * previously blocked by intel_hpd_block(). Any HPD IRQ raised on the
+ * HPD pin while it was blocked will be cleared, handling only new IRQs.
+ */
+void intel_hpd_clear_and_unblock(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_hotplug *hotplug = &display->hotplug;
+	enum hpd_pin pin = encoder->hpd_pin;
+
+	if (pin == HPD_NONE)
+		return;
+
+	spin_lock_irq(&i915->irq_lock);
+
+	if (unblock_hpd_pin(display, pin)) {
+		hotplug->event_bits &= ~BIT(pin);
+		hotplug->retry_bits &= ~BIT(pin);
+		hotplug->short_hpd_pin_mask &= ~BIT(pin);
+		hotplug->long_hpd_pin_mask &= ~BIT(pin);
+	}
+
+	spin_unlock_irq(&i915->irq_lock);
+}
+
 void intel_hpd_enable_detection_work(struct drm_i915_private *i915)
 {
 	spin_lock_irq(&i915->irq_lock);
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index 5f9857136f5e3..f189b871904ed 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -26,10 +26,9 @@ void intel_hpd_init(struct drm_i915_private *dev_priv);
 void intel_hpd_init_early(struct drm_i915_private *i915);
 void intel_hpd_cancel_work(struct drm_i915_private *dev_priv);
 enum hpd_pin intel_hpd_pin_default(enum port port);
-bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
-void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
 void intel_hpd_block(struct intel_encoder *encoder);
 void intel_hpd_unblock(struct intel_encoder *encoder);
+void intel_hpd_clear_and_unblock(struct intel_encoder *encoder);
 void intel_hpd_debugfs_register(struct drm_i915_private *i915);
 
 void intel_hpd_enable_detection_work(struct drm_i915_private *i915);
-- 
2.44.2

