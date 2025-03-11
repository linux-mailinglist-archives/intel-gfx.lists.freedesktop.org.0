Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DABBA5CD00
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 19:01:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B000010E653;
	Tue, 11 Mar 2025 18:01:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cezf/QVI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64AEF10E656;
 Tue, 11 Mar 2025 18:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741716072; x=1773252072;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xMgoDUAbTEZ+OJigr+WPWEN/GittQo8PAsoqYHQYJGA=;
 b=cezf/QVIY+iwAlPaS0RfcCOt6q5xjUBYa+349SKbP9jfimuBcwTj5bdz
 /vtRJ0gwXLpZYJbx6MWNQKr1pBW20b7Vp/KEQLSYtBzFuQ7HPv1+7szM0
 6WRx9TMw7p9B4cx9oTerZBe78AmbPghE3xTDdJmhd43QU06vu48WyurHZ
 Yt7ZpjV+OxBGgA6W8FQ7s21+gCafYkkHy92vP3bUqPmXnu3SlYh7Wq7B7
 DRquFuapus8jHnVTDtnpquCSAWYdrDzptdeeG7lS8UJkdyLdTSe0/n5dh
 92tKh2/rq1VHl3HxRqsut6/BQf/ZEpqUkIAfpHrz5KzcDfUEZZj8Eu8G3 g==;
X-CSE-ConnectionGUID: HZGV1uwkRDm/VWy1A2qTRA==
X-CSE-MsgGUID: bCYz2wqUTsafPut02BRZHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42805807"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="42805807"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:01:12 -0700
X-CSE-ConnectionGUID: TaP1uNwZRpKUh3UKOYspAA==
X-CSE-MsgGUID: a8kBiOWCTyGtQD0j2RglAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125457256"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:01:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/9] drm/i915/hotplug: convert hotplug irq handling to
 intel_de_*()
Date: Tue, 11 Mar 2025 20:00:39 +0200
Message-Id: <95b13318161ecf049bdf72e53235bdba77253541.1741715981.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741715981.git.jani.nikula@intel.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

All the registers handled here are display registers. Switch from
intel_uncore_*() to intel_de_*() functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_hotplug_irq.c  | 205 ++++++++++--------
 1 file changed, 114 insertions(+), 91 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index e6320838df59..f24c65478742 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -183,11 +183,12 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 void i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
 					  u32 mask, u32 bits)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	lockdep_assert_held(&dev_priv->irq_lock);
 	drm_WARN_ON(&dev_priv->drm, bits & ~mask);
 
-	intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_EN(dev_priv), mask,
-			 bits);
+	intel_de_rmw(display, PORT_HOTPLUG_EN(display), mask, bits);
 }
 
 /**
@@ -415,6 +416,7 @@ static u32 intel_hpd_hotplug_enables(struct drm_i915_private *i915,
 
 u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 hotplug_status = 0, hotplug_status_mask;
 	int i;
 
@@ -435,21 +437,20 @@ u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
 	 * bits can itself generate a new hotplug interrupt :(
 	 */
 	for (i = 0; i < 10; i++) {
-		u32 tmp = intel_uncore_read(&dev_priv->uncore,
-					    PORT_HOTPLUG_STAT(dev_priv)) & hotplug_status_mask;
+		u32 tmp = intel_de_read(display,
+					PORT_HOTPLUG_STAT(display)) & hotplug_status_mask;
 
 		if (tmp == 0)
 			return hotplug_status;
 
 		hotplug_status |= tmp;
-		intel_uncore_write(&dev_priv->uncore,
-				   PORT_HOTPLUG_STAT(dev_priv),
-				   hotplug_status);
+		intel_de_write(display, PORT_HOTPLUG_STAT(display),
+			       hotplug_status);
 	}
 
 	drm_WARN_ONCE(&dev_priv->drm, 1,
 		      "PORT_HOTPLUG_STAT did not clear (0x%08x)\n",
-		      intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT(dev_priv)));
+		      intel_de_read(display, PORT_HOTPLUG_STAT(display)));
 
 	return hotplug_status;
 }
@@ -492,7 +493,7 @@ void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 	 * zero. Not acking leads to "The master control interrupt lied (SDE)!"
 	 * errors.
 	 */
-	dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
+	dig_hotplug_reg = intel_de_read(display, PCH_PORT_HOTPLUG);
 	if (!hotplug_trigger) {
 		u32 mask = PORTA_HOTPLUG_STATUS_MASK |
 			PORTD_HOTPLUG_STATUS_MASK |
@@ -501,7 +502,7 @@ void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 		dig_hotplug_reg &= ~mask;
 	}
 
