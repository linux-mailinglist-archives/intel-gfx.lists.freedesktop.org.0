Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E1FA5CD02
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 19:01:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 618A710E656;
	Tue, 11 Mar 2025 18:01:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HAIl4EKr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F18FE10E657;
 Tue, 11 Mar 2025 18:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741716078; x=1773252078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QyRyCW8Ndo/fY59mjrO2/cl2CVnNyZwd3fLfuBjNgkY=;
 b=HAIl4EKrIMRFWkrBFTnZIZ4LOegU2iDjx6MsTZZNXPzMZ2ZiR78/AfkD
 IJPy87zhsrRWUO6QZpqD7LsIsLwBSGIgm8PdyVtV6hVQhVMaThjxqwMmK
 eIJmjYtwZegyr+nmcMcprW3C9N6wNdWTsKogS9coZU2hzSeeKq7MEFGPZ
 KadPuUf5XDNd1Bz3ejAH7s3q45brdXTVBl3Jw43vdxNU5Bm1kSSw37Acx
 OTBwRvRCASE5nHYKT6Q1EcAPmAQ2fr4RX/hs3hfQGhpuWM1Rko7d61Y6H
 yGY5+L9k9hpUvBi5hAl2rlQtrl969tMIpxAOBsUS+0T/9fzLBjLpmg9wg g==;
X-CSE-ConnectionGUID: 9GkGLtFSRPiu0HRD3ozCAw==
X-CSE-MsgGUID: 8H+SEzgJS5eFYW8wpYastA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42805820"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="42805820"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:01:17 -0700
X-CSE-ConnectionGUID: BeCOhh0NQaKrNenyjHDC0Q==
X-CSE-MsgGUID: 6+nlbcZhT9af3TPgsoofdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125457293"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:01:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/9] drm/i915/hotplug: convert intel_hotplug_irq.[ch] to
 struct intel_display
