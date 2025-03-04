Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EC9A4E33C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:29:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1672210E5E5;
	Tue,  4 Mar 2025 15:29:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FLt3TJ5l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BCFE10E5C9;
 Tue,  4 Mar 2025 15:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741102163; x=1772638163;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gDVP8RSVfgxI6wfVd/WVYwnRVVI8kagTl5knEBOK8LI=;
 b=FLt3TJ5ltXUUeh8K0QuFg/LTnuYieEPY5NX6E+YsnaeULmuTf1/Z/Emt
 tIkdeeKED3+TW0ZDZUPHRjtdiRoXImMMvbVGzzh+21yTqbeI0HBBcNRc1
 2uGWZsiSIh8icEpLRMvaTcee9OaE1xjsVM985wpNaQUJqZGqYgzn507D0
 3+hwDECPPK4d61W/ZI4JJm4GCbUlOAiSBkuX6QlBnZ6s3tCiW4rEz1YNO
 aGenXAQagT8IDFz10CDOSV2FbjMWLbVXSPZgJWqYcWgJ0hFFiTxcKe5Nr
 RBkxW0c8fZVr7wUXi7YXaC/oiLeE96m6C5vwrKNdaUqXw5F985xH12jrh A==;
X-CSE-ConnectionGUID: gdjLf+XlQxKLTv35lYh+bg==
X-CSE-MsgGUID: /4gbzfevTKagSbaEWXfTIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="59575806"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="59575806"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:29:23 -0800
X-CSE-ConnectionGUID: qX6rboR9Qx2C+zsR0oP+Nw==
X-CSE-MsgGUID: i/ne63GpS2CyXMA8SYiQNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118921326"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:29:21 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v5 1/6] drm/i915/hpd: Track HPD pins instead of ports for HPD
 pulse events
Date: Tue,  4 Mar 2025 17:29:12 +0200
Message-ID: <20250304152917.3407080-2-imre.deak@intel.com>
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

Track the HPD pin instead of the corresponding encoder ports for pending
short/long HPD pulse events. This is how the pending hotplug events are
tracked and there is no reason for tracking the pulse events differently.

After this change intel_hpd_trigger_irq() will set the short pulse event
pending for all encoders using the given HPD pin. This doesn't change
the behavior, as atm in case of multiple (2) encoders sharing the same
pin only one will have a pulse handler, so for other encoders without a
pulse handler the event is ignored. Also setting the pulse event pending
for all encoders using the HPD pin is what happens after an actual HPD
IRQ, the effect of calling intel_hpd_trigger_irq() should match this.

In a following change this also makes it simpler to block the handling
of a short/long pulse event on an HPD pin for all the encoders using
this HPD pin.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 +--
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 30 +++++++++----------
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 554870d2494b3..d9952007635e0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -169,8 +169,8 @@ struct intel_hotplug {
 	u32 retry_bits;
 	struct delayed_work reenable_work;
 
-	u32 long_port_mask;
-	u32 short_port_mask;
+	u32 long_hpd_pin_mask;
+	u32 short_hpd_pin_mask;
 	struct work_struct dig_port_work;
 
 	struct work_struct poll_init_work;
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 00d7b1ccf1900..9692b5c01aea9 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -353,28 +353,28 @@ static void i915_digport_work_func(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
 		container_of(work, struct drm_i915_private, display.hotplug.dig_port_work);
-	u32 long_port_mask, short_port_mask;
+	u32 long_hpd_pin_mask, short_hpd_pin_mask;
 	struct intel_encoder *encoder;
 	u32 old_bits = 0;
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	long_port_mask = dev_priv->display.hotplug.long_port_mask;
-	dev_priv->display.hotplug.long_port_mask = 0;
-	short_port_mask = dev_priv->display.hotplug.short_port_mask;
-	dev_priv->display.hotplug.short_port_mask = 0;
+	long_hpd_pin_mask = dev_priv->display.hotplug.long_hpd_pin_mask;
+	dev_priv->display.hotplug.long_hpd_pin_mask = 0;
+	short_hpd_pin_mask = dev_priv->display.hotplug.short_hpd_pin_mask;
+	dev_priv->display.hotplug.short_hpd_pin_mask = 0;
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	for_each_intel_encoder(&dev_priv->drm, encoder) {
 		struct intel_digital_port *dig_port;
-		enum port port = encoder->port;
+		enum hpd_pin pin = encoder->hpd_pin;
 		bool long_hpd, short_hpd;
 		enum irqreturn ret;
 
 		if (!intel_encoder_has_hpd_pulse(encoder))
 			continue;
 
-		long_hpd = long_port_mask & BIT(port);
-		short_hpd = short_port_mask & BIT(port);
+		long_hpd = long_hpd_pin_mask & BIT(pin);
+		short_hpd = short_hpd_pin_mask & BIT(pin);
 
 		if (!long_hpd && !short_hpd)
 			continue;
@@ -384,7 +384,7 @@ static void i915_digport_work_func(struct work_struct *work)
 		ret = dig_port->hpd_pulse(dig_port, long_hpd);
 		if (ret == IRQ_NONE) {
 			/* fall back to old school hpd */
-			old_bits |= BIT(encoder->hpd_pin);
+			old_bits |= BIT(pin);
 		}
 	}
 
@@ -407,9 +407,10 @@ static void i915_digport_work_func(struct work_struct *work)
 void intel_hpd_trigger_irq(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_encoder *encoder = &dig_port->base;
 
 	spin_lock_irq(&i915->irq_lock);
-	i915->display.hotplug.short_port_mask |= BIT(dig_port->base.port);
+	i915->display.hotplug.short_hpd_pin_mask |= BIT(encoder->hpd_pin);
 	spin_unlock_irq(&i915->irq_lock);
 
 	queue_work(i915->display.hotplug.dp_wq, &i915->display.hotplug.dig_port_work);
@@ -557,7 +558,6 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 	 * only the one of them (DP) will have ->hpd_pulse().
 	 */
 	for_each_intel_encoder(&dev_priv->drm, encoder) {
-		enum port port = encoder->port;
 		bool long_hpd;
 
 		pin = encoder->hpd_pin;
@@ -577,10 +577,10 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 
 		if (long_hpd) {
 			long_hpd_pulse_mask |= BIT(pin);
-			dev_priv->display.hotplug.long_port_mask |= BIT(port);
+			dev_priv->display.hotplug.long_hpd_pin_mask |= BIT(pin);
 		} else {
 			short_hpd_pulse_mask |= BIT(pin);
-			dev_priv->display.hotplug.short_port_mask |= BIT(port);
+			dev_priv->display.hotplug.short_hpd_pin_mask |= BIT(pin);
 		}
 	}
 
@@ -920,8 +920,8 @@ void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
-	dev_priv->display.hotplug.long_port_mask = 0;
-	dev_priv->display.hotplug.short_port_mask = 0;
+	dev_priv->display.hotplug.long_hpd_pin_mask = 0;
+	dev_priv->display.hotplug.short_hpd_pin_mask = 0;
 	dev_priv->display.hotplug.event_bits = 0;
 	dev_priv->display.hotplug.retry_bits = 0;
 
-- 
2.44.2

