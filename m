Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC28A467CB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 18:18:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC6D10E97A;
	Wed, 26 Feb 2025 17:18:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KWWKDhy1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F5B710E96D;
 Wed, 26 Feb 2025 17:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740590310; x=1772126310;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9SEzuW0LEKCoI947bLuJEkim9ylxNm9mNR7Z4DpI++4=;
 b=KWWKDhy19INUMUfNtsAWMDdEjphaOdCMMPORkNIuNMw7OdAvbt4XqSvZ
 AXLhYSUVZHH/aRQUnGapC9793/yzac+TAQm0ONBIdySUnklrHJKHyxzsd
 iWIX2PViMHHGPkgvbcaQTNcNXZhmxPnbdIHOGQBC6MMBVXCED0KU5M8sp
 qOtdsttWuouDSrpAQZmdT8qIU6eFQL1LXc311JSSYlaeYdVGfMvIQlCLj
 6vROnMxvdYGZaz4ql0qiABMo9yKUpd4DJJAXI5uQyHt+y1oIqAzuhVqxH
 jIHyZTJ2j+CU+XlDu3BTP2jOiiuJ3y7R199rVHOVvjDyS38Mbi/QlcCU6 w==;
X-CSE-ConnectionGUID: 9+gsOVHMTH6gVsnsn4imug==
X-CSE-MsgGUID: PkaoVOakQjuaocQ58hCEXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="40628484"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="40628484"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 09:18:29 -0800
X-CSE-ConnectionGUID: p3HHafHkQLKZwX2uo0NicQ==
X-CSE-MsgGUID: 9pMfTaREQO2KjNpxcVTrrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="121371385"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 09:18:28 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3 5/5] drm/i915/crt: Use intel_hpd_block/unblock() instead of
 intel_hpd_disable/enable()
Date: Wed, 26 Feb 2025 19:19:23 +0200
Message-ID: <20250226171924.2646997-6-imre.deak@intel.com>
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c     |  7 +--
 drivers/gpu/drm/i915/display/intel_hotplug.c | 62 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_hotplug.h |  3 +-
 3 files changed, 37 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 321580b095e7d..e8a2f28e662ec 100644
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
+	intel_hpd_block(&crt->base);
 
 	save_adpa = adpa = intel_de_read(display, crt->adpa_reg);
 	drm_dbg_kms(display->drm,
@@ -576,8 +574,7 @@ static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 	drm_dbg_kms(display->drm,
 		    "valleyview hotplug adpa=0x%x, result %d\n", adpa, ret);
 
-	if (reenable_hpd)
-		intel_hpd_enable(dev_priv, crt->base.hpd_pin);
+	intel_hpd_clear_and_unblock(&crt->base);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 6c6b7d661d639..b0079c6efa83d 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -1017,33 +1017,6 @@ void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
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
@@ -1121,7 +1094,8 @@ static bool unblock_hpd_pin(struct intel_display *display, enum hpd_pin pin)
  *   drm_connector_funcs::detect()) remains allowed, for instance as part of
  *   userspace connector probing, or DRM core's connector polling.
  *
- * The call must be followed by calling intel_hpd_unblock().
+ * The call must be followed by calling intel_hpd_unblock(), or
+ * intel_hpd_clear_and_unblock().
  *
  * Note that the handling of HPD IRQs for another encoder using the same HPD
  * pin as that of @encoder will be also blocked.
@@ -1172,6 +1146,38 @@ void intel_hpd_unblock(struct intel_encoder *encoder)
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
+	u32 blocked_ports;
+
+	if (encoder->hpd_pin == HPD_NONE)
+		return;
+
+	blocked_ports = hpd_pin_mask_to_ports(display, BIT(encoder->hpd_pin));
+
+	spin_lock_irq(&i915->irq_lock);
+
+	if (unblock_hpd_pin(display, encoder->hpd_pin)) {
+		hotplug->event_bits &= ~BIT(encoder->hpd_pin);
+		hotplug->retry_bits &= ~BIT(encoder->hpd_pin);
+		hotplug->short_port_mask &= ~blocked_ports;
+		hotplug->long_port_mask &= ~blocked_ports;
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