Date: Tue, 11 Mar 2025 20:00:40 +0200
Message-Id: <ddd55008c801cca921549a327f1bf556ccab7192.1741715981.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_hotplug_irq.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |   4 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  33 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   6 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  | 474 +++++++++---------
 .../gpu/drm/i915/display/intel_hotplug_irq.h  |  28 +-
 drivers/gpu/drm/i915/i915_irq.c               |  18 +-
 6 files changed, 276 insertions(+), 287 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index bca91d49cb96..a7f360f89410 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -606,7 +606,7 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
 
 	for (i = 0; i < tries ; i++) {
 		/* turn on the FORCE_DETECT */
-		i915_hotplug_interrupt_update(dev_priv,
+		i915_hotplug_interrupt_update(display,
 					      CRT_HOTPLUG_FORCE_DETECT,
 					      CRT_HOTPLUG_FORCE_DETECT);
 		/* wait for FORCE_DETECT to go off */
@@ -624,7 +624,7 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
 	intel_de_write(display, PORT_HOTPLUG_STAT(display),
 		       CRT_HOTPLUG_INT_STATUS);
 
-	i915_hotplug_interrupt_update(dev_priv, CRT_HOTPLUG_FORCE_DETECT, 0);
+	i915_hotplug_interrupt_update(display, CRT_HOTPLUG_FORCE_DETECT, 0);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index aa23bb817805..b37bcb8fb2e8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -675,7 +675,7 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	enum pipe pipe;
 	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK;
 
-	ibx_hpd_irq_handler(dev_priv, hotplug_trigger);
+	ibx_hpd_irq_handler(display, hotplug_trigger);
 
 	if (pch_iir & SDE_AUDIO_POWER_MASK) {
 		int port = ffs((pch_iir & SDE_AUDIO_POWER_MASK) >>
@@ -812,7 +812,7 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	enum pipe pipe;
 	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK_CPT;
 
-	ibx_hpd_irq_handler(dev_priv, hotplug_trigger);
+	ibx_hpd_irq_handler(display, hotplug_trigger);
 
 	if (pch_iir & SDE_AUDIO_POWER_MASK_CPT) {
 		int port = ffs((pch_iir & SDE_AUDIO_POWER_MASK_CPT) >>
@@ -901,7 +901,7 @@ void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG;
 
 	if (hotplug_trigger)
-		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
+		ilk_hpd_irq_handler(display, hotplug_trigger);
 
 	if (de_iir & DE_AUX_CHANNEL_A)
 		intel_dp_aux_irq_handler(display);
@@ -953,7 +953,7 @@ void ivb_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG_IVB;
 
 	if (hotplug_trigger)
-		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
+		ilk_hpd_irq_handler(display, hotplug_trigger);
 
 	if (de_iir & DE_ERR_INT_IVB)
 		ivb_err_int_handler(dev_priv);
@@ -1382,7 +1382,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		iir = intel_de_read(display, GEN11_DE_HPD_IIR);
 		if (iir) {
 			intel_de_write(display, GEN11_DE_HPD_IIR, iir);
-			gen11_hpd_irq_handler(dev_priv, iir);
+			gen11_hpd_irq_handler(display, iir);
 		} else {
 			drm_err_ratelimited(&dev_priv->drm,
 					    "The master control interrupt lied, (DE HPD)!\n");
@@ -1405,14 +1405,14 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 				u32 hotplug_trigger = iir & BXT_DE_PORT_HOTPLUG_MASK;
 
 				if (hotplug_trigger) {
-					bxt_hpd_irq_handler(dev_priv, hotplug_trigger);
+					bxt_hpd_irq_handler(display, hotplug_trigger);
 					found = true;
 				}
 			} else if (IS_BROADWELL(dev_priv)) {
 				u32 hotplug_trigger = iir & BDW_DE_PORT_HOTPLUG_MASK;
 
 				if (hotplug_trigger) {
-					ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
+					ilk_hpd_irq_handler(display, hotplug_trigger);
 					found = true;
 				}
 			}
@@ -1498,12 +1498,12 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		gen8_read_and_ack_pch_irqs(dev_priv, &iir, &pica_iir);
 		if (iir) {
 			if (pica_iir)
-				xelpdp_pica_irq_handler(dev_priv, pica_iir);
+				xelpdp_pica_irq_handler(display, pica_iir);
 
 			if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-				icp_irq_handler(dev_priv, iir);
+				icp_irq_handler(display, iir);
 			else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
-				spt_irq_handler(dev_priv, iir);
+				spt_irq_handler(display, iir);
 			else
 				cpt_irq_handler(dev_priv, iir);
 		} else {
@@ -1904,7 +1904,7 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 	gen2_error_reset(to_intel_uncore(display->drm),
 			 VLV_ERROR_REGS);
 
-	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
+	i915_hotplug_interrupt_update_locked(display, 0xffffffff, 0);
 	intel_de_rmw(display, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
 
 	i9xx_pipestat_irq_reset(dev_priv);
@@ -1924,7 +1924,7 @@ void i9xx_display_irq_reset(struct drm_i915_private *i915)
 	struct intel_display *display = &i915->display;
 
 	if (I915_HAS_HOTPLUG(i915)) {
-		i915_hotplug_interrupt_update(i915, 0xffffffff, 0);
+		i915_hotplug_interrupt_update(display, 0xffffffff, 0);
 		intel_de_rmw(display, PORT_HOTPLUG_STAT(i915), 0, 0);
 	}
 
@@ -2348,10 +2348,11 @@ void dg1_de_irq_postinstall(struct drm_i915_private *i915)
 
 void intel_display_irq_init(struct drm_i915_private *i915)
 {
-	i915->drm.vblank_disable_immediate = true;
+	struct intel_display *display = &i915->display;
+
+	display->drm->vblank_disable_immediate = true;
 
-	intel_hotplug_irq_init(i915);
+	intel_hotplug_irq_init(display);
 
-	INIT_WORK(&i915->display.irq.vblank_dc_work,
-		  intel_display_vblank_dc_work);
+	INIT_WORK(&display->irq.vblank_dc_work, intel_display_vblank_dc_work);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 7683b3ce124d..fcc3f546cb97 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -305,7 +305,7 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 			display->hotplug.stats[pin].state = HPD_ENABLED;
 	}
 
-	intel_hpd_irq_setup(dev_priv);
+	intel_hpd_irq_setup(display);
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 
@@ -696,7 +696,7 @@ void intel_hpd_irq_handler(struct intel_display *display,
 	 * happens later in our hotplug work.
 	 */
 	if (storm_detected)
-		intel_hpd_irq_setup(dev_priv);
+		intel_hpd_irq_setup(display);
 
 	/*
 	 * Our hotplug handler can grab modeset locks (by calling down into the
@@ -745,7 +745,7 @@ void intel_hpd_init(struct intel_display *display)
 	 * just to make the assert_spin_locked checks happy.
 	 */
 	spin_lock_irq(&dev_priv->irq_lock);
-	intel_hpd_irq_setup(dev_priv);
+	intel_hpd_irq_setup(display);
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index f24c65478742..e44ae6acc55f 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -131,30 +131,31 @@ static const u32 hpd_mtp[HPD_NUM_PINS] = {
 	[HPD_PORT_TC4] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4),
 };
 
-static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
+static void intel_hpd_init_pins(struct intel_display *display)
 {
-	struct intel_hotplug *hpd = &dev_priv->display.hotplug;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct intel_hotplug *hpd = &display->hotplug;
 
-	if (HAS_GMCH(dev_priv)) {
-		if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
-		    IS_CHERRYVIEW(dev_priv))
+	if (HAS_GMCH(display)) {
+		if (display->platform.g4x || display->platform.valleyview ||
+		    display->platform.cherryview)
 			hpd->hpd = hpd_status_g4x;
 		else
 			hpd->hpd = hpd_status_i915;
 		return;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		hpd->hpd = hpd_xelpdp;
-	else if (DISPLAY_VER(dev_priv) >= 11)
+	else if (DISPLAY_VER(display) >= 11)
 		hpd->hpd = hpd_gen11;
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	else if (display->platform.geminilake || display->platform.broxton)
 		hpd->hpd = hpd_bxt;
-	else if (DISPLAY_VER(dev_priv) == 9)
+	else if (DISPLAY_VER(display) == 9)
 		hpd->hpd = NULL; /* no north HPD on SKL */
-	else if (DISPLAY_VER(dev_priv) >= 8)
+	else if (DISPLAY_VER(display) >= 8)
 		hpd->hpd = hpd_bdw;
-	else if (DISPLAY_VER(dev_priv) >= 7)
+	else if (DISPLAY_VER(display) >= 7)
 		hpd->hpd = hpd_ivb;
 	else
 		hpd->hpd = hpd_ilk;
@@ -180,20 +181,20 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 }
 
 /* For display hotplug interrupt */
-void i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
+void i915_hotplug_interrupt_update_locked(struct intel_display *display,
 					  u32 mask, u32 bits)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
-	drm_WARN_ON(&dev_priv->drm, bits & ~mask);
+	drm_WARN_ON(display->drm, bits & ~mask);
 
 	intel_de_rmw(display, PORT_HOTPLUG_EN(display), mask, bits);
 }
 
 /**
  * i915_hotplug_interrupt_update - update hotplug interrupt enable
- * @dev_priv: driver private
+ * @display: display device
  * @mask: bits to update
  * @bits: bits to enable
  * NOTE: the HPD enable bits are modified both inside and outside
@@ -203,12 +204,14 @@ void i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
  * held already, this function acquires the lock itself. A non-locking
  * version is also available.
  */
-void i915_hotplug_interrupt_update(struct drm_i915_private *dev_priv,
+void i915_hotplug_interrupt_update(struct intel_display *display,
 				   u32 mask,
 				   u32 bits)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	spin_lock_irq(&dev_priv->irq_lock);
-	i915_hotplug_interrupt_update_locked(dev_priv, mask, bits);
+	i915_hotplug_interrupt_update_locked(display, mask, bits);
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
@@ -340,7 +343,7 @@ static bool i9xx_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
  *
  * Note that the caller is expected to zero out the masks initially.
  */
-static void intel_get_hpd_pins(struct drm_i915_private *dev_priv,
+static void intel_get_hpd_pins(struct intel_display *display,
 			       u32 *pin_mask, u32 *long_mask,
 			       u32 hotplug_trigger, u32 dig_hotplug_reg,
 			       const u32 hpd[HPD_NUM_PINS],
@@ -360,37 +363,37 @@ static void intel_get_hpd_pins(struct drm_i915_private *dev_priv,
 			*long_mask |= BIT(pin);
 	}
 
-	drm_dbg(&dev_priv->drm,
-		"hotplug event received, stat 0x%08x, dig 0x%08x, pins 0x%08x, long 0x%08x\n",
-		hotplug_trigger, dig_hotplug_reg, *pin_mask, *long_mask);
+	drm_dbg_kms(display->drm,
+		    "hotplug event received, stat 0x%08x, dig 0x%08x, pins 0x%08x, long 0x%08x\n",
+		    hotplug_trigger, dig_hotplug_reg, *pin_mask, *long_mask);
 }
 
-static u32 intel_hpd_enabled_irqs(struct drm_i915_private *dev_priv,
+static u32 intel_hpd_enabled_irqs(struct intel_display *display,
 				  const u32 hpd[HPD_NUM_PINS])
 {
 	struct intel_encoder *encoder;
 	u32 enabled_irqs = 0;
 
-	for_each_intel_encoder(&dev_priv->drm, encoder)
-		if (dev_priv->display.hotplug.stats[encoder->hpd_pin].state == HPD_ENABLED)
+	for_each_intel_encoder(display->drm, encoder)
+		if (display->hotplug.stats[encoder->hpd_pin].state == HPD_ENABLED)
 			enabled_irqs |= hpd[encoder->hpd_pin];
 
 	return enabled_irqs;
 }
 
-static u32 intel_hpd_hotplug_irqs(struct drm_i915_private *dev_priv,
+static u32 intel_hpd_hotplug_irqs(struct intel_display *display,
 				  const u32 hpd[HPD_NUM_PINS])
 {
 	struct intel_encoder *encoder;
 	u32 hotplug_irqs = 0;
 
-	for_each_intel_encoder(&dev_priv->drm, encoder)
+	for_each_intel_encoder(display->drm, encoder)
 		hotplug_irqs |= hpd[encoder->hpd_pin];
 
 	return hotplug_irqs;
 }
 
-static u32 intel_hpd_hotplug_mask(struct drm_i915_private *i915,
+static u32 intel_hpd_hotplug_mask(struct intel_display *display,
 				  hotplug_mask_func hotplug_mask)
 {
 	enum hpd_pin pin;
@@ -402,26 +405,25 @@ static u32 intel_hpd_hotplug_mask(struct drm_i915_private *i915,
 	return hotplug;
 }
 
-static u32 intel_hpd_hotplug_enables(struct drm_i915_private *i915,
+static u32 intel_hpd_hotplug_enables(struct intel_display *display,
 				     hotplug_enables_func hotplug_enables)
 {
 	struct intel_encoder *encoder;
 	u32 hotplug = 0;
 
-	for_each_intel_encoder(&i915->drm, encoder)
+	for_each_intel_encoder(display->drm, encoder)
 		hotplug |= hotplug_enables(encoder);
 
 	return hotplug;
 }
 
-u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
+u32 i9xx_hpd_irq_ack(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 hotplug_status = 0, hotplug_status_mask;
 	int i;
 
-	if (IS_G4X(dev_priv) ||
-	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if (display->platform.g4x ||
+	    display->platform.valleyview || display->platform.cherryview)
 		hotplug_status_mask = HOTPLUG_INT_STATUS_G4X |
 			DP_AUX_CHANNEL_MASK_INT_STATUS_G4X;
 	else
@@ -448,43 +450,41 @@ u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
 			       hotplug_status);
 	}
 
-	drm_WARN_ONCE(&dev_priv->drm, 1,
+	drm_WARN_ONCE(display->drm, 1,
 		      "PORT_HOTPLUG_STAT did not clear (0x%08x)\n",
 		      intel_de_read(display, PORT_HOTPLUG_STAT(display)));
 
 	return hotplug_status;
 }
 
-void i9xx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_status)
+void i9xx_hpd_irq_handler(struct intel_display *display, u32 hotplug_status)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 pin_mask = 0, long_mask = 0;
 	u32 hotplug_trigger;
 
-	if (IS_G4X(dev_priv) ||
-	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if (display->platform.g4x ||
+	    display->platform.valleyview || display->platform.cherryview)
 		hotplug_trigger = hotplug_status & HOTPLUG_INT_STATUS_G4X;
 	else
 		hotplug_trigger = hotplug_status & HOTPLUG_INT_STATUS_I915;
 
 	if (hotplug_trigger) {
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+		intel_get_hpd_pins(display, &pin_mask, &long_mask,
 				   hotplug_trigger, hotplug_trigger,
-				   dev_priv->display.hotplug.hpd,
+				   display->hotplug.hpd,
 				   i9xx_port_hotplug_long_detect);
 
 		intel_hpd_irq_handler(display, pin_mask, long_mask);
 	}
 
-	if ((IS_G4X(dev_priv) ||
-	     IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+	if ((display->platform.g4x ||
+	     display->platform.valleyview || display->platform.cherryview) &&
 	    hotplug_status & DP_AUX_CHANNEL_MASK_INT_STATUS_G4X)
 		intel_dp_aux_irq_handler(display);
 }
 
-void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
+void ibx_hpd_irq_handler(struct intel_display *display, u32 hotplug_trigger)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
 
 	/*
@@ -506,44 +506,43 @@ void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 	if (!hotplug_trigger)
 		return;
 
-	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+	intel_get_hpd_pins(display, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
-			   dev_priv->display.hotplug.pch_hpd,
+			   display->hotplug.pch_hpd,
 			   pch_port_hotplug_long_detect);
 
 	intel_hpd_irq_handler(display, pin_mask, long_mask);
 }
 
-void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
+void xelpdp_pica_irq_handler(struct intel_display *display, u32 iir)
 {
-	struct intel_display *display = &i915->display;
 	enum hpd_pin pin;
 	u32 hotplug_trigger = iir & (XELPDP_DP_ALT_HOTPLUG_MASK | XELPDP_TBT_HOTPLUG_MASK);
 	u32 trigger_aux = iir & XELPDP_AUX_TC_MASK;
 	u32 pin_mask = 0, long_mask = 0;
 
-	if (DISPLAY_VER(i915) >= 20)
+	if (DISPLAY_VER(display) >= 20)
 		trigger_aux |= iir & XE2LPD_AUX_DDI_MASK;
 
 	for (pin = HPD_PORT_TC1; pin <= HPD_PORT_TC4; pin++) {
 		u32 val;
 
-		if (!(i915->display.hotplug.hpd[pin] & hotplug_trigger))
+		if (!(display->hotplug.hpd[pin] & hotplug_trigger))
 			continue;
 
 		pin_mask |= BIT(pin);
 
-		val = intel_de_read(i915, XELPDP_PORT_HOTPLUG_CTL(pin));
-		intel_de_write(i915, XELPDP_PORT_HOTPLUG_CTL(pin), val);
+		val = intel_de_read(display, XELPDP_PORT_HOTPLUG_CTL(pin));
+		intel_de_write(display, XELPDP_PORT_HOTPLUG_CTL(pin), val);
 
 		if (val & (XELPDP_DP_ALT_HPD_LONG_DETECT | XELPDP_TBT_HPD_LONG_DETECT))
 			long_mask |= BIT(pin);
 	}
 
 	if (pin_mask) {
-		drm_dbg(&i915->drm,
-			"pica hotplug event received, stat 0x%08x, pins 0x%08x, long 0x%08x\n",
-			hotplug_trigger, pin_mask, long_mask);
+		drm_dbg_kms(display->drm,
+			    "pica hotplug event received, stat 0x%08x, pins 0x%08x, long 0x%08x\n",
+			    hotplug_trigger, pin_mask, long_mask);
 
 		intel_hpd_irq_handler(display, pin_mask, long_mask);
 	}
@@ -552,13 +551,13 @@ void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
 		intel_dp_aux_irq_handler(display);
 
 	if (!pin_mask && !trigger_aux)
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"Unexpected DE HPD/AUX interrupt 0x%08x\n", iir);
 }
 
-void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
+void icp_irq_handler(struct intel_display *display, u32 pch_iir)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 ddi_hotplug_trigger = pch_iir & SDE_DDI_HOTPLUG_MASK_ICP;
 	u32 tc_hotplug_trigger = pch_iir & SDE_TC_HOTPLUG_MASK_ICP;
 	u32 pin_mask = 0, long_mask = 0;
@@ -571,9 +570,9 @@ void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		dig_hotplug_reg = intel_de_rmw(display, SHOTPLUG_CTL_DDI, 0, 0);
 		spin_unlock(&dev_priv->irq_lock);
 
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+		intel_get_hpd_pins(display, &pin_mask, &long_mask,
 				   ddi_hotplug_trigger, dig_hotplug_reg,
-				   dev_priv->display.hotplug.pch_hpd,
+				   display->hotplug.pch_hpd,
 				   icp_ddi_port_hotplug_long_detect);
 	}
 
@@ -582,9 +581,9 @@ void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 		dig_hotplug_reg = intel_de_rmw(display, SHOTPLUG_CTL_TC, 0, 0);
 
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+		intel_get_hpd_pins(display, &pin_mask, &long_mask,
 				   tc_hotplug_trigger, dig_hotplug_reg,
-				   dev_priv->display.hotplug.pch_hpd,
+				   display->hotplug.pch_hpd,
 				   icp_tc_port_hotplug_long_detect);
 	}
 
@@ -595,9 +594,8 @@ void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		intel_gmbus_irq_handler(display);
 }
 
-void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
+void spt_irq_handler(struct intel_display *display, u32 pch_iir)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK_SPT &
 		~SDE_PORTE_HOTPLUG_SPT;
 	u32 hotplug2_trigger = pch_iir & SDE_PORTE_HOTPLUG_SPT;
@@ -608,9 +606,9 @@ void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 		dig_hotplug_reg = intel_de_rmw(display, PCH_PORT_HOTPLUG, 0, 0);
 
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+		intel_get_hpd_pins(display, &pin_mask, &long_mask,
 				   hotplug_trigger, dig_hotplug_reg,
-				   dev_priv->display.hotplug.pch_hpd,
+				   display->hotplug.pch_hpd,
 				   spt_port_hotplug_long_detect);
 	}
 
@@ -619,9 +617,9 @@ void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 		dig_hotplug_reg = intel_de_rmw(display, PCH_PORT_HOTPLUG2, 0, 0);
 
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+		intel_get_hpd_pins(display, &pin_mask, &long_mask,
 				   hotplug2_trigger, dig_hotplug_reg,
-				   dev_priv->display.hotplug.pch_hpd,
+				   display->hotplug.pch_hpd,
 				   spt_port_hotplug2_long_detect);
 	}
 
@@ -632,39 +630,36 @@ void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		intel_gmbus_irq_handler(display);
 }
 
-void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
+void ilk_hpd_irq_handler(struct intel_display *display, u32 hotplug_trigger)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
 
 	dig_hotplug_reg = intel_de_rmw(display, DIGITAL_PORT_HOTPLUG_CNTRL, 0, 0);
 
-	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+	intel_get_hpd_pins(display, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
-			   dev_priv->display.hotplug.hpd,
+			   display->hotplug.hpd,
 			   ilk_port_hotplug_long_detect);
 
 	intel_hpd_irq_handler(display, pin_mask, long_mask);
 }
 
-void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
+void bxt_hpd_irq_handler(struct intel_display *display, u32 hotplug_trigger)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
 
 	dig_hotplug_reg = intel_de_rmw(display, PCH_PORT_HOTPLUG, 0, 0);
 
-	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+	intel_get_hpd_pins(display, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
-			   dev_priv->display.hotplug.hpd,
+			   display->hotplug.hpd,
 			   bxt_port_hotplug_long_detect);
 
 	intel_hpd_irq_handler(display, pin_mask, long_mask);
 }
 
-void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
+void gen11_hpd_irq_handler(struct intel_display *display, u32 iir)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 pin_mask = 0, long_mask = 0;
 	u32 trigger_tc = iir & GEN11_DE_TC_HOTPLUG_MASK;
 	u32 trigger_tbt = iir & GEN11_DE_TBT_HOTPLUG_MASK;
@@ -674,9 +669,9 @@ void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 
 		dig_hotplug_reg = intel_de_rmw(display, GEN11_TC_HOTPLUG_CTL, 0, 0);
 
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+		intel_get_hpd_pins(display, &pin_mask, &long_mask,
 				   trigger_tc, dig_hotplug_reg,
-				   dev_priv->display.hotplug.hpd,
+				   display->hotplug.hpd,
 				   gen11_port_hotplug_long_detect);
 	}
 
@@ -685,16 +680,16 @@ void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 
 		dig_hotplug_reg = intel_de_rmw(display, GEN11_TBT_HOTPLUG_CTL, 0, 0);
 
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+		intel_get_hpd_pins(display, &pin_mask, &long_mask,
 				   trigger_tbt, dig_hotplug_reg,
-				   dev_priv->display.hotplug.hpd,
+				   display->hotplug.hpd,
 				   gen11_port_hotplug_long_detect);
 	}
 
 	if (pin_mask)
 		intel_hpd_irq_handler(display, pin_mask, long_mask);
 	else
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Unexpected DE HPD interrupt 0x%08x\n", iir);
 }
 
@@ -740,18 +735,16 @@ static u32 ibx_hotplug_enables(struct intel_encoder *encoder)
 	}
 }
 
-static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
+static void ibx_hpd_detection_setup(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	/*
 	 * Enable digital hotplug on the PCH, and configure the DP short pulse
 	 * duration to 2ms (which is the minimum in the Display Port spec).
 	 * The pulse duration bits are reserved on LPT+.
 	 */
 	intel_de_rmw(display, PCH_PORT_HOTPLUG,
-		     intel_hpd_hotplug_mask(dev_priv, ibx_hotplug_mask),
-		     intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
+		     intel_hpd_hotplug_mask(display, ibx_hotplug_mask),
+		     intel_hpd_hotplug_enables(display, ibx_hotplug_enables));
 }
 
 static void ibx_hpd_enable_detection(struct intel_encoder *encoder)
@@ -763,16 +756,17 @@ static void ibx_hpd_enable_detection(struct intel_encoder *encoder)
 		     ibx_hotplug_enables(encoder));
 }
 
-static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
+static void ibx_hpd_irq_setup(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.pch_hpd);
 
 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
 
-	ibx_hpd_detection_setup(dev_priv);
+	ibx_hpd_detection_setup(display);
 }
 
 static u32 icp_ddi_hotplug_mask(enum hpd_pin hpd_pin)
@@ -813,13 +807,11 @@ static u32 icp_tc_hotplug_enables(struct intel_encoder *encoder)
 	return icp_tc_hotplug_mask(encoder->hpd_pin);
 }
 
-static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
+static void icp_ddi_hpd_detection_setup(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	intel_de_rmw(display, SHOTPLUG_CTL_DDI,
-		     intel_hpd_hotplug_mask(dev_priv, icp_ddi_hotplug_mask),
-		     intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables));
+		     intel_hpd_hotplug_mask(display, icp_ddi_hotplug_mask),
+		     intel_hpd_hotplug_enables(display, icp_ddi_hotplug_enables));
 }
 
 static void icp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
@@ -831,13 +823,11 @@ static void icp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
 		     icp_ddi_hotplug_enables(encoder));
 }
 
-static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
+static void icp_tc_hpd_detection_setup(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	intel_de_rmw(display, SHOTPLUG_CTL_TC,
-		     intel_hpd_hotplug_mask(dev_priv, icp_tc_hotplug_mask),
-		     intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
+		     intel_hpd_hotplug_mask(display, icp_tc_hotplug_mask),
+		     intel_hpd_hotplug_enables(display, icp_tc_hotplug_enables));
 }
 
 static void icp_tc_hpd_enable_detection(struct intel_encoder *encoder)
@@ -855,13 +845,13 @@ static void icp_hpd_enable_detection(struct intel_encoder *encoder)
 	icp_tc_hpd_enable_detection(encoder);
 }
 
-static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
+static void icp_hpd_irq_setup(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.pch_hpd);
 
 	/*
 	 * We reduce the value to 250us to be able to detect SHPD when an external display
@@ -871,8 +861,8 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 
 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
 
-	icp_ddi_hpd_detection_setup(dev_priv);
-	icp_tc_hpd_detection_setup(dev_priv);
+	icp_ddi_hpd_detection_setup(display);
+	icp_tc_hpd_detection_setup(display);
 }
 
 static u32 gen11_hotplug_mask(enum hpd_pin hpd_pin)
@@ -895,9 +885,8 @@ static u32 gen11_hotplug_enables(struct intel_encoder *encoder)
 	return gen11_hotplug_mask(encoder->hpd_pin);
 }
 
-static void dg1_hpd_invert(struct drm_i915_private *i915)
+static void dg1_hpd_invert(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	u32 val = (INVERT_DDIA_HPD |
 		   INVERT_DDIB_HPD |
 		   INVERT_DDIC_HPD |
@@ -907,25 +896,23 @@ static void dg1_hpd_invert(struct drm_i915_private *i915)
 
 static void dg1_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	dg1_hpd_invert(i915);
+	dg1_hpd_invert(display);
 	icp_hpd_enable_detection(encoder);
 }
 
-static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
+static void dg1_hpd_irq_setup(struct intel_display *display)
 {
-	dg1_hpd_invert(dev_priv);
-	icp_hpd_irq_setup(dev_priv);
+	dg1_hpd_invert(display);
+	icp_hpd_irq_setup(display);
 }
 
-static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
+static void gen11_tc_hpd_detection_setup(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	intel_de_rmw(display, GEN11_TC_HOTPLUG_CTL,
-		     intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
-		     intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
+		     intel_hpd_hotplug_mask(display, gen11_hotplug_mask),
+		     intel_hpd_hotplug_enables(display, gen11_hotplug_enables));
 }
 
 static void gen11_tc_hpd_enable_detection(struct intel_encoder *encoder)
@@ -937,13 +924,11 @@ static void gen11_tc_hpd_enable_detection(struct intel_encoder *encoder)
 		     gen11_hotplug_enables(encoder));
 }
 
-static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
+static void gen11_tbt_hpd_detection_setup(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	intel_de_rmw(display, GEN11_TBT_HOTPLUG_CTL,
-		     intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
-		     intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
+		     intel_hpd_hotplug_mask(display, gen11_hotplug_mask),
+		     intel_hpd_hotplug_enables(display, gen11_hotplug_enables));
 }
 
 static void gen11_tbt_hpd_enable_detection(struct intel_encoder *encoder)
@@ -966,23 +951,23 @@ static void gen11_hpd_enable_detection(struct intel_encoder *encoder)
 		icp_hpd_enable_detection(encoder);
 }
 
-static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
+static void gen11_hpd_irq_setup(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.hpd);
 
 	intel_de_rmw(display, GEN11_DE_HPD_IMR, hotplug_irqs,
 		     ~enabled_irqs & hotplug_irqs);
 	intel_de_posting_read(display, GEN11_DE_HPD_IMR);
 
-	gen11_tc_hpd_detection_setup(dev_priv);
-	gen11_tbt_hpd_detection_setup(dev_priv);
+	gen11_tc_hpd_detection_setup(display);
+	gen11_tbt_hpd_detection_setup(display);
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-		icp_hpd_irq_setup(dev_priv);
+		icp_hpd_irq_setup(display);
 }
 
 static u32 mtp_ddi_hotplug_mask(enum hpd_pin hpd_pin)
@@ -1019,39 +1004,39 @@ static u32 mtp_tc_hotplug_enables(struct intel_encoder *encoder)
 	return mtp_tc_hotplug_mask(encoder->hpd_pin);
 }
 
-static void mtp_ddi_hpd_detection_setup(struct drm_i915_private *i915)
+static void mtp_ddi_hpd_detection_setup(struct intel_display *display)
 {
-	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
-		     intel_hpd_hotplug_mask(i915, mtp_ddi_hotplug_mask),
-		     intel_hpd_hotplug_enables(i915, mtp_ddi_hotplug_enables));
+	intel_de_rmw(display, SHOTPLUG_CTL_DDI,
+		     intel_hpd_hotplug_mask(display, mtp_ddi_hotplug_mask),
+		     intel_hpd_hotplug_enables(display, mtp_ddi_hotplug_enables));
 }
 
 static void mtp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
+	intel_de_rmw(display, SHOTPLUG_CTL_DDI,
 		     mtp_ddi_hotplug_mask(encoder->hpd_pin),
 		     mtp_ddi_hotplug_enables(encoder));
 }
 
-static void mtp_tc_hpd_detection_setup(struct drm_i915_private *i915)
+static void mtp_tc_hpd_detection_setup(struct intel_display *display)
 {
-	intel_de_rmw(i915, SHOTPLUG_CTL_TC,
-		     intel_hpd_hotplug_mask(i915, mtp_tc_hotplug_mask),
-		     intel_hpd_hotplug_enables(i915, mtp_tc_hotplug_enables));
+	intel_de_rmw(display, SHOTPLUG_CTL_TC,
+		     intel_hpd_hotplug_mask(display, mtp_tc_hotplug_mask),
+		     intel_hpd_hotplug_enables(display, mtp_tc_hotplug_enables));
 }
 
 static void mtp_tc_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
+	intel_de_rmw(display, SHOTPLUG_CTL_DDI,
 		     mtp_tc_hotplug_mask(encoder->hpd_pin),
 		     mtp_tc_hotplug_enables(encoder));
 }
 
-static void mtp_hpd_invert(struct drm_i915_private *i915)
+static void mtp_hpd_invert(struct intel_display *display)
 {
 	u32 val = (INVERT_DDIA_HPD |
 		   INVERT_DDIB_HPD |
@@ -1062,49 +1047,51 @@ static void mtp_hpd_invert(struct drm_i915_private *i915)
 		   INVERT_TC4_HPD |
 		   INVERT_DDID_HPD_MTP |
 		   INVERT_DDIE_HPD);
-	intel_de_rmw(i915, SOUTH_CHICKEN1, 0, val);
+	intel_de_rmw(display, SOUTH_CHICKEN1, 0, val);
 }
 
 static void mtp_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	mtp_hpd_invert(i915);
+	mtp_hpd_invert(display);
 	mtp_ddi_hpd_enable_detection(encoder);
 	mtp_tc_hpd_enable_detection(encoder);
 }
 
-static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
+static void mtp_hpd_irq_setup(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.pch_hpd);
 
 	/*
 	 * Use 250us here to align with the DP1.4a(Table 3-4) spec as to what the
 	 * SHPD_FILTER_CNT value should be.
 	 */
-	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
+	intel_de_write(display, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
 
-	mtp_hpd_invert(i915);
+	mtp_hpd_invert(display);
 	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
 
-	mtp_ddi_hpd_detection_setup(i915);
-	mtp_tc_hpd_detection_setup(i915);
+	mtp_ddi_hpd_detection_setup(display);
+	mtp_tc_hpd_detection_setup(display);
 }
 
-static void xe2lpd_sde_hpd_irq_setup(struct drm_i915_private *i915)
+static void xe2lpd_sde_hpd_irq_setup(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.pch_hpd);
 
 	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
 
-	mtp_ddi_hpd_detection_setup(i915);
-	mtp_tc_hpd_detection_setup(i915);
+	mtp_ddi_hpd_detection_setup(display);
+	mtp_tc_hpd_detection_setup(display);
 }
 
 static bool is_xelpdp_pica_hpd_pin(enum hpd_pin hpd_pin)
@@ -1112,7 +1099,7 @@ static bool is_xelpdp_pica_hpd_pin(enum hpd_pin hpd_pin)
 	return hpd_pin >= HPD_PORT_TC1 && hpd_pin <= HPD_PORT_TC4;
 }
 
-static void _xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i915,
+static void _xelpdp_pica_hpd_detection_setup(struct intel_display *display,
 					     enum hpd_pin hpd_pin, bool enable)
 {
 	u32 mask = XELPDP_TBT_HOTPLUG_ENABLE |
@@ -1121,18 +1108,18 @@ static void _xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i915,
 	if (!is_xelpdp_pica_hpd_pin(hpd_pin))
 		return;
 
-	intel_de_rmw(i915, XELPDP_PORT_HOTPLUG_CTL(hpd_pin),
+	intel_de_rmw(display, XELPDP_PORT_HOTPLUG_CTL(hpd_pin),
 		     mask, enable ? mask : 0);
 }
 
 static void xelpdp_pica_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	_xelpdp_pica_hpd_detection_setup(i915, encoder->hpd_pin, true);
+	_xelpdp_pica_hpd_detection_setup(display, encoder->hpd_pin, true);
 }
 
-static void xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i915)
+static void xelpdp_pica_hpd_detection_setup(struct intel_display *display)
 {
 	struct intel_encoder *encoder;
 	u32 available_pins = 0;
@@ -1140,11 +1127,11 @@ static void xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i915)
 
 	BUILD_BUG_ON(BITS_PER_TYPE(available_pins) < HPD_NUM_PINS);
 
-	for_each_intel_encoder(&i915->drm, encoder)
+	for_each_intel_encoder(display->drm, encoder)
 		available_pins |= BIT(encoder->hpd_pin);
 
 	for_each_hpd_pin(pin)
-		_xelpdp_pica_hpd_detection_setup(i915, pin, available_pins & BIT(pin));
+		_xelpdp_pica_hpd_detection_setup(display, pin, available_pins & BIT(pin));
 }
 
 static void xelpdp_hpd_enable_detection(struct intel_encoder *encoder)
@@ -1153,24 +1140,24 @@ static void xelpdp_hpd_enable_detection(struct intel_encoder *encoder)
 	mtp_hpd_enable_detection(encoder);
 }
 
-static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
+static void xelpdp_hpd_irq_setup(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.hpd);
 
-	intel_de_rmw(i915, PICAINTERRUPT_IMR, hotplug_irqs,
+	intel_de_rmw(display, PICAINTERRUPT_IMR, hotplug_irqs,
 		     ~enabled_irqs & hotplug_irqs);
 	intel_de_posting_read(display, PICAINTERRUPT_IMR);
 
-	xelpdp_pica_hpd_detection_setup(i915);
+	xelpdp_pica_hpd_detection_setup(display);
 
 	if (INTEL_PCH_TYPE(i915) >= PCH_LNL)
-		xe2lpd_sde_hpd_irq_setup(i915);
+		xe2lpd_sde_hpd_irq_setup(display);
 	else if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
-		mtp_hpd_irq_setup(i915);
+		mtp_hpd_irq_setup(display);
 }
 
 static u32 spt_hotplug_mask(enum hpd_pin hpd_pin)
@@ -1209,9 +1196,9 @@ static u32 spt_hotplug2_enables(struct intel_encoder *encoder)
 	return spt_hotplug2_mask(encoder->hpd_pin);
 }
 