-	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, dig_hotplug_reg);
+	intel_de_write(display, PCH_PORT_HOTPLUG, dig_hotplug_reg);
 	if (!hotplug_trigger)
 		return;
 
@@ -567,7 +568,7 @@ void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 		/* Locking due to DSI native GPIO sequences */
 		spin_lock(&dev_priv->irq_lock);
-		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI, 0, 0);
+		dig_hotplug_reg = intel_de_rmw(display, SHOTPLUG_CTL_DDI, 0, 0);
 		spin_unlock(&dev_priv->irq_lock);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
@@ -579,7 +580,7 @@ void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (tc_hotplug_trigger) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC, 0, 0);
+		dig_hotplug_reg = intel_de_rmw(display, SHOTPLUG_CTL_TC, 0, 0);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   tc_hotplug_trigger, dig_hotplug_reg,
@@ -605,7 +606,7 @@ void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (hotplug_trigger) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG, 0, 0);
+		dig_hotplug_reg = intel_de_rmw(display, PCH_PORT_HOTPLUG, 0, 0);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   hotplug_trigger, dig_hotplug_reg,
@@ -616,7 +617,7 @@ void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (hotplug2_trigger) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2, 0, 0);
+		dig_hotplug_reg = intel_de_rmw(display, PCH_PORT_HOTPLUG2, 0, 0);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   hotplug2_trigger, dig_hotplug_reg,
@@ -636,7 +637,7 @@ void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 	struct intel_display *display = &dev_priv->display;
 	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
 
-	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, 0, 0);
+	dig_hotplug_reg = intel_de_rmw(display, DIGITAL_PORT_HOTPLUG_CNTRL, 0, 0);
 
 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
@@ -651,7 +652,7 @@ void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 	struct intel_display *display = &dev_priv->display;
 	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
 
-	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG, 0, 0);
+	dig_hotplug_reg = intel_de_rmw(display, PCH_PORT_HOTPLUG, 0, 0);
 
 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
@@ -671,7 +672,7 @@ void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 	if (trigger_tc) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, 0, 0);
+		dig_hotplug_reg = intel_de_rmw(display, GEN11_TC_HOTPLUG_CTL, 0, 0);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   trigger_tc, dig_hotplug_reg,
@@ -682,7 +683,7 @@ void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 	if (trigger_tbt) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, 0, 0);
+		dig_hotplug_reg = intel_de_rmw(display, GEN11_TBT_HOTPLUG_CTL, 0, 0);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   trigger_tbt, dig_hotplug_reg,
@@ -741,23 +742,25 @@ static u32 ibx_hotplug_enables(struct intel_encoder *encoder)
 
 static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	/*
 	 * Enable digital hotplug on the PCH, and configure the DP short pulse
 	 * duration to 2ms (which is the minimum in the Display Port spec).
 	 * The pulse duration bits are reserved on LPT+.
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 intel_hpd_hotplug_mask(dev_priv, ibx_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
+	intel_de_rmw(display, PCH_PORT_HOTPLUG,
+		     intel_hpd_hotplug_mask(dev_priv, ibx_hotplug_mask),
+		     intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
 }
 
 static void ibx_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
-			 ibx_hotplug_mask(encoder->hpd_pin),
-			 ibx_hotplug_enables(encoder));
+	intel_de_rmw(display, PCH_PORT_HOTPLUG,
+		     ibx_hotplug_mask(encoder->hpd_pin),
+		     ibx_hotplug_enables(encoder));
 }
 
 static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -812,34 +815,38 @@ static u32 icp_tc_hotplug_enables(struct intel_encoder *encoder)
 
 static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
-	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI,
-			 intel_hpd_hotplug_mask(dev_priv, icp_ddi_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables));
+	struct intel_display *display = &dev_priv->display;
+
+	intel_de_rmw(display, SHOTPLUG_CTL_DDI,
+		     intel_hpd_hotplug_mask(dev_priv, icp_ddi_hotplug_mask),
+		     intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables));
 }
 
 static void icp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_DDI,
-			 icp_ddi_hotplug_mask(encoder->hpd_pin),
-			 icp_ddi_hotplug_enables(encoder));
+	intel_de_rmw(display, SHOTPLUG_CTL_DDI,
+		     icp_ddi_hotplug_mask(encoder->hpd_pin),
+		     icp_ddi_hotplug_enables(encoder));
 }
 
 static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
-	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC,
-			 intel_hpd_hotplug_mask(dev_priv, icp_tc_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
+	struct intel_display *display = &dev_priv->display;
+
+	intel_de_rmw(display, SHOTPLUG_CTL_TC,
+		     intel_hpd_hotplug_mask(dev_priv, icp_tc_hotplug_mask),
+		     intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
 }
 
 static void icp_tc_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_TC,
-			 icp_tc_hotplug_mask(encoder->hpd_pin),
-			 icp_tc_hotplug_enables(encoder));
+	intel_de_rmw(display, SHOTPLUG_CTL_TC,
+		     icp_tc_hotplug_mask(encoder->hpd_pin),
+		     icp_tc_hotplug_enables(encoder));
 }
 
 static void icp_hpd_enable_detection(struct intel_encoder *encoder)
@@ -850,6 +857,7 @@ static void icp_hpd_enable_detection(struct intel_encoder *encoder)
 
 static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 hotplug_irqs, enabled_irqs;
 
 	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
@@ -859,7 +867,7 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	 * We reduce the value to 250us to be able to detect SHPD when an external display
 	 * is connected. This is also expected of us as stated in DP1.4a Table 3-4.
 	 */