-static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
+static void spt_hpd_detection_setup(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	/* Display WA #1179 WaHardHangonHotPlug: cnp */
 	if (HAS_PCH_CNP(dev_priv)) {
@@ -1221,12 +1208,12 @@ static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 
 	/* Enable digital hotplug on the PCH */
 	intel_de_rmw(display, PCH_PORT_HOTPLUG,
-		     intel_hpd_hotplug_mask(dev_priv, spt_hotplug_mask),
-		     intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables));
+		     intel_hpd_hotplug_mask(display, spt_hotplug_mask),
+		     intel_hpd_hotplug_enables(display, spt_hotplug_enables));
 
 	intel_de_rmw(display, PCH_PORT_HOTPLUG2,
-		     intel_hpd_hotplug_mask(dev_priv, spt_hotplug2_mask),
-		     intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
+		     intel_hpd_hotplug_mask(display, spt_hotplug2_mask),
+		     intel_hpd_hotplug_enables(display, spt_hotplug2_enables));
 }
 
 static void spt_hpd_enable_detection(struct intel_encoder *encoder)
@@ -1250,20 +1237,20 @@ static void spt_hpd_enable_detection(struct intel_encoder *encoder)
 		     spt_hotplug2_enables(encoder));
 }
 
-static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
+static void spt_hpd_irq_setup(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
 		intel_de_write(display, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.pch_hpd);
 
 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
 
-	spt_hpd_detection_setup(dev_priv);
+	spt_hpd_detection_setup(display);
 }
 
 static u32 ilk_hotplug_mask(enum hpd_pin hpd_pin)
@@ -1288,18 +1275,16 @@ static u32 ilk_hotplug_enables(struct intel_encoder *encoder)
 	}
 }
 
-static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
+static void ilk_hpd_detection_setup(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	/*
 	 * Enable digital hotplug on the CPU, and configure the DP short pulse
 	 * duration to 2ms (which is the minimum in the Display Port spec)
 	 * The pulse duration bits are reserved on HSW+.
 	 */
 	intel_de_rmw(display, DIGITAL_PORT_HOTPLUG_CNTRL,
-		     intel_hpd_hotplug_mask(dev_priv, ilk_hotplug_mask),
-		     intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
+		     intel_hpd_hotplug_mask(display, ilk_hotplug_mask),
+		     intel_hpd_hotplug_enables(display, ilk_hotplug_enables));
 }
 
 static void ilk_hpd_enable_detection(struct intel_encoder *encoder)
@@ -1313,21 +1298,22 @@ static void ilk_hpd_enable_detection(struct intel_encoder *encoder)
 	ibx_hpd_enable_detection(encoder);
 }
 
-static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
+static void ilk_hpd_irq_setup(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.hpd);
 
-	if (DISPLAY_VER(dev_priv) >= 8)
+	if (DISPLAY_VER(display) >= 8)
 		bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
 	else
 		ilk_update_display_irq(dev_priv, hotplug_irqs, enabled_irqs);
 