-	intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
+	intel_de_write(display, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
 
 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
 
@@ -889,11 +897,12 @@ static u32 gen11_hotplug_enables(struct intel_encoder *encoder)
 
 static void dg1_hpd_invert(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	u32 val = (INVERT_DDIA_HPD |
 		   INVERT_DDIB_HPD |
 		   INVERT_DDIC_HPD |
 		   INVERT_DDID_HPD);
-	intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1, 0, val);
+	intel_de_rmw(display, SOUTH_CHICKEN1, 0, val);
 }
 
 static void dg1_hpd_enable_detection(struct intel_encoder *encoder)
@@ -912,34 +921,38 @@ static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
 
 static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
-	intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL,
-			 intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
+	struct intel_display *display = &dev_priv->display;
+
+	intel_de_rmw(display, GEN11_TC_HOTPLUG_CTL,
+		     intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
+		     intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
 }
 
 static void gen11_tc_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	intel_uncore_rmw(&i915->uncore, GEN11_TC_HOTPLUG_CTL,
-			 gen11_hotplug_mask(encoder->hpd_pin),
-			 gen11_hotplug_enables(encoder));
+	intel_de_rmw(display, GEN11_TC_HOTPLUG_CTL,
+		     gen11_hotplug_mask(encoder->hpd_pin),
+		     gen11_hotplug_enables(encoder));
 }
 
 static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
-	intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL,
-			 intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
+	struct intel_display *display = &dev_priv->display;
+
+	intel_de_rmw(display, GEN11_TBT_HOTPLUG_CTL,
+		     intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
+		     intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
 }
 
 static void gen11_tbt_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	intel_uncore_rmw(&i915->uncore, GEN11_TBT_HOTPLUG_CTL,
-			 gen11_hotplug_mask(encoder->hpd_pin),
-			 gen11_hotplug_enables(encoder));
+	intel_de_rmw(display, GEN11_TBT_HOTPLUG_CTL,
+		     gen11_hotplug_mask(encoder->hpd_pin),
+		     gen11_hotplug_enables(encoder));
 }
 
 static void gen11_hpd_enable_detection(struct intel_encoder *encoder)
@@ -955,14 +968,15 @@ static void gen11_hpd_enable_detection(struct intel_encoder *encoder)
 
 static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 hotplug_irqs, enabled_irqs;
 
 	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
 
-	intel_uncore_rmw(&dev_priv->uncore, GEN11_DE_HPD_IMR, hotplug_irqs,
-			 ~enabled_irqs & hotplug_irqs);
-	intel_uncore_posting_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
+	intel_de_rmw(display, GEN11_DE_HPD_IMR, hotplug_irqs,
+		     ~enabled_irqs & hotplug_irqs);
+	intel_de_posting_read(display, GEN11_DE_HPD_IMR);
 
 	gen11_tc_hpd_detection_setup(dev_priv);
 	gen11_tbt_hpd_detection_setup(dev_priv);
@@ -1141,6 +1155,7 @@ static void xelpdp_hpd_enable_detection(struct intel_encoder *encoder)
 
 static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	u32 hotplug_irqs, enabled_irqs;
 
 	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.hpd);
@@ -1148,7 +1163,7 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
 
 	intel_de_rmw(i915, PICAINTERRUPT_IMR, hotplug_irqs,
 		     ~enabled_irqs & hotplug_irqs);
-	intel_uncore_posting_read(&i915->uncore, PICAINTERRUPT_IMR);
+	intel_de_posting_read(display, PICAINTERRUPT_IMR);
 
 	xelpdp_pica_hpd_detection_setup(i915);
 
@@ -1196,48 +1211,52 @@ static u32 spt_hotplug2_enables(struct intel_encoder *encoder)
 
 static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	/* Display WA #1179 WaHardHangonHotPlug: cnp */
 	if (HAS_PCH_CNP(dev_priv)) {
-		intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, CHASSIS_CLK_REQ_DURATION_MASK,
-				 CHASSIS_CLK_REQ_DURATION(0xf));
+		intel_de_rmw(display, SOUTH_CHICKEN1, CHASSIS_CLK_REQ_DURATION_MASK,
+			     CHASSIS_CLK_REQ_DURATION(0xf));
 	}
 
 	/* Enable digital hotplug on the PCH */
-	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 intel_hpd_hotplug_mask(dev_priv, spt_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables));
+	intel_de_rmw(display, PCH_PORT_HOTPLUG,
+		     intel_hpd_hotplug_mask(dev_priv, spt_hotplug_mask),
+		     intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables));
 
-	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2,
-			 intel_hpd_hotplug_mask(dev_priv, spt_hotplug2_mask),
-			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
+	intel_de_rmw(display, PCH_PORT_HOTPLUG2,
+		     intel_hpd_hotplug_mask(dev_priv, spt_hotplug2_mask),
+		     intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
 }
 
 static void spt_hpd_enable_detection(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	/* Display WA #1179 WaHardHangonHotPlug: cnp */
 	if (HAS_PCH_CNP(i915)) {
-		intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1,
-				 CHASSIS_CLK_REQ_DURATION_MASK,
-				 CHASSIS_CLK_REQ_DURATION(0xf));
+		intel_de_rmw(display, SOUTH_CHICKEN1,
+			     CHASSIS_CLK_REQ_DURATION_MASK,
+			     CHASSIS_CLK_REQ_DURATION(0xf));
 	}
 
-	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
-			 spt_hotplug_mask(encoder->hpd_pin),
-			 spt_hotplug_enables(encoder));
+	intel_de_rmw(display, PCH_PORT_HOTPLUG,
+		     spt_hotplug_mask(encoder->hpd_pin),
+		     spt_hotplug_enables(encoder));
 
-	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG2,
-			 spt_hotplug2_mask(encoder->hpd_pin),
-			 spt_hotplug2_enables(encoder));
+	intel_de_rmw(display, PCH_PORT_HOTPLUG2,
+		     spt_hotplug2_mask(encoder->hpd_pin),
+		     spt_hotplug2_enables(encoder));
 }
 
 static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 hotplug_irqs, enabled_irqs;
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
-		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
+		intel_de_write(display, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
 
 	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
@@ -1271,23 +1290,25 @@ static u32 ilk_hotplug_enables(struct intel_encoder *encoder)
 
 static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	/*
 	 * Enable digital hotplug on the CPU, and configure the DP short pulse
 	 * duration to 2ms (which is the minimum in the Display Port spec)
 	 * The pulse duration bits are reserved on HSW+.
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
-			 intel_hpd_hotplug_mask(dev_priv, ilk_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
+	intel_de_rmw(display, DIGITAL_PORT_HOTPLUG_CNTRL,
+		     intel_hpd_hotplug_mask(dev_priv, ilk_hotplug_mask),
+		     intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
 }
 
 static void ilk_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	intel_uncore_rmw(&i915->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
-			 ilk_hotplug_mask(encoder->hpd_pin),
-			 ilk_hotplug_enables(encoder));
+	intel_de_rmw(display, DIGITAL_PORT_HOTPLUG_CNTRL,
+		     ilk_hotplug_mask(encoder->hpd_pin),
+		     ilk_hotplug_enables(encoder));
 
 	ibx_hpd_enable_detection(encoder);
 }
@@ -1350,18 +1371,20 @@ static u32 bxt_hotplug_enables(struct intel_encoder *encoder)
 
 static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
-	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 intel_hpd_hotplug_mask(dev_priv, bxt_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
+	struct intel_display *display = &dev_priv->display;
+
+	intel_de_rmw(display, PCH_PORT_HOTPLUG,
+		     intel_hpd_hotplug_mask(dev_priv, bxt_hotplug_mask),
+		     intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
 }
 
 static void bxt_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
-			 bxt_hotplug_mask(encoder->hpd_pin),
-			 bxt_hotplug_enables(encoder));
+	intel_de_rmw(display, PCH_PORT_HOTPLUG,
+		     bxt_hotplug_mask(encoder->hpd_pin),
+		     bxt_hotplug_enables(encoder));
 }
 
 static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
-- 
2.39.5