-	ilk_hpd_detection_setup(dev_priv);
+	ilk_hpd_detection_setup(display);
 
-	ibx_hpd_irq_setup(dev_priv);
+	ibx_hpd_irq_setup(display);
 }
 
 static u32 bxt_hotplug_mask(enum hpd_pin hpd_pin)
@@ -1369,13 +1355,11 @@ static u32 bxt_hotplug_enables(struct intel_encoder *encoder)
 	}
 }
 
-static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
+static void bxt_hpd_detection_setup(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	intel_de_rmw(display, PCH_PORT_HOTPLUG,
-		     intel_hpd_hotplug_mask(dev_priv, bxt_hotplug_mask),
-		     intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
+		     intel_hpd_hotplug_mask(display, bxt_hotplug_mask),
+		     intel_hpd_hotplug_enables(display, bxt_hotplug_enables));
 }
 
 static void bxt_hpd_enable_detection(struct intel_encoder *encoder)
@@ -1387,42 +1371,44 @@ static void bxt_hpd_enable_detection(struct intel_encoder *encoder)
 		     bxt_hotplug_enables(encoder));
 }
 
-static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
+static void bxt_hpd_irq_setup(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(display, display->hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(display, display->hotplug.hpd);
 
 	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
 
-	bxt_hpd_detection_setup(dev_priv);
+	bxt_hpd_detection_setup(display);
 }
 
-static void g45_hpd_peg_band_gap_wa(struct drm_i915_private *i915)
+static void g45_hpd_peg_band_gap_wa(struct intel_display *display)
 {
 	/*
 	 * For G4X desktop chip, PEG_BAND_GAP_DATA 3:0 must first be written
 	 * 0xd.  Failure to do so will result in spurious interrupts being
 	 * generated on the port when a cable is not attached.
 	 */
-	intel_de_rmw(i915, PEG_BAND_GAP_DATA, 0xf, 0xd);
+	intel_de_rmw(display, PEG_BAND_GAP_DATA, 0xf, 0xd);
 }
 
 static void i915_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	u32 hotplug_en = hpd_mask_i915[encoder->hpd_pin];
 
-	if (IS_G45(i915))
-		g45_hpd_peg_band_gap_wa(i915);
+	if (display->platform.g45)
+		g45_hpd_peg_band_gap_wa(display);
 
 	/* HPD sense and interrupt enable are one and the same */
-	i915_hotplug_interrupt_update(i915, hotplug_en, hotplug_en);
+	i915_hotplug_interrupt_update(display, hotplug_en, hotplug_en);
 }
 
-static void i915_hpd_irq_setup(struct drm_i915_private *dev_priv)
+static void i915_hpd_irq_setup(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 hotplug_en;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
@@ -1431,20 +1417,20 @@ static void i915_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	 * Note HDMI and DP share hotplug bits. Enable bits are the same for all
 	 * generations.
 	 */
-	hotplug_en = intel_hpd_enabled_irqs(dev_priv, hpd_mask_i915);
+	hotplug_en = intel_hpd_enabled_irqs(display, hpd_mask_i915);
 	/*
 	 * Programming the CRT detection parameters tends to generate a spurious
 	 * hotplug event about three seconds later. So just do it once.
 	 */
-	if (IS_G4X(dev_priv))
+	if (display->platform.g4x)
 		hotplug_en |= CRT_HOTPLUG_ACTIVATION_PERIOD_64;
 	hotplug_en |= CRT_HOTPLUG_VOLTAGE_COMPARE_50;
 
-	if (IS_G45(dev_priv))
-		g45_hpd_peg_band_gap_wa(dev_priv);
+	if (display->platform.g45)
+		g45_hpd_peg_band_gap_wa(display);
 
 	/* Ignore TV since it's buggy */
-	i915_hotplug_interrupt_update_locked(dev_priv,
+	i915_hotplug_interrupt_update_locked(display,
 					     HOTPLUG_INT_EN_MASK |
 					     CRT_HOTPLUG_VOLTAGE_COMPARE_MASK |
 					     CRT_HOTPLUG_ACTIVATION_PERIOD_64,
@@ -1453,7 +1439,7 @@ static void i915_hpd_irq_setup(struct drm_i915_private *dev_priv)
 
 struct intel_hotplug_funcs {
 	/* Enable HPD sense and interrupts for all present encoders */
-	void (*hpd_irq_setup)(struct drm_i915_private *i915);
+	void (*hpd_irq_setup)(struct intel_display *display);
 	/* Enable HPD sense for a single encoder */
 	void (*hpd_enable_detection)(struct intel_encoder *encoder);
 };
@@ -1476,49 +1462,49 @@ HPD_FUNCS(ilk);
 
 void intel_hpd_enable_detection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	if (i915->display.funcs.hotplug)
-		i915->display.funcs.hotplug->hpd_enable_detection(encoder);
+	if (display->funcs.hotplug)
+		display->funcs.hotplug->hpd_enable_detection(encoder);
 }
 
-void intel_hpd_irq_setup(struct drm_i915_private *i915)
+void intel_hpd_irq_setup(struct intel_display *display)
 {
-	if ((IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) &&
-	    !i915->display.irq.vlv_display_irqs_enabled)
+	if ((display->platform.valleyview || display->platform.cherryview) &&
+	    !display->irq.vlv_display_irqs_enabled)
 		return;
 
-	if (i915->display.funcs.hotplug)
-		i915->display.funcs.hotplug->hpd_irq_setup(i915);
+	if (display->funcs.hotplug)
+		display->funcs.hotplug->hpd_irq_setup(display);
 }
 
-void intel_hotplug_irq_init(struct drm_i915_private *i915)
+void intel_hotplug_irq_init(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	intel_hpd_init_pins(i915);
+	intel_hpd_init_pins(display);
 
 	intel_hpd_init_early(display);
 
-	if (HAS_GMCH(i915)) {
-		if (I915_HAS_HOTPLUG(i915))
-			i915->display.funcs.hotplug = &i915_hpd_funcs;
+	if (HAS_GMCH(display)) {
+		if (I915_HAS_HOTPLUG(display))
+			display->funcs.hotplug = &i915_hpd_funcs;
 	} else {
 		if (HAS_PCH_DG2(i915))
-			i915->display.funcs.hotplug = &icp_hpd_funcs;
+			display->funcs.hotplug = &icp_hpd_funcs;
 		else if (HAS_PCH_DG1(i915))
-			i915->display.funcs.hotplug = &dg1_hpd_funcs;
-		else if (DISPLAY_VER(i915) >= 14)
-			i915->display.funcs.hotplug = &xelpdp_hpd_funcs;
-		else if (DISPLAY_VER(i915) >= 11)
-			i915->display.funcs.hotplug = &gen11_hpd_funcs;
-		else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
-			i915->display.funcs.hotplug = &bxt_hpd_funcs;
+			display->funcs.hotplug = &dg1_hpd_funcs;
+		else if (DISPLAY_VER(display) >= 14)
+			display->funcs.hotplug = &xelpdp_hpd_funcs;
+		else if (DISPLAY_VER(display) >= 11)
+			display->funcs.hotplug = &gen11_hpd_funcs;
+		else if (display->platform.geminilake || display->platform.broxton)
+			display->funcs.hotplug = &bxt_hpd_funcs;
 		else if (INTEL_PCH_TYPE(i915) >= PCH_ICP)
-			i915->display.funcs.hotplug = &icp_hpd_funcs;
+			display->funcs.hotplug = &icp_hpd_funcs;
 		else if (INTEL_PCH_TYPE(i915) >= PCH_SPT)
-			i915->display.funcs.hotplug = &spt_hpd_funcs;
+			display->funcs.hotplug = &spt_hpd_funcs;
 		else
-			i915->display.funcs.hotplug = &ilk_hpd_funcs;
+			display->funcs.hotplug = &ilk_hpd_funcs;
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.h b/drivers/gpu/drm/i915/display/intel_hotplug_irq.h
index e4db752df096..9063bb02a2e9 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.h
@@ -8,28 +8,28 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
+struct intel_display;
 struct intel_encoder;
 
-u32 i9xx_hpd_irq_ack(struct drm_i915_private *i915);
+u32 i9xx_hpd_irq_ack(struct intel_display *display);
 
-void i9xx_hpd_irq_handler(struct drm_i915_private *i915, u32 hotplug_status);
-void ibx_hpd_irq_handler(struct drm_i915_private *i915, u32 hotplug_trigger);
-void ilk_hpd_irq_handler(struct drm_i915_private *i915, u32 hotplug_trigger);
-void gen11_hpd_irq_handler(struct drm_i915_private *i915, u32 iir);
-void bxt_hpd_irq_handler(struct drm_i915_private *i915, u32 hotplug_trigger);
-void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir);
-void icp_irq_handler(struct drm_i915_private *i915, u32 pch_iir);
-void spt_irq_handler(struct drm_i915_private *i915, u32 pch_iir);
+void i9xx_hpd_irq_handler(struct intel_display *display, u32 hotplug_status);
+void ibx_hpd_irq_handler(struct intel_display *display, u32 hotplug_trigger);
+void ilk_hpd_irq_handler(struct intel_display *display, u32 hotplug_trigger);
+void gen11_hpd_irq_handler(struct intel_display *display, u32 iir);
+void bxt_hpd_irq_handler(struct intel_display *display, u32 hotplug_trigger);
+void xelpdp_pica_irq_handler(struct intel_display *display, u32 iir);
+void icp_irq_handler(struct intel_display *display, u32 pch_iir);
+void spt_irq_handler(struct intel_display *display, u32 pch_iir);
 
-void i915_hotplug_interrupt_update_locked(struct drm_i915_private *i915,
+void i915_hotplug_interrupt_update_locked(struct intel_display *display,
 					  u32 mask, u32 bits);
-void i915_hotplug_interrupt_update(struct drm_i915_private *i915,
+void i915_hotplug_interrupt_update(struct intel_display *display,
 				   u32 mask, u32 bits);
 
 void intel_hpd_enable_detection(struct intel_encoder *encoder);
-void intel_hpd_irq_setup(struct drm_i915_private *i915);
+void intel_hpd_irq_setup(struct intel_display *display);
 
-void intel_hotplug_irq_init(struct drm_i915_private *i915);
+void intel_hotplug_irq_init(struct intel_display *display);
 
 #endif /* __INTEL_HOTPLUG_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index de53615571be..3b05eb3f9cbc 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -277,7 +277,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 			intel_uncore_write(&dev_priv->uncore, GEN6_PMIIR, pm_iir);
 
 		if (iir & I915_DISPLAY_PORT_INTERRUPT)
-			hotplug_status = i9xx_hpd_irq_ack(dev_priv);
+			hotplug_status = i9xx_hpd_irq_ack(display);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			vlv_display_error_irq_ack(display, &eir, &dpinvgtt);
@@ -306,7 +306,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 			gen6_rps_irq_handler(&to_gt(dev_priv)->rps, pm_iir);
 
 		if (hotplug_status)
-			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
+			i9xx_hpd_irq_handler(display, hotplug_status);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			vlv_display_error_irq_handler(display, eir, dpinvgtt);
@@ -367,7 +367,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		gen8_gt_irq_handler(to_gt(dev_priv), master_ctl);
 
 		if (iir & I915_DISPLAY_PORT_INTERRUPT)
-			hotplug_status = i9xx_hpd_irq_ack(dev_priv);
+			hotplug_status = i9xx_hpd_irq_ack(display);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			vlv_display_error_irq_ack(display, &eir, &dpinvgtt);
@@ -392,7 +392,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
 
 		if (hotplug_status)
-			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
+			i9xx_hpd_irq_handler(display, hotplug_status);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			vlv_display_error_irq_handler(display, eir, dpinvgtt);
@@ -952,6 +952,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 static irqreturn_t i915_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
+	struct intel_display *display = &dev_priv->display;
 	irqreturn_t ret = IRQ_NONE;
 
 	if (!intel_irqs_enabled(dev_priv))
@@ -974,7 +975,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 
 		if (I915_HAS_HOTPLUG(dev_priv) &&
 		    iir & I915_DISPLAY_PORT_INTERRUPT)
-			hotplug_status = i9xx_hpd_irq_ack(dev_priv);
+			hotplug_status = i9xx_hpd_irq_ack(display);
 
 		/* Call regardless, as some status bits might not be
 		 * signalled in IIR */
@@ -992,7 +993,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
 
 		if (hotplug_status)
-			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
+			i9xx_hpd_irq_handler(display, hotplug_status);
 
 		i915_pipestat_irq_handler(dev_priv, iir, pipe_stats);
 	} while (0);
@@ -1075,6 +1076,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 static irqreturn_t i965_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
+	struct intel_display *display = &dev_priv->display;
 	irqreturn_t ret = IRQ_NONE;
 
 	if (!intel_irqs_enabled(dev_priv))
@@ -1096,7 +1098,7 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 		ret = IRQ_HANDLED;
 
 		if (iir & I915_DISPLAY_PORT_INTERRUPT)
-			hotplug_status = i9xx_hpd_irq_ack(dev_priv);
+			hotplug_status = i9xx_hpd_irq_ack(display);
 
 		/* Call regardless, as some status bits might not be
 		 * signalled in IIR */
@@ -1119,7 +1121,7 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
 
 		if (hotplug_status)
-			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
+			i9xx_hpd_irq_handler(display, hotplug_status);
 
 		i965_pipestat_irq_handler(dev_priv, iir, pipe_stats);
 	} while (0);
-- 
2.39.5

